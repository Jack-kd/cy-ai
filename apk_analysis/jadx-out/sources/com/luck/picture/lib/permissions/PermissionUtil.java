package com.luck.picture.lib.permissions;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.luck.picture.lib.utils.SpUtils;

/* loaded from: classes.dex */
public class PermissionUtil {
    public static final String ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION = "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION";
    public static final int DEFAULT = 0;
    public static final int REFUSE = 2;
    public static final int REFUSE_PERMANENT = 3;
    public static final int SUCCESS = 1;

    public static boolean hasPermissions(Context context, String... strArr) {
        for (String str : strArr) {
            if (ContextCompat.checkSelfPermission(context, str) != 0) {
                return false;
            }
        }
        return true;
    }

    public static int getPermissionStatus(Activity activity, String str) {
        int checkSelfPermission = ActivityCompat.checkSelfPermission(activity, str);
        if (ActivityCompat.shouldShowRequestPermissionRationale(activity, str)) {
            return 2;
        }
        if (checkSelfPermission == 0) {
            return 1;
        }
        return !SpUtils.contains(activity, str) ? 0 : 3;
    }

    public static boolean isAllGranted(Context context, String[] strArr, int[] iArr) {
        boolean z = true;
        boolean z2 = context.getApplicationInfo().targetSdkVersion >= 34 && ContextCompat.checkSelfPermission(context, PermissionConfig.READ_MEDIA_VISUAL_USER_SELECTED) == 0;
        if (iArr.length <= 0) {
            return false;
        }
        int i = 0;
        while (true) {
            if (i >= iArr.length) {
                break;
            }
            if (iArr[i] == 0) {
                i++;
            } else if (!z2 || (!strArr[i].equals(PermissionConfig.READ_MEDIA_IMAGES) && !strArr[i].equals(PermissionConfig.READ_MEDIA_VIDEO))) {
                z = false;
            }
        }
        return z;
    }

    public static void goIntentSetting(Fragment fragment, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", fragment.getActivity().getPackageName(), null));
            fragment.startActivityForResult(intent, i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
