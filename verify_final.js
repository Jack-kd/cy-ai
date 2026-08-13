const fs = require("fs");
const { JSDOM, VirtualConsole } = require("jsdom");
let html = fs.readFileSync("/workspace/初忆AI助手_单文件.html", "utf-8");

const errs=[];
const vc=new VirtualConsole();
vc.on("jsdomError",e=>errs.push("[jdom] "+(e&&(e.message||String(e)))));

const dom=new JSDOM(html,{runScripts:"dangerously",url:"http://localhost:8080/",virtualConsole:vc,pretendToBeVisual:true,
  beforeParse(w){
    const stubMatch=()=>({matches:false,addListener(){},removeListener(){},addEventListener(){},removeEventListener(){}});
    w.matchMedia=w.matchMedia||stubMatch;
    w.scrollTo=w.scrollTo||function(){};
    w.requestAnimationFrame=w.requestAnimationFrame||function(cb){return setTimeout(cb,16);};
    w.cancelAnimationFrame=w.cancelAnimationFrame||function(id){clearTimeout(id);};
    const Obs=function(){ this.observe=function(){}; this.unobserve=function(){}; this.disconnect=function(){}; };
    w.ResizeObserver=w.ResizeObserver||Obs;
    w.IntersectionObserver=w.IntersectionObserver||Obs;
    w.MutationObserver=w.MutationObserver||w.MutationObserver;
    w.visualViewport=w.visualViewport||{width:390,height:844,offsetLeft:0,offsetTop:0,scale:1,addEventListener(){},removeEventListener(){}};
    w.fetch=w.fetch||function(){return Promise.reject(new Error("no-net"));};
  }});

setTimeout(()=>{
  const app=dom.window.document.getElementById("app");
  console.log("APP_LEN:", app ? app.innerHTML.length : "no-app");
  console.log("APP_PREVIEW:", app ? app.innerHTML.slice(0,300).replace(/\s+/g," ") : "");
  console.log("--- jsdom errors (max 30) ---");
  errs.slice(0,30).forEach(e=>console.log(String(e).slice(0,300)));
  process.exit(0);
},15000);