const fs = require("fs");
const { JSDOM, VirtualConsole } = require("jsdom");
const poly = fs.readFileSync("/workspace/apk_extracted/assets/public/assets/polyfills-legacy-CoKYprf1.js", "utf-8");
const main = fs.readFileSync("/workspace/apk_extracted/assets/public/assets/index-legacy-Cr8bHjn6.js", "utf-8");
const b64 = Buffer.from(main, "utf-8").toString("base64");

const html = `<!DOCTYPE html><html><body><div id="app"></div>
<script>${poly}</script>
<script>
window.__log=[];
window.__rep=function(){var a=document.getElementById("app");return a?a.innerHTML.length:"no-app";};
System.import("data:text/javascript;base64,${b64}").then(function(m){
  console.log("SUCCESS", Object.keys(m||{}));
}).catch(function(e){
  console.log("FAIL", e && e.message);
});
</script></body></html>`;

const errs=[];
const vc=new VirtualConsole();
vc.on("jsdomError",e=>errs.push("[jsdomError] "+(e&&(e.message||e))));
vc.on("error",(...a)=>errs.push("[err] "+a.map(String).join(" ")));
vc.on("log",(...a)=>errs.push("[log] "+a.map(String).join(" ")));

const dom=new JSDOM(html,{runScripts:"dangerously",url:"http://localhost:8080/",virtualConsole:vc,pretendToBeVisual:true,
  beforeParse(w){ w.matchMedia=w.matchMedia||function(){return{matches:false,addListener(){},removeListener(){},addEventListener(){},removeEventListener(){}};}; w.scrollTo=w.scrollTo||function(){}; }});
setTimeout(()=>{
  console.log("APP_LEN:", dom.window.__rep());
  console.log("--- messages ---");
  errs.forEach(e=>console.log(e));
  process.exit(0);
},8000);