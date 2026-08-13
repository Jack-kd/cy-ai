package com.mycompany.plugins.mediapicker;

import android.content.Context;
import android.widget.ImageView;

import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.luck.picture.lib.engine.ImageEngine;
import com.luck.picture.lib.utils.ActivityCompatHelper;

/**
 * GlideEngine (reconstructed from APK).
 *
 * ImageEngine implementation that powers the PictureSelector gallery.
 */
public class GlideEngine implements ImageEngine {

    private GlideEngine() {
    }

    private static final class InstanceHolder {
        static final GlideEngine instance = new GlideEngine();
    }

    public static GlideEngine createGlideEngine() {
        return InstanceHolder.instance;
    }

    @Override
    public void loadImage(Context context, String path, ImageView imageView) {
        if (ActivityCompatHelper.assertValidRequest(context)) {
            Glide.with(context).load(path).into(imageView);
        }
    }

    @Override
    public void loadImage(Context context, ImageView imageView, String path, int width, int height) {
        if (ActivityCompatHelper.assertValidRequest(context)) {
            Glide.with(context).load(path).override(width, height).into(imageView);
        }
    }

    @Override
    public void loadAlbumCover(Context context, String path, ImageView imageView) {
        if (ActivityCompatHelper.assertValidRequest(context)) {
            Glide.with(context).asBitmap()
                    .load(path)
                    .override(180, 180)
                    .sizeMultiplier(0.5f)
                    .transform(new CenterCrop(), new RoundedCorners(8))
                    .into(imageView);
        }
    }

    @Override
    public void loadGridImage(Context context, String path, ImageView imageView) {
        if (ActivityCompatHelper.assertValidRequest(context)) {
            Glide.with(context).load(path).override(200, 200).centerCrop().into(imageView);
        }
    }

    @Override
    public void pauseRequests(Context context) {
        if (ActivityCompatHelper.assertValidRequest(context)) {
            Glide.with(context).pauseRequests();
        }
    }

    @Override
    public void resumeRequests(Context context) {
        if (ActivityCompatHelper.assertValidRequest(context)) {
            Glide.with(context).resumeRequests();
        }
    }
}
