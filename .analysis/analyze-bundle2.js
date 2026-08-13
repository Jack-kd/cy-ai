const fs = require('fs');
const path = '/workspace/app/src/main/assets/public/assets/index-legacy-Cr8bHjn6.js';
const content = fs.readFileSync(path, 'utf8');

// --- 1. 中文字符串（过滤超长）---
const reDouble = /"((?:[^"\\]|\\.)*)"/g;
const reSingle = /'((?:[^'\\]|\\.)*)'/g;
const reBacktick = /`((?:[^`\\]|\\.)*)`/g;
const strings = [];
let m;
for (const re of [reDouble, reSingle, reBacktick]) {
  while ((m = re.exec(content)) !== null) strings.push(m[1]);
}
const chinese = [...new Set(strings.filter(s => /[\u4e00-\u9fff]/.test(s) && s.length <= 120))];
chinese.sort((a, b) => b.length - a.length);
fs.writeFileSync('/workspace/.analysis/chinese_short.txt', chinese.join('\n'));
console.log('chinese short:', chinese.length);

// --- 2. 路由定义上下文：path:"/xxx" 前后 100 字符 ---
const routeCtx = [];
const rePath = /path\s*:\s*"(\/[^"{}]{1,50})"/g;
while ((m = rePath.exec(content)) !== null) {
  const p = m[1];
  // 排除 SDK 常见前缀
  if (/^\/(v1|v2|auth|database|storage|object|rdb|rpc|supabase|collections|documents|transactions|records|files|model|bucket|cloudrun|apis|sql|commands|commit|rollback|feedback)\b/.test(p)) continue;
  const start = Math.max(0, m.index - 60);
  const end = Math.min(content.length, m.index + m[0].length + 80);
  routeCtx.push('PATH=' + p + '\n  CTX: ' + content.slice(start, end).replace(/\n/g, ' ') + '\n');
}
fs.writeFileSync('/workspace/.analysis/routes_ctx.txt', routeCtx.join('\n'));
console.log('route candidates:', routeCtx.length);
