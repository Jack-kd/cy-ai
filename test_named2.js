const fs = require("fs");
const { JSDOM, VirtualConsole } = require("jsdom");
const poly = fs.readFileSync("/workspace/apk_extracted/assets/public/assets/polyfills-legacy-CoKYprf1.js", "utf-8");

const html = `<!DOCTYPE html><html><body>
<script>${poly}</script>
<script>
window.__out=[];
window.__rep=function(){return window.__out.join(" | ");};
var NAME="/assets/modA.js";
System.register(NAME, [], function(_e,_c){
  return { execute:function(){ _e("x",42); } };
});
System.import(NAME).then(function(m){
  window.__out.push("OK x="+m.x);
}).catch(function(e){
  window.__out.push("FAIL "+(e&&e.message));
});
</script></body></html>`;

const errs=[];
const vc=new VirtualConsole();
vc.on("jsdomError",e=>errs.push("[jdom] "+(e&&(e.message||e))));
vc.on("error",(...a)=>errs.push("[err] "+a.map(String).join(" ")));
vc.on("log",(...a)=>errs.push("[log] "+a.map(String).join(" ")));

const dom=new JSDOM(html,{runScripts:"dangerously",url:"http://localhost:8080/",virtualConsole:vc,pretendToBeVisual:true});
setTimeout(()=>{
  console.log("RESULT:", dom.window.__rep());
  console.log("--- messages ---");
  errs.forEach(e=>console.log(e));
  process.exit(0);
},3000);