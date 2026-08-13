package yyb.ai.y1779639959407c7f49371b3978075;

import android.content.Context;
import android.content.pm.ApplicationInfo;

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

/**
 * AiyybGuidReader (reconstructed from APK).
 *
 * Reads the encrypted "guid" that Tencent's 应用宝 signs into the APK signing
 * block / zip EOCD comment, then decodes it into a Properties payload.
 */
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
    private static final int ACTION_POINTER_INDEX_MASK = 0xff00;
    private static final int MAX_COMMENT_SCAN = 2097152;

    private AiyybGuidReader() {
    }

    public static String getEncryptedGuid(Context context) {
        if (context == null) {
            return null;
        }
        try {
            ApplicationInfo info = context.getApplicationInfo();
            if (info != null && info.sourceDir != null) {
                return getEncryptedGuid(info.sourceDir);
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    public static String getEncryptedGuid(String path) {
        if (path != null && path.length() != 0) {
            try {
                byte[] comment = readYybCommentBytes(path);
                if (comment == null) {
                    return null;
                }
                Properties decoded = decodeMsdkComment(comment);
                if (decoded == null) {
                    return null;
                }
                return decoded.getProperty(KEY_GUID);
            } catch (Throwable ignored) {
            }
        }
        return null;
    }

    private static byte[] readYybCommentBytes(String path) throws IOException {
        byte[] fromSigningBlock = readYYBCommentFromSigningBlock(path);
        return fromSigningBlock != null ? fromSigningBlock : readZipEocdComment(path);
    }

    private static byte[] readYYBCommentFromSigningBlock(String path) throws IOException {
        RandomAccessFile raf = null;
        try {
            raf = new RandomAccessFile(path, "r");
            EocdInfo eocd = findEocd(raf);
            if (eocd == null) {
                return null;
            }
            if (isZip64Present(raf, eocd.offset)) {
                return null;
            }
            long centralDirOffset = getCentralDirOffset(eocd.buffer);
            if (centralDirOffset < APK_SIG_BLOCK_MIN_SIZE || centralDirOffset >= eocd.offset) {
                return null;
            }
            ByteBuffer signingBlock = readApkSigningBlock(raf, centralDirOffset);
            if (signingBlock == null) {
                return null;
            }
            if (findPairWithId(signingBlock, APK_SIGNATURE_SCHEME_V2_BLOCK_ID) == null
                    && findPairWithId(signingBlock, APK_SIGNATURE_SCHEME_V3_BLOCK_ID) == null) {
                return null;
            }
            ByteBuffer pair = findPairWithId(signingBlock, YYB_COMMENT_BLOCK_ID);
            if (pair == null) {
                return null;
            }
            byte[] result = new byte[pair.remaining()];
            pair.get(result, 0, result.length);
            return result;
        } finally {
            if (raf != null) {
                try {
                    raf.close();
                } catch (IOException ignored) {
                }
            }
        }
    }

    private static byte[] readZipEocdComment(String path) throws IOException {
        RandomAccessFile raf = null;
        try {
            raf = new RandomAccessFile(path, "r");
            if (raf.length() == 0) {
                return null;
            }
            byte[] comment = readEocdCommentBytes(raf);
            if (comment == null) {
                return null;
            }
            int i = 0;
            while (i < comment.length) {
                int i2 = i + 1;
                if (i2 < comment.length
                        && (((comment[i2] << 8) & ACTION_POINTER_INDEX_MASK)
                        + (comment[i] & 0xff)) == CHANNEL_HEAD) {
                    return Arrays.copyOfRange(comment, i, comment.length);
                }
                i = i2;
            }
            return null;
        } finally {
            if (raf != null) {
                try {
                    raf.close();
                } catch (IOException ignored) {
                }
            }
        }
    }

    private static class EocdInfo {
        final ByteBuffer buffer;
        final long offset;

        EocdInfo(ByteBuffer buffer, long offset) {
            this.buffer = buffer;
            this.offset = offset;
        }
    }

    private static EocdInfo findEocd(RandomAccessFile raf) throws IOException {
        EocdInfo found = findEocd(raf, 0);
        return found != null ? found : findEocd(raf, UINT16_MAX_VALUE);
    }

    private static EocdInfo findEocd(RandomAccessFile raf, int maxCommentSize) throws IOException {
        int i2;
        if (maxCommentSize < 0 || maxCommentSize > UINT16_MAX_VALUE) {
            throw new IllegalArgumentException("maxCommentSize: " + maxCommentSize);
        }
        long length = raf.length();
        if (length < ZIP_EOCD_REC_MIN_SIZE) {
            return null;
        }
        ByteBuffer buffer = ByteBuffer.allocate((int) Math.min(maxCommentSize, length - ZIP_EOCD_REC_MIN_SIZE) + ZIP_EOCD_REC_MIN_SIZE);
        buffer.order(ByteOrder.LITTLE_ENDIAN);
        long capacity = length - buffer.capacity();
        raf.seek(capacity);
        raf.readFully(buffer.array(), buffer.arrayOffset(), buffer.capacity());
        int maxIndex = buffer.capacity() - ZIP_EOCD_REC_MIN_SIZE;
        int min = Math.min(maxIndex, UINT16_MAX_VALUE);
        int i = 0;
        while (true) {
            if (i >= min) {
                i2 = -1;
                break;
            }
            i2 = maxIndex - i;
            if (buffer.getInt(i2) == ZIP_EOCD_REC_SIG
                    && (buffer.getShort(i2 + ZIP_EOCD_COMMENT_LENGTH_FIELD_OFFSET) & 0xffff) == i) {
                break;
            }
            i++;
        }
        if (i2 == -1) {
            return null;
        }
        buffer.position(i2);
        ByteBuffer slice = buffer.slice();
        slice.order(ByteOrder.LITTLE_ENDIAN);
        return new EocdInfo(slice, capacity + i2);
    }

    private static boolean isZip64Present(RandomAccessFile raf, long offset) throws IOException {
        long pos = offset - ZIP64_EOCD_LOCATOR_SIZE;
        if (pos < 0) {
            return false;
        }
        raf.seek(pos);
        return raf.readInt() == ZIP64_EOCD_LOCATOR_SIG_REVERSE_BYTE_ORDER;
    }

    private static long getCentralDirOffset(ByteBuffer buffer) {
        return buffer.getInt(buffer.position() + ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET) & 0xffffffffL;
    }

    private static byte[] readEocdCommentBytes(RandomAccessFile raf) throws IOException {
        long length = raf.length() - ZIP_EOCD_REC_MIN_SIZE;
        if (length < 0) {
            return null;
        }
        raf.seek(length);
        byte[] magic = {0x50, 0x4b, 0x05, 0x06};
        int read = raf.read();
        long pos = length;
        while (read != -1 && length - pos <= MAX_COMMENT_SCAN) {
            if (read != (magic[0] & 0xff)
                    || raf.read() != (magic[1] & 0xff)
                    || raf.read() != (magic[2] & 0xff)
                    || raf.read() != (magic[3] & 0xff)) {
                pos--;
                raf.seek(pos);
                read = raf.read();
            } else {
                raf.seek(pos + ZIP_EOCD_COMMENT_LENGTH_FIELD_OFFSET);
                byte[] lenBytes = new byte[2];
                raf.readFully(lenBytes);
                int commentLen = (lenBytes[0] & 0xff) | ((lenBytes[1] << 8) & ACTION_POINTER_INDEX_MASK);
                if (commentLen == 0) {
                    return null;
                }
                byte[] comment = new byte[commentLen];
                raf.read(comment);
                return comment;
            }
        }
        throw new ZipException("archive is not a ZIP archive");
    }

    private static ByteBuffer readApkSigningBlock(RandomAccessFile raf, long centralDirOffset) throws IOException {
        ByteBuffer header = ByteBuffer.allocate(24);
        header.order(ByteOrder.LITTLE_ENDIAN);
        raf.seek(centralDirOffset - header.capacity());
        raf.readFully(header.array(), header.arrayOffset(), header.capacity());
        if (header.getLong(8) == APK_SIG_BLOCK_MAGIC_LO && header.getLong(16) == APK_SIG_BLOCK_MAGIC_HI) {
            long blockSize = header.getLong(0);
            if (blockSize >= header.capacity() && blockSize <= 2147483639L) {
                int size = (int) (8 + blockSize);
                long start = centralDirOffset - size;
                if (start < 0) {
                    return null;
                }
                ByteBuffer block = ByteBuffer.allocate(size);
                block.order(ByteOrder.LITTLE_ENDIAN);
                raf.seek(start);
                raf.readFully(block.array(), block.arrayOffset(), block.capacity());
                if (block.getLong(0) != blockSize) {
                    return null;
                }
                return block;
            }
        }
        return null;
    }

    private static ByteBuffer findPairWithId(ByteBuffer buffer, int id) {
        if (buffer.order() != ByteOrder.LITTLE_ENDIAN) {
            return null;
        }
        ByteBuffer pairs = sliceFromTo(buffer, 8, buffer.capacity() - 24);
        while (pairs.hasRemaining() && pairs.remaining() >= 8) {
            try {
                long length = pairs.getLong();
                if (length >= 4 && length <= Integer.MAX_VALUE) {
                    int len = (int) length;
                    int end = pairs.position() + len;
                    if (len > pairs.remaining()) {
                        return null;
                    }
                    if (pairs.getInt() == id) {
                        return getByteBuffer(pairs, len - 4);
                    }
                    pairs.position(end);
                }
            } catch (BufferUnderflowException ignored) {
            }
            return null;
        }
        return null;
    }

    private static ByteBuffer sliceFromTo(ByteBuffer buffer, int from, int to) {
        if (from < 0 || to < from || to > buffer.capacity()) {
            throw new IllegalArgumentException("invalid slice [" + from + "," + to + "]");
        }
        int oldLimit = buffer.limit();
        int oldPos = buffer.position();
        try {
            buffer.position(0);
            buffer.limit(to);
            buffer.position(from);
            ByteBuffer slice = buffer.slice();
            slice.order(buffer.order());
            return slice;
        } finally {
            buffer.position(0);
            buffer.limit(oldLimit);
            buffer.position(oldPos);
        }
    }

    private static ByteBuffer getByteBuffer(ByteBuffer buffer, int size) {
        if (size < 0) {
            throw new IllegalArgumentException("size: " + size);
        }
        int oldLimit = buffer.limit();
        int oldPos = buffer.position();
        int end = size + oldPos;
        if (end < oldPos || end > oldLimit) {
            throw new BufferUnderflowException();
        }
        buffer.limit(end);
        try {
            ByteBuffer slice = buffer.slice();
            slice.order(buffer.order());
            buffer.position(end);
            return slice;
        } finally {
            buffer.limit(oldLimit);
        }
    }

    private static Properties decodeMsdkComment(byte[] data) {
        if (data != null && data.length >= 4) {
            try {
                ByteBuffer buffer = ByteBuffer.wrap(data);
                byte[] headBytes = new byte[2];
                buffer.get(headBytes);
                if (((headBytes[0] & 0xff) | ((headBytes[1] << 8) & ACTION_POINTER_INDEX_MASK)) != CHANNEL_HEAD
                        || data.length - 2 <= 2) {
                    return null;
                }
                byte[] lenBytes = new byte[2];
                buffer.get(lenBytes);
                int len = (lenBytes[0] & 0xff) | ((lenBytes[1] << 8) & ACTION_POINTER_INDEX_MASK);
                if (data.length - 4 < len) {
                    return null;
                }
                byte[] payload = new byte[len];
                buffer.get(payload);
                Properties props = new Properties();
                props.load(new InputStreamReader(new ByteArrayInputStream(payload), StandardCharsets.UTF_8));
                return props;
            } catch (Throwable ignored) {
            }
        }
        return null;
    }
}
