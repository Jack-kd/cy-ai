const fs = require("fs");
const { JSDOM, VirtualConsole } = require("jsdom");

const html = fs.readFileSync("/workspace/初忆AI助手_单文件.html", "utf-8");

const errors = [];
const logs = [];
const vc = new VirtualConsole();
vc.on("jsdomError", (e) => errors.push("[jsdomError] " + (e && (e.message || e.stack || e))));
vc.on("error", (...a) => errors.push("[console.error] " + a.map(String).join(" ")));
vc.on("log", (...a) => logs.push(a.map(String).join(" ")));
vc.on("warn", (...a) => logs.push("[warn] " + a.map(String).join(" ")));

const dom = new JSDOM(html, {
  runScripts: "dangerously",
  resources: "usable",
  url: "http://localhost:8080/",
  pretendToBeVisual: true,
  virtualConsole: vc,
  beforeParse(window) {
    // 补齐 jsdom 缺少的浏览器 API 存根
    window.matchMedia = window.matchMedia || function () {
      return { matches: false, addListener(){}, removeListener(){}, addEventListener(){}, removeEventListener(){}, media:"" };
    };
    window.scrollTo = window.scrollTo || function(){};
    window.HTMLElement.prototype.scrollIntoView = window.HTMLElement.prototype.scrollIntoView || function(){};
    window.WebSocket = window.WebSocket || function(){ this.send=()=>{}; this.close=()=>{}; };
  }
});

const win = dom.window;
setTimeout(() => {
  const app = win.document.getElementById("app");
  const appHTML = app ? app.innerHTML.length : "no #app";
  const title = win.document.title;
  console.log("=== 验证结果 ===");
  console.log("页面标题:", title);
  console.log("#app 内容长度:", appHTML, appHTML !== "no #app" ? "(字符数)" : "");
  console.log("body 文本前200:", (win.document.body.textContent||"").slice(0,200));
  console.log("System 类型:", typeof win.System);
  console.log("--- error 日志 ---");
  errors.forEach(e => console.log(e));
  console.log("--- 普通日志(前20) ---");
  logs.slice(0,20).forEach(l => console.log(l));
  process.exit(0);
}, 6000);