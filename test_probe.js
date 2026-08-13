const fs = require("fs");
const { JSDOM, VirtualConsole } = require("jsdom");
const A = "/workspace/apk_extracted/assets/public/assets";
const poly = fs.readFileSync(A + "/polyfills-legacy-CoKYprf1.js", "utf-8");

const html = `<!DOCTYPE html><html><body>
<script>${poly}</script>
<script>
window.__r=[];
function rep(x){ window.__r.push(String(x)); }
(function(){
  rep("typeof System=" + typeof System);
  rep("keys=" + Object.getOwnPropertyNames(System).join(","));
  rep("proto=" + Object.getOwnPropertyNames(Object.getPrototypeOf(System)).join(","));
  rep("typeof System.fetch=" + typeof System.fetch);
  rep("typeof System.import=" + typeof System.import);
  rep("typeof System.instantiate=" + typeof System.instantiate);
  rep("fetchTest=" + (typeof System.fetch==="function" ? "callable" : "nope"));
})();
</script></body></html>`;

const errs=[];
const vc=new VirtualConsole();
vc.on("jsdomError",e=>errs.push("[jdom] "+(e&&(e.message||e))));
vc.on("error",(...a)=>errs.push("[err] "+a.map(String).join(" ")));
vc.on("log",(...a)=>errs.push("[log] "+a.map(String).join(" ")));

const dom=new JSDOM(html,{runScripts:"dangerously",url:"http://localhost:8080/",virtualConsole:vc,pretendToBeVisual:true});
setTimeout(()=>{
  console.log(dom.window.__r.join("\n"));
  console.log("--- msg ---");
  errs.forEach(e=>console.log(e));
  process.exit(0);
},2000);