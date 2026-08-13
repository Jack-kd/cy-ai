package top.zibin.luban;

import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import kotlin.UByte;

/* loaded from: classes3.dex */
public enum Checker {
    SINGLE;

    private static final String JPG = ".jpg";
    private static final String TAG = "Luban";
    private final byte[] JPEG_SIGNATURE = {-1, -40, -1};

    Checker() {
    }

    boolean isJPG(InputStream inputStream) {
        return isJPG(toByteArray(inputStream));
    }

    int getOrientation(InputStream inputStream) {
        return getOrientation(toByteArray(inputStream));
    }

    private boolean isJPG(byte[] bArr) {
        if (bArr == null || bArr.length < 3) {
            return false;
        }
        return Arrays.equals(this.JPEG_SIGNATURE, new byte[]{bArr[0], bArr[1], bArr[2]});
    }

    public static boolean isContent(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("content://");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
    
        if (r9 <= 8) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0069, code lost:
    
        r2 = pack(r12, r1, 4, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0070, code lost:
    
        if (r2 == 1229531648) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0075, code lost:
    
        if (r2 == 1296891946) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0077, code lost:
    
        android.util.Log.e(top.zibin.luban.Checker.TAG, "Invalid byte order");
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x007c, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x007d, code lost:
    
        if (r2 != 1229531648) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007f, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0082, code lost:
    
        r3 = pack(r12, r1 + 4, 4, r2) + 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x008b, code lost:
    
        if (r3 < 10) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008d, code lost:
    
        if (r3 <= r9) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0090, code lost:
    
        r1 = r1 + r3;
        r9 = r9 - r3;
        r3 = pack(r12, r1 - 2, 2, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0098, code lost:
    
        r5 = r3 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x009a, code lost:
    
        if (r3 <= 0) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x009e, code lost:
    
        if (r9 < 12) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a6, code lost:
    
        if (pack(r12, r1, 2, r2) != 274) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c7, code lost:
    
        r1 = r1 + 12;
        r9 = r9 - 12;
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00a8, code lost:
    
        r12 = pack(r12, r1 + 8, 2, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ad, code lost:
    
        if (r12 == 1) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00b0, code lost:
    
        if (r12 == 3) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00b3, code lost:
    
        if (r12 == 6) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00b5, code lost:
    
        if (r12 == 8) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00b7, code lost:
    
        android.util.Log.e(top.zibin.luban.Checker.TAG, "Unsupported orientation");
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00bc, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00bd, code lost:
    
        return 270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00c0, code lost:
    
        return 90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00c3, code lost:
    
        return 180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00c6, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00cd, code lost:
    
        android.util.Log.e(top.zibin.luban.Checker.TAG, "Invalid offset");
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00d2, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0081, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00d3, code lost:
    
        android.util.Log.e(top.zibin.luban.Checker.TAG, "Orientation not found");
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00d8, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0063, code lost:
    
        r9 = 0;
        r1 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int getOrientation(byte[] bArr) {
        int i;
        if (bArr == null) {
            return 0;
        }
        int i2 = 0;
        while (true) {
            if (i2 + 3 >= bArr.length) {
                i = 0;
                break;
            }
            int i3 = i2 + 1;
            if ((bArr[i2] & UByte.MAX_VALUE) != 255) {
                break;
            }
            int i4 = bArr[i3] & UByte.MAX_VALUE;
            if (i4 != 255) {
                i3 = i2 + 2;
                if (i4 != 216 && i4 != 1) {
                    if (i4 != 217 && i4 != 218) {
                        int pack = pack(bArr, i3, 2, false);
                        if (pack >= 2 && (i3 = i3 + pack) <= bArr.length) {
                            if (i4 == 225 && pack >= 8 && pack(bArr, i2 + 4, 4, false) == 1165519206 && pack(bArr, i2 + 8, 2, false) == 0) {
                                i2 += 10;
                                i = pack - 8;
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
            i2 = i3;
        }
        Log.e(TAG, "Invalid length");
        return 0;
    }

    String extSuffix(InputStreamProvider inputStreamProvider) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(inputStreamProvider.open(), null, options);
            return options.outMimeType.replace("image/", ".");
        } catch (Exception unused) {
            return ".jpg";
        }
    }

    boolean needCompress(int i, String str) {
        if (i <= 0) {
            return true;
        }
        File file = new File(str);
        return file.exists() && file.length() > (((long) i) << 10);
    }

    private int pack(byte[] bArr, int i, int i2, boolean z) {
        int i3;
        if (z) {
            i += i2 - 1;
            i3 = -1;
        } else {
            i3 = 1;
        }
        int i4 = 0;
        while (true) {
            int i5 = i2 - 1;
            if (i2 <= 0) {
                return i4;
            }
            i4 = (bArr[i] & UByte.MAX_VALUE) | (i4 << 8);
            i += i3;
            i2 = i5;
        }
    }

    private byte[] toByteArray(InputStream inputStream) {
        if (inputStream == null) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            try {
                try {
                    int read = inputStream.read(bArr, 0, 4096);
                    if (read != -1) {
                        byteArrayOutputStream.write(bArr, 0, read);
                    } else {
                        try {
                            break;
                        } catch (IOException unused) {
                        }
                    }
                } finally {
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException unused2) {
                    }
                }
            } catch (Exception unused3) {
                byte[] bArr2 = new byte[0];
                try {
                    byteArrayOutputStream.close();
                } catch (IOException unused4) {
                }
                return bArr2;
            }
        }
        return byteArrayOutputStream.toByteArray();
    }
}
