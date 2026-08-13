const fs = require('fs');
const path = '/workspace/app/src/main/assets/public/assets/index-legacy-Cr8bHjn6.js';
const content = fs.readFileSync(path, 'utf8');
console.log('total length:', content.length);

const reDouble = /"((?:[^"\\]|\\.)*)"/g;
const reSingle = /'((?:[^'\\]|\\.)*)'/g;
const reBacktick = /`((?:[^`\\]|\\.)*)`/g;

const strings = [];
let m;
for (const re of [reDouble, reSingle, reBacktick]) {
  while ((m = re.exec(content)) !== null) strings.push(m[1]);
}
console.log('total strings:', strings.length);

// 含中文的字符串
const chinese = strings.filter(s => /[\u4e00-\u9fff]/.test(s));
const unique = [...new Set(chinese)].sort((a, b) => b.length - a.length);
fs.writeFileSync('/workspace/.analysis/chinese.txt', unique.join('\n'));
console.log('unique chinese strings:', unique.length);

// 形似路由的路径字符串
const paths = [...new Set(strings.filter(s => /^\/[a-zA-Z0-9_\-/.:]*(:\w+)?$/.test(s) && s.length > 1))].sort();
fs.writeFileSync('/workspace/.analysis/paths.txt', paths.join('\n'));
console.log('paths:', paths.length);

// URL
const urls = [...new Set(strings.filter(s => /^https?:\/\//.test(s)))].sort();
fs.writeFileSync('/workspace/.analysis/urls.txt', urls.join('\n'));
console.log('urls:', urls.length);

// 键值对：常见 UI 键 + 中文值
const keys = ['title', 'name', 'label', 'placeholder', 'btnText', 'confirmText', 'cancelText', 'toast', 'msg', 'hint'];
const kv = [];
for (const k of keys) {
  const re = new RegExp(`["']${k}["']\\s*:\\s*"((?:[^"\\\\]|\\\\.)*)"`, 'g');
  while ((m = re.exec(content)) !== null) {
    if (/[\u4e00-\u9fff]/.test(m[1])) kv.push(`${k} = ${m[1]}`);
  }
}
fs.writeFileSync('/workspace/.analysis/kv.txt', [...new Set(kv)].join('\n'));
console.log('kv pairs:', kv.length);
