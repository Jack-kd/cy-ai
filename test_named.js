const fs = require("fs");
const { JSDOM, VirtualConsole } = require("jsdom");
const poly = fs.readFileSync("/workspace/apk_extracted/assets/public/assets/polyfills-legacy-CoKYprf1.js", "utf-8");

const html = `<!DOCTYPE html><html><body><div id="r">wait</div>
<script>
window.rep=function(t){document.getElementById('r').textContent=String(t);};
</script>
<script>${poly}</script>
<script>
try{
  window.rep("System="+typeof System);
  var NAME="http://localhost:8080/test-mod.js";
  System.register(NAME, [], function(_e,_c){ return { execute:function(){ _e("x",42); } }; });
  // 查看注册后 registry 是否含该模块
  var has = System.has && System.has(NAME);
  window.rep("has="+has);
  System.import(NAME).then(function(m){ window.rep("OK x="+m.x+" has="+has); })
    .catch(function(e){ window.rep("IMPORT_FAIL "+(e&&e.message)); });
}catch(e){ window.rep("EXC "+e.message); }
</script></body></html>`;

const errs=[];
const vc=new VirtualConsole();
vc.on("jsdomError",e=>errs.push("[jsdomError] "+(e&&(e.message||e))));
vc.on("error",(...a)=>errs.push("[err] "+a.map(String).join(" ")));

const dom=new JSDOM(html,{runScripts:"dangerously",url:"http://localhost:8080/",virtualConsole:vc,pretendToBeVisual:true});
setTimeout(()=>{
  console.log("RESULT:", dom.window.document.getElementById("r").textContent);
  console.log("ERRORS:"); errs.forEach(e=>console.log(e));
  process.exit(0);
},3000);