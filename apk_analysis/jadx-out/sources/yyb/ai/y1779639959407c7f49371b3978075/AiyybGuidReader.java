package yyb.ai.y1779639959407c7f49371b3978075;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import androidx.core.view.MotionEventCompat;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Properties;
import java.util.zip.ZipException;
import kotlin.UByte;
import kotlin.UShort;

/* loaded from: classes3.dex */
public final class AiyybGuidReader {
    private static final int APK_SIGNATURE_SCHEME_V2_BLOCK_ID = 1896449818;
    private static final int APK_SIGNATURE_SCHEME_V3_BLOCK_ID = -262969152;
    private static final long APK_SIG_BLOCK_MAGIC_HI = 3617552046287187010L;
    private static final long APK_SIG_BLOCK_MAGIC_LO = 2334950737559900225L;
    private static final int APK_SIG_BLOCK_MIN_SIZE = 32;
    private static final int CHANNEL_HEAD = 38650;
    private static final String KEY_GUID = "guid";
    private static final int UINT16_MAX_VALUE = 65535;
    private static final int YYB_COMMENT_BLOCK_ID = 1903261812;
    private static final int ZIP64_EOCD_LOCATOR_SIG_REVERSE_BYTE_ORDER = 1347094023;
    private static final int ZIP64_EOCD_LOCATOR_SIZE = 20;
    private static final int ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET = 16;
    private static final int ZIP_EOCD_COMMENT_LENGTH_FIELD_OFFSET = 20;
    private static final int ZIP_EOCD_REC_MIN_SIZE = 22;
    private static final int ZIP_EOCD_REC_SIG = 101010256;

    private AiyybGuidReader() {
    }

    public static String getEncryptedGuid(Context context) {
        if (context == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (applicationInfo != null && applicationInfo.sourceDir != null) {
                return getEncryptedGuid(applicationInfo.sourceDir);
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static String getEncryptedGuid(String str) {
        Properties decodeMsdkComment;
        if (str != null && str.length() != 0) {
            try {
                byte[] readYybCommentBytes = readYybCommentBytes(str);
                if (readYybCommentBytes == null || (decodeMsdkComment = decodeMsdkComment(readYybCommentBytes)) == null) {
                    return null;
                }
                return decodeMsdkComment.getProperty(KEY_GUID);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private static byte[] readYybCommentBytes(String str) throws IOException {
        byte[] readYYBCommentFromSigningBlock = readYYBCommentFromSigningBlock(str);
        return readYYBCommentFromSigningBlock != null ? readYYBCommentFromSigningBlock : readZipEocdComment(str);
    }

    private static byte[] readYYBCommentFromSigningBlock(String str) throws IOException {
        RandomAccessFile randomAccessFile;
        try {
            randomAccessFile = new RandomAccessFile(str, "r");
        } catch (Throwable unused) {
            randomAccessFile = null;
        }
        try {
            EocdInfo findEocd = findEocd(randomAccessFile);
            if (findEocd == null) {
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
                return null;
            }
            if (isZip64Present(randomAccessFile, findEocd.offset)) {
                try {
                    randomAccessFile.close();
                } catch (IOException unused3) {
                }
                return null;
            }
            long centralDirOffset = getCentralDirOffset(findEocd.buffer);
            if (centralDirOffset >= 32 && centralDirOffset < findEocd.offset) {
                ByteBuffer readApkSigningBlock = readApkSigningBlock(randomAccessFile, centralDirOffset);
                if (readApkSigningBlock == null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused4) {
                    }
                    return null;
                }
                if (findPairWithId(readApkSigningBlock, APK_SIGNATURE_SCHEME_V2_BLOCK_ID) == null && findPairWithId(readApkSigningBlock, APK_SIGNATURE_SCHEME_V3_BLOCK_ID) == null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused5) {
                    }
                    return null;
                }
                ByteBuffer findPairWithId = findPairWithId(readApkSigningBlock, YYB_COMMENT_BLOCK_ID);
                if (findPairWithId == null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused6) {
                    }
                    return null;
                }
                int remaining = findPairWithId.remaining();
                byte[] bArr = new byte[remaining];
                findPairWithId.get(bArr, 0, remaining);
                try {
                    randomAccessFile.close();
                } catch (IOException unused7) {
                }
                return bArr;
            }
            try {
                randomAccessFile.close();
            } catch (IOException unused8) {
            }
            return null;
        } catch (Throwable unused9) {
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (IOException unused10) {
                }
            }
            return null;
        }
    }

    private static byte[] readZipEocdComment(String str) throws IOException {
        RandomAccessFile randomAccessFile;
        try {
            randomAccessFile = new RandomAccessFile(str, "r");
        } catch (Throwable unused) {
            randomAccessFile = null;
        }
        try {
            if (randomAccessFile.length() != 0) {
                byte[] readEocdCommentBytes = readEocdCommentBytes(randomAccessFile);
                if (readEocdCommentBytes != null) {
                    int i = 0;
                    while (i < readEocdCommentBytes.length) {
                        int i2 = i + 1;
                        if (i2 < readEocdCommentBytes.length && ((readEocdCommentBytes[i2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + (readEocdCommentBytes[i] & UByte.MAX_VALUE) == CHANNEL_HEAD) {
                            byte[] copyOfRange = Arrays.copyOfRange(readEocdCommentBytes, i, readEocdCommentBytes.length);
                            try {
                                randomAccessFile.close();
                            } catch (IOException unused2) {
                            }
                            return copyOfRange;
                        }
                        i = i2;
                    }
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused3) {
                    }
                    return null;
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused4) {
                }
                return null;
            }
            try {
                randomAccessFile.close();
            } catch (IOException unused5) {
            }
            return null;
        } catch (Throwable unused6) {
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (IOException unused7) {
                }
            }
            return null;
        }
    }

    private static class EocdInfo {
        final ByteBuffer buffer;
        final long offset;

        EocdInfo(ByteBuffer byteBuffer, long j) {
            this.buffer = byteBuffer;
            this.offset = j;
        }
    }

    private static EocdInfo findEocd(RandomAccessFile randomAccessFile) throws IOException {
        EocdInfo findEocd = findEocd(randomAccessFile, 0);
        return findEocd != null ? findEocd : findEocd(randomAccessFile, 65535);
    }

    private static EocdInfo findEocd(RandomAccessFile randomAccessFile, int i) throws IOException {
        int i2;
        if (i < 0 || i > 65535) {
            throw new IllegalArgumentException("maxCommentSize: " + i);
        }
        long length = randomAccessFile.length();
        if (length < 22) {
            return null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(((int) Math.min(i, length - 22)) + 22);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        long capacity = length - allocate.capacity();
        randomAccessFile.seek(capacity);
        randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
        int capacity2 = allocate.capacity() - 22;
        int min = Math.min(capacity2, 65535);
        int i3 = 0;
        while (true) {
            if (i3 >= min) {
                i2 = -1;
                break;
            }
            i2 = capacity2 - i3;
            if (allocate.getInt(i2) == ZIP_EOCD_REC_SIG && (allocate.getShort(i2 + 20) & UShort.MAX_VALUE) == i3) {
                break;
            }
            i3++;
        }
        if (i2 == -1) {
            return null;
        }
        allocate.position(i2);
        ByteBuffer slice = allocate.slice();
        slice.order(ByteOrder.LITTLE_ENDIAN);
        return new EocdInfo(slice, capacity + i2);
    }

    private static boolean isZip64Present(RandomAccessFile randomAccessFile, long j) throws IOException {
        long j2 = j - 20;
        if (j2 < 0) {
            return false;
        }
        randomAccessFile.seek(j2);
        return randomAccessFile.readInt() == ZIP64_EOCD_LOCATOR_SIG_REVERSE_BYTE_ORDER;
    }

    private static long getCentralDirOffset(ByteBuffer byteBuffer) {
        return byteBuffer.getInt(byteBuffer.position() + 16) & 4294967295L;
    }

    private static byte[] readEocdCommentBytes(RandomAccessFile randomAccessFile) throws IOException {
        long length = randomAccessFile.length() - 22;
        if (length < 0) {
            return null;
        }
        randomAccessFile.seek(length);
        byte[] bArr = {80, 75, 5, 6};
        int read = randomAccessFile.read();
        long j = length;
        while (read != -1 && length - j <= 2097152) {
            if (read != (bArr[0] & UByte.MAX_VALUE) || randomAccessFile.read() != (bArr[1] & UByte.MAX_VALUE) || randomAccessFile.read() != (bArr[2] & UByte.MAX_VALUE) || randomAccessFile.read() != (bArr[3] & UByte.MAX_VALUE)) {
                j--;
                randomAccessFile.seek(j);
                read = randomAccessFile.read();
            } else {
                randomAccessFile.seek(j + 20);
                byte[] bArr2 = new byte[2];
                randomAccessFile.readFully(bArr2);
                int i = (bArr2[0] & 255) | ((bArr2[1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
                if (i == 0) {
                    return null;
                }
                byte[] bArr3 = new byte[i];
                randomAccessFile.read(bArr3);
                return bArr3;
            }
        }
        throw new ZipException("archive is not a ZIP archive");
    }

    private static ByteBuffer readApkSigningBlock(RandomAccessFile randomAccessFile, long j) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(24);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        randomAccessFile.seek(j - allocate.capacity());
        randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
        if (allocate.getLong(8) == APK_SIG_BLOCK_MAGIC_LO && allocate.getLong(16) == APK_SIG_BLOCK_MAGIC_HI) {
            long j2 = allocate.getLong(0);
            if (j2 >= allocate.capacity() && j2 <= 2147483639) {
                int i = (int) (8 + j2);
                long j3 = j - i;
                if (j3 < 0) {
                    return null;
                }
                ByteBuffer allocate2 = ByteBuffer.allocate(i);
                allocate2.order(ByteOrder.LITTLE_ENDIAN);
                randomAccessFile.seek(j3);
                randomAccessFile.readFully(allocate2.array(), allocate2.arrayOffset(), allocate2.capacity());
                if (allocate2.getLong(0) != j2) {
                    return null;
                }
                return allocate2;
            }
        }
        return null;
    }

    private static ByteBuffer findPairWithId(ByteBuffer byteBuffer, int i) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            return null;
        }
        ByteBuffer sliceFromTo = sliceFromTo(byteBuffer, 8, byteBuffer.capacity() - 24);
        while (sliceFromTo.hasRemaining() && sliceFromTo.remaining() >= 8) {
            try {
                long j = sliceFromTo.getLong();
                if (j >= 4 && j <= 2147483647L) {
                    int i2 = (int) j;
                    int position = sliceFromTo.position() + i2;
                    if (i2 > sliceFromTo.remaining()) {
                        return null;
                    }
                    if (sliceFromTo.getInt() == i) {
                        return getByteBuffer(sliceFromTo, i2 - 4);
                    }
                    sliceFromTo.position(position);
                }
            } catch (BufferUnderflowException unused) {
            }
            return null;
        }
        return null;
    }

    private static ByteBuffer sliceFromTo(ByteBuffer byteBuffer, int i, int i2) {
        if (i < 0 || i2 < i || i2 > byteBuffer.capacity()) {
            throw new IllegalArgumentException("invalid slice [" + i + "," + i2 + "]");
        }
        int limit = byteBuffer.limit();
        int position = byteBuffer.position();
        try {
            byteBuffer.position(0);
            byteBuffer.limit(i2);
            byteBuffer.position(i);
            ByteBuffer slice = byteBuffer.slice();
            slice.order(byteBuffer.order());
            return slice;
        } finally {
            byteBuffer.position(0);
            byteBuffer.limit(limit);
            byteBuffer.position(position);
        }
    }

    private static ByteBuffer getByteBuffer(ByteBuffer byteBuffer, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("size: " + i);
        }
        int limit = byteBuffer.limit();
        int position = byteBuffer.position();
        int i2 = i + position;
        if (i2 < position || i2 > limit) {
            throw new BufferUnderflowException();
        }
        byteBuffer.limit(i2);
        try {
            ByteBuffer slice = byteBuffer.slice();
            slice.order(byteBuffer.order());
            byteBuffer.position(i2);
            return slice;
        } finally {
            byteBuffer.limit(limit);
        }
    }

    private static Properties decodeMsdkComment(byte[] bArr) {
        if (bArr != null && bArr.length >= 4) {
            try {
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                byte[] bArr2 = new byte[2];
                wrap.get(bArr2);
                if (((bArr2[0] & UByte.MAX_VALUE) | ((bArr2[1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK)) != CHANNEL_HEAD || bArr.length - 2 <= 2) {
                    return null;
                }
                byte[] bArr3 = new byte[2];
                wrap.get(bArr3);
                int i = (bArr3[0] & 255) | ((bArr3[1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
                if (bArr.length - 4 < i) {
                    return null;
                }
                byte[] bArr4 = new byte[i];
                wrap.get(bArr4);
                Properties properties = new Properties();
                properties.load(new InputStreamReader(new ByteArrayInputStream(bArr4), StandardCharsets.UTF_8));
                return properties;
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
