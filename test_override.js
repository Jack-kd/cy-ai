const fs = require("fs");
const { JSDOM, VirtualConsole } = require("jsdom");
const A = "/workspace/apk_extracted/assets/public/assets";
const files = ["index-legacy-Cr8bHjn6.js","index-legacy-DM82c077.js","index-legacy-DkczRpU8.js","web-legacy-D-Xf5mTq.js","web-legacy-DCVHcBbI.js"];
const srcMap = {};
for (const f of files) srcMap["/assets/" + f] = fs.readFileSync(A + "/" + f, "utf-8");
const poly = fs.readFileSync(A + "/polyfills-legacy-CoKYprf1.js", "utf-8");

const setup = `
window.__srcMap = ${JSON.stringify(srcMap)};
window.__log = [];
function log(x){ window.__log.push(String(x)); if(window.console&&console.log) console.log("OLOG", x); }
function norm(u){ try { return new URL(u, location.href).pathname; } catch(e){ return u; } }
(function(){
  var realInst = System.instantiate.bind(System);
  System.instantiate = function(url, parentUrl){
    var key = norm(url);
    if (window.__srcMap[key] !== undefined){
      log("instantiate(serve): " + url + " -> " + key);
      return Promise.resolve().then(function(){
        var s = document.createElement("script");
        s.textContent = window.__srcMap[key];
        document.body.appendChild(s);
        var reg = System.getRegister();
        if (!reg) throw new Error("getRegister empty for " + url);
        return reg;
      });
    }
    log("instantiate(native): " + url);
    return realInst(url, parentUrl);
  };
  window.__rep = function(){ var a=document.getElementById("app"); return a ? a.innerHTML.length : "no-app"; };
})();
`;

const html = `<!DOCTYPE html><html><body><div id="app"></div>
<script>${poly}</script>
<script>${setup}</script>
<script>
System.import("/assets/index-legacy-Cr8bHjn6.js").then(function(m){
  console.log("IMPORT_OK");
}).catch(function(e){
  console.log("IMPORT_FAIL", e && e.message, e && e.stack);
});
</script></body></html>`;

const errs=[];
const vc=new VirtualConsole();
vc.on("jsdomError",e=>errs.push("[jdom] "+(e&&(e.message||e))));
vc.on("error",(...a)=>errs.push("[err] "+a.map(String).join(" ")));
vc.on("log",(...a)=>errs.push("[log] "+a.map(String).join(" ")));
vc.on("warn",(...a)=>errs.push("[warn] "+a.map(String).join(" ")));

const dom=new JSDOM(html,{runScripts:"dangerously",url:"http://localhost:8080/",virtualConsole:vc,pretendToBeVisual:true,
  beforeParse(w){
    w.matchMedia=w.matchMedia||function(){return{matches:false,addListener(){},removeListener(){},addEventListener(){},removeEventListener(){}};};
    w.scrollTo=w.scrollTo||function(){};
    w.requestAnimationFrame=w.requestAnimationFrame||function(cb){return setTimeout(cb,16);};
    w.cancelAnimationFrame=w.cancelAnimationFrame||function(id){clearTimeout(id);};
  }});
setTimeout(()=>{
  console.log("APP_LEN:", dom.window.__rep());
  console.log("--- instantiate log ---");
  (dom.window.__log||[]).forEach(e=>console.log(e));
  console.log("--- messages (last 50) ---");
  errs.slice(-50).forEach(e=>console.log(e));
  process.exit(0);
},15000);