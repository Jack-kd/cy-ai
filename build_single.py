import io, os, json

PUB = "/workspace/apk_extracted/assets/public"
ASSETS = os.path.join(PUB, "assets")

def read(p):
    with io.open(p, "r", encoding="utf-8", errors="replace") as f:
        return f.read()

FILES = [
    "index-legacy-Cr8bHjn6.js",
    "index-legacy-DM82c077.js",
    "index-legacy-DkczRpU8.js",
    "web-legacy-D-Xf5mTq.js",
    "web-legacy-DCVHcBbI.js",
]

# 源码 map：url(pathname) -> 源码
src_map = {}
for f in FILES:
    src_map["/assets/" + f] = read(os.path.join(ASSETS, f))

polyfill = read(os.path.join(ASSETS, "polyfills-legacy-CoKYprf1.js"))
rtlib_js = read("/tmp/rtlib.js")
rtlib_css = read("/tmp/rtlib.css")

# System.instantiate 覆盖：从内联源码 map 供给模块，逐个走正常注册管线（单槽 getRegister）
BOOTSTRAP = r"""
<script>
  window.__srcMap = %s;
  function __norm(u){ try { return new URL(u, location.href).pathname; } catch(e){ return u; } }
  (function(){
    var realInst = System.instantiate.bind(System);
    System.instantiate = function(url, parentUrl){
      var key = __norm(url);
      if (window.__srcMap[key] !== undefined){
        return Promise.resolve().then(function(){
          var s = document.createElement("script");
          s.textContent = window.__srcMap[key];
          document.body.appendChild(s);
          var reg = System.getRegister();
          if (!reg) throw new Error("getRegister empty for " + url);
          return reg;
        });
      }
      return realInst(url, parentUrl);
    };
  })();
</script>
<script>
  System.import("/assets/index-legacy-Cr8bHjn6.js").then(function(m){
    console.log("启动成功");
  }).catch(function(e){
    console.error("启动失败", e && e.message);
  });
</script>
""" % json.dumps(src_map, ensure_ascii=False)

html = """<!DOCTYPE html>
<html lang="">
  <head>
    <meta charset="UTF-8">
    <link rel="icon" href="data:,">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, viewport-fit=cover">
    <title>初忆AI助手</title>
    <style>
""" + rtlib_css + """
    </style>
  </head>
  <body>
    <div id="app"></div>
    <script>
""" + rtlib_js + """
    </script>
    <script>
      if (window.AppGeneratorH5RuntimeLib && typeof window.AppGeneratorH5RuntimeLib.init === 'function') {
        try { window.AppGeneratorH5RuntimeLib.init(); } catch(e){ console.error(e); }
      }
    </script>
    <script>
""" + polyfill + """
    </script>
""" + BOOTSTRAP + """
  </body>
</html>
"""

out = "/workspace/初忆AI助手_单文件.html"
with io.open(out, "w", encoding="utf-8") as f:
    f.write(html)

print("已生成:", out, "大小:", round(os.path.getsize(out)/1024/1024, 2), "MB")