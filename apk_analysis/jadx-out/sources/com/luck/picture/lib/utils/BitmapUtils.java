package com.luck.picture.lib.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import androidx.exifinterface.media.ExifInterface;
import com.luck.picture.lib.basic.PictureContentResolver;
import com.luck.picture.lib.config.PictureMimeType;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.InputStream;

/* loaded from: classes.dex */
public class BitmapUtils {
    private static final int ARGB_8888_MEMORY_BYTE = 4;
    private static final int MAX_BITMAP_SIZE = 104857600;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void rotateImage(Context context, String str) {
        FileOutputStream fileOutputStream;
        Bitmap bitmap;
        FileOutputStream fileOutputStream2;
        FileOutputStream fileOutputStream3;
        FileOutputStream fileOutputStream4;
        FileOutputStream fileOutputStream5;
        Bitmap decodeFile;
        FileOutputStream fileOutputStream6;
        FileOutputStream fileOutputStream7;
        FileOutputStream fileOutputStream8 = null;
        try {
            int readPictureDegree = readPictureDegree(context, str);
            if (readPictureDegree > 0) {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                if (PictureMimeType.isContent(str)) {
                    InputStream openInputStream = PictureContentResolver.openInputStream(context, Uri.parse(str));
                    try {
                        BitmapFactory.decodeStream(openInputStream, null, options);
                        fileOutputStream3 = openInputStream;
                    } catch (Exception e) {
                        e = e;
                        fileOutputStream = null;
                        bitmap = null;
                        fileOutputStream5 = openInputStream;
                        fileOutputStream8 = fileOutputStream5;
                        try {
                            e.printStackTrace();
                            PictureFileUtils.close(fileOutputStream8);
                            PictureFileUtils.close(fileOutputStream);
                            if (bitmap != null) {
                                return;
                            } else {
                                return;
                            }
                        } catch (Throwable th) {
                            th = th;
                            PictureFileUtils.close(fileOutputStream8);
                            PictureFileUtils.close(fileOutputStream);
                            if (bitmap != null && !bitmap.isRecycled()) {
                                bitmap.recycle();
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = null;
                        bitmap = null;
                        fileOutputStream4 = openInputStream;
                        fileOutputStream8 = fileOutputStream4;
                        PictureFileUtils.close(fileOutputStream8);
                        PictureFileUtils.close(fileOutputStream);
                        if (bitmap != null) {
                        }
                        throw th;
                    }
                } else {
                    BitmapFactory.decodeFile(str, options);
                    fileOutputStream3 = null;
                }
                options.inSampleSize = computeSize(options.outWidth, options.outHeight);
                options.inJustDecodeBounds = false;
                if (PictureMimeType.isContent(str)) {
                    InputStream openInputStream2 = PictureContentResolver.openInputStream(context, Uri.parse(str));
                    decodeFile = BitmapFactory.decodeStream(openInputStream2, null, options);
                    fileOutputStream6 = openInputStream2;
                } else {
                    decodeFile = BitmapFactory.decodeFile(str, options);
                    fileOutputStream6 = fileOutputStream3;
                }
                if (decodeFile != null) {
                    try {
                        bitmap = rotatingImage(decodeFile, readPictureDegree);
                    } catch (Exception e2) {
                        e = e2;
                        fileOutputStream = null;
                        bitmap = decodeFile;
                        fileOutputStream5 = fileOutputStream6;
                    } catch (Throwable th3) {
                        th = th3;
                        fileOutputStream = null;
                        bitmap = decodeFile;
                        fileOutputStream4 = fileOutputStream6;
                    }
                    try {
                        if (PictureMimeType.isContent(str)) {
                            fileOutputStream7 = (FileOutputStream) PictureContentResolver.openOutputStream(context, Uri.parse(str));
                        } else {
                            fileOutputStream7 = new FileOutputStream(str);
                        }
                        fileOutputStream8 = fileOutputStream7;
                        saveBitmapFile(bitmap, fileOutputStream8);
                        fileOutputStream2 = fileOutputStream8;
                    } catch (Exception e3) {
                        e = e3;
                        fileOutputStream = fileOutputStream8;
                        fileOutputStream5 = fileOutputStream6;
                        fileOutputStream8 = fileOutputStream5;
                        e.printStackTrace();
                        PictureFileUtils.close(fileOutputStream8);
                        PictureFileUtils.close(fileOutputStream);
                        if (bitmap != null || bitmap.isRecycled()) {
                            return;
                        }
                        bitmap.recycle();
                    } catch (Throwable th4) {
                        th = th4;
                        fileOutputStream = fileOutputStream8;
                        fileOutputStream4 = fileOutputStream6;
                        fileOutputStream8 = fileOutputStream4;
                        PictureFileUtils.close(fileOutputStream8);
                        PictureFileUtils.close(fileOutputStream);
                        if (bitmap != null) {
                            bitmap.recycle();
                        }
                        throw th;
                    }
                } else {
                    fileOutputStream2 = null;
                    bitmap = decodeFile;
                }
                fileOutputStream8 = fileOutputStream6;
            } else {
                fileOutputStream2 = null;
                bitmap = null;
            }
            PictureFileUtils.close(fileOutputStream8);
            PictureFileUtils.close(fileOutputStream2);
            if (bitmap == null || bitmap.isRecycled()) {
                return;
            }
        } catch (Exception e4) {
            e = e4;
            fileOutputStream = null;
            bitmap = null;
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream = null;
            bitmap = null;
        }
        bitmap.recycle();
    }

    public static Bitmap rotatingImage(Bitmap bitmap, int i) {
        Matrix matrix = new Matrix();
        matrix.postRotate(i);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    private static void saveBitmapFile(Bitmap bitmap, FileOutputStream fileOutputStream) {
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 60, fileOutputStream);
            fileOutputStream.write(byteArrayOutputStream.toByteArray());
            fileOutputStream.flush();
            fileOutputStream.close();
            PictureFileUtils.close(fileOutputStream);
            PictureFileUtils.close(byteArrayOutputStream);
        } catch (Exception e2) {
            e = e2;
            byteArrayOutputStream2 = byteArrayOutputStream;
            e.printStackTrace();
            PictureFileUtils.close(fileOutputStream);
            PictureFileUtils.close(byteArrayOutputStream2);
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream2 = byteArrayOutputStream;
            PictureFileUtils.close(fileOutputStream);
            PictureFileUtils.close(byteArrayOutputStream2);
            throw th;
        }
    }

    public static int readPictureDegree(Context context, String str) {
        ExifInterface exifInterface;
        InputStream inputStream = null;
        try {
            if (PictureMimeType.isContent(str)) {
                inputStream = PictureContentResolver.openInputStream(context, Uri.parse(str));
                exifInterface = new ExifInterface(inputStream);
            } else {
                exifInterface = new ExifInterface(str);
            }
            int attributeInt = exifInterface.getAttributeInt(ExifInterface.TAG_ORIENTATION, 1);
            if (attributeInt == 3) {
                PictureFileUtils.close(inputStream);
                return 180;
            }
            if (attributeInt == 6) {
                PictureFileUtils.close(inputStream);
                return 90;
            }
            if (attributeInt != 8) {
                return 0;
            }
            PictureFileUtils.close(inputStream);
            return 270;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        } finally {
            PictureFileUtils.close(inputStream);
        }
    }

    public static int[] getMaxImageSize(int i, int i2) {
        int i3 = -1;
        if (i == 0 && i2 == 0) {
            return new int[]{-1, -1};
        }
        int computeSize = computeSize(i, i2);
        long totalMemory = getTotalMemory();
        boolean z = false;
        int i4 = computeSize;
        int i5 = -1;
        while (!z) {
            i3 = i / i4;
            i5 = i2 / i4;
            if (i3 * i5 * 4 > totalMemory) {
                i4 *= 2;
            } else {
                z = true;
            }
        }
        return new int[]{i3, i5};
    }

    public static long getTotalMemory() {
        long j = Runtime.getRuntime().totalMemory();
        if (j > 104857600) {
            return 104857600L;
        }
        return j;
    }

    public static int computeSize(int i, int i2) {
        if (i % 2 == 1) {
            i++;
        }
        if (i2 % 2 == 1) {
            i2++;
        }
        int max = Math.max(i, i2);
        float min = Math.min(i, i2) / max;
        if (min > 1.0f || min <= 0.5625d) {
            double d = min;
            if (d <= 0.5625d && d > 0.5d) {
                int i3 = max / 1280;
                if (i3 == 0) {
                    return 1;
                }
                return i3;
            }
            return (int) Math.ceil(max / (1280.0d / d));
        }
        if (max < 1664) {
            return 1;
        }
        if (max < 4990) {
            return 2;
        }
        if (max <= 4990 || max >= 10240) {
            return max / 1280;
        }
        return 4;
    }
}
