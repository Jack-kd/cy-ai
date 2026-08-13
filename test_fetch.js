const fs = require("fs");
const { JSDOM, VirtualConsole } = require("jsdom");
const A = "/workspace/apk_extracted/assets/public/assets";
const files = ["index-legacy-Cr8bHjn6.js","index-legacy-DM82c077.js","index-legacy-DkczRpU8.js","web-legacy-D-Xf5mTq.js","web-legacy-DCVHcBbI.js"];
const srcMap = {};
for (const f of files) srcMap["/assets/" + f] = fs.readFileSync(A + "/" + f, "utf-8");
const poly = fs.readFileSync(A + "/polyfills-legacy-CoKYprf1.js", "utf-8");

const setup = `
window.__srcMap = ${JSON.stringify(srcMap)};
(function(){
  window.__log = [];
  function log(x){ window.__log.push(String(x)); if(window.console&&console.log) console.log("FETCHLOG", x); }
  var origFetch = System.fetch;
  System.fetch = function(url, opts){
    log("request: " + url + " mapped=" + (window.__srcMap[url]!==undefined));
    if (window.__srcMap[url] !== undefined){
      return Promise.resolve({
        ok: true, status: 200,
        headers: { get: function(k){ return k.toLowerCase()==="content-type" ? "text/javascript" : null; } },
        text: function(){ return Promise.resolve(window.__srcMap[url]); }
      });
    }
    return origFetch ? origFetch.call(this, url, opts) : Promise.reject(new Error("no-fetch "+url));
  };
  window.__fetchCount = 0;
  var oi = System.import;
  System.import = function(){ window.__fetchCount++; log("import: " + arguments[0]); return oi.apply(this, arguments); };
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
  console.log("IMPORT_FAIL", e && e.message);
});
</script></body></html>`;

const errs=[];
const vc=new VirtualConsole();
vc.on("jsdomError",e=>errs.push("[jdom] "+(e&&(e.message||e))));
vc.on("error",(...a)=>errs.push("[err] "+a.map(String).join(" ")));
vc.on("log",(...a)=>errs.push("[log] "+a.map(String).join(" ")));
vc.on("warn",(...a)=>errs.push("[warn] "+a.map(String).join(" ")));

const dom=new JSDOM(html,{runScripts:"dangerously",url:"http://localhost:8080/",virtualConsole:vc,pretendToBeVisual:true,
  beforeParse(w){ w.matchMedia=w.matchMedia||function(){return{matches:false,addListener(){},removeListener(){},addEventListener(){},removeEventListener(){}};}; w.scrollTo=w.scrollTo||function(){}; }});
setTimeout(()=>{
  console.log("APP_LEN:", dom.window.__rep(), "IMPORT_CALLS:", dom.window.__fetchCount);
  console.log("--- fetch/import log ---");
  (dom.window.__log||[]).forEach(e=>console.log(e));
  console.log("--- messages (last 40) ---");
  errs.slice(-40).forEach(e=>console.log(e));
  process.exit(0);
},12000);