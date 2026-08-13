package top.zibin.luban.io;

import android.content.ContentResolver;
import android.net.Uri;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public class ArrayPoolProvide {
    private static ArrayPoolProvide mInstance;
    private final HashSet<String> keyCache = new HashSet<>();
    private final ConcurrentHashMap<String, BufferedInputStreamWrap> bufferedLruCache = new ConcurrentHashMap<>();
    private final LruArrayPool arrayPool = new LruArrayPool(4194304);

    public byte[] get(int i) {
        return (byte[]) this.arrayPool.get(i, byte[].class);
    }

    public void put(byte[] bArr) {
        this.arrayPool.put(bArr);
    }

    public InputStream openInputStream(ContentResolver contentResolver, Uri uri) {
        try {
            try {
                BufferedInputStreamWrap bufferedInputStreamWrap = this.bufferedLruCache.get(uri.toString());
                if (bufferedInputStreamWrap != null) {
                    bufferedInputStreamWrap.reset();
                } else {
                    bufferedInputStreamWrap = wrapInputStream(contentResolver, uri);
                }
                return bufferedInputStreamWrap;
            } catch (Exception e) {
                e.printStackTrace();
                return wrapInputStream(contentResolver, uri);
            }
        } catch (Exception unused) {
            return contentResolver.openInputStream(uri);
        }
    }

    public InputStream openInputStream(String str) {
        try {
            BufferedInputStreamWrap bufferedInputStreamWrap = this.bufferedLruCache.get(str);
            if (bufferedInputStreamWrap != null) {
                bufferedInputStreamWrap.reset();
            } else {
                bufferedInputStreamWrap = wrapInputStream(str);
            }
            return bufferedInputStreamWrap;
        } catch (Exception unused) {
            return wrapInputStream(str);
        }
    }

    private BufferedInputStreamWrap wrapInputStream(ContentResolver contentResolver, Uri uri) {
        BufferedInputStreamWrap bufferedInputStreamWrap;
        BufferedInputStreamWrap bufferedInputStreamWrap2 = null;
        try {
            bufferedInputStreamWrap = new BufferedInputStreamWrap(contentResolver.openInputStream(uri));
        } catch (Exception e) {
            e = e;
        }
        try {
            int available = bufferedInputStreamWrap.available();
            if (available <= 0) {
                available = 8388608;
            }
            bufferedInputStreamWrap.mark(available);
            this.bufferedLruCache.put(uri.toString(), bufferedInputStreamWrap);
            this.keyCache.add(uri.toString());
            return bufferedInputStreamWrap;
        } catch (Exception e2) {
            e = e2;
            bufferedInputStreamWrap2 = bufferedInputStreamWrap;
            e.printStackTrace();
            return bufferedInputStreamWrap2;
        }
    }

    private BufferedInputStreamWrap wrapInputStream(String str) {
        BufferedInputStreamWrap bufferedInputStreamWrap;
        BufferedInputStreamWrap bufferedInputStreamWrap2 = null;
        try {
            bufferedInputStreamWrap = new BufferedInputStreamWrap(new FileInputStream(str));
        } catch (Exception e) {
            e = e;
        }
        try {
            int available = bufferedInputStreamWrap.available();
            if (available <= 0) {
                available = 8388608;
            }
            bufferedInputStreamWrap.mark(available);
            this.bufferedLruCache.put(str, bufferedInputStreamWrap);
            this.keyCache.add(str);
            return bufferedInputStreamWrap;
        } catch (Exception e2) {
            e = e2;
            bufferedInputStreamWrap2 = bufferedInputStreamWrap;
            e.printStackTrace();
            return bufferedInputStreamWrap2;
        }
    }

    public void clearMemory() {
        Iterator<String> it = this.keyCache.iterator();
        while (it.hasNext()) {
            String next = it.next();
            close(this.bufferedLruCache.get(next));
            this.bufferedLruCache.remove(next);
        }
        this.keyCache.clear();
        this.arrayPool.clearMemory();
    }

    public static ArrayPoolProvide getInstance() {
        if (mInstance == null) {
            synchronized (ArrayPoolProvide.class) {
                if (mInstance == null) {
                    mInstance = new ArrayPoolProvide();
                }
            }
        }
        return mInstance;
    }

    public static void close(Closeable closeable) {
        if (closeable instanceof Closeable) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }
}
