package com.luck.picture.lib.adapter.holder;

import android.content.Context;
import android.graphics.ColorFilter;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.luck.picture.lib.R;
import com.luck.picture.lib.adapter.PictureImageGridAdapter;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.config.SelectorConfig;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.style.SelectMainStyle;
import com.luck.picture.lib.utils.AnimUtils;
import com.luck.picture.lib.utils.StyleUtils;
import com.luck.picture.lib.utils.ValueOf;

/* loaded from: classes.dex */
public class BaseRecyclerMediaHolder extends RecyclerView.ViewHolder {
    public View btnCheck;
    private ColorFilter defaultColorFilter;
    public boolean isHandleMask;
    public boolean isSelectNumberStyle;
    public ImageView ivPicture;
    private PictureImageGridAdapter.OnItemClickListener listener;
    public Context mContext;
    private ColorFilter maskWhiteColorFilter;
    private ColorFilter selectColorFilter;
    public SelectorConfig selectorConfig;
    public TextView tvCheck;

    public static BaseRecyclerMediaHolder generate(ViewGroup viewGroup, int i, int i2, SelectorConfig selectorConfig) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(i2, viewGroup, false);
        if (i == 1) {
            return new CameraViewHolder(inflate);
        }
        if (i == 3) {
            return new VideoViewHolder(inflate, selectorConfig);
        }
        if (i == 4) {
            return new AudioViewHolder(inflate, selectorConfig);
        }
        return new ImageViewHolder(inflate, selectorConfig);
    }

    public BaseRecyclerMediaHolder(View view) {
        super(view);
    }

    public BaseRecyclerMediaHolder(View view, SelectorConfig selectorConfig) {
        super(view);
        this.selectorConfig = selectorConfig;
        Context context = view.getContext();
        this.mContext = context;
        this.defaultColorFilter = StyleUtils.getColorFilter(context, R.color.ps_color_20);
        this.selectColorFilter = StyleUtils.getColorFilter(this.mContext, R.color.ps_color_80);
        this.maskWhiteColorFilter = StyleUtils.getColorFilter(this.mContext, R.color.ps_color_half_white);
        SelectMainStyle selectMainStyle = this.selectorConfig.selectorStyle.getSelectMainStyle();
        this.isSelectNumberStyle = selectMainStyle.isSelectNumberStyle();
        this.ivPicture = (ImageView) view.findViewById(R.id.ivPicture);
        this.tvCheck = (TextView) view.findViewById(R.id.tvCheck);
        this.btnCheck = view.findViewById(R.id.btnCheck);
        boolean z = true;
        if (selectorConfig.selectionMode == 1 && selectorConfig.isDirectReturnSingle) {
            this.tvCheck.setVisibility(8);
            this.btnCheck.setVisibility(8);
        } else {
            this.tvCheck.setVisibility(0);
            this.btnCheck.setVisibility(0);
        }
        if (selectorConfig.isDirectReturnSingle || (selectorConfig.selectionMode != 1 && selectorConfig.selectionMode != 2)) {
            z = false;
        }
        this.isHandleMask = z;
        int adapterSelectTextSize = selectMainStyle.getAdapterSelectTextSize();
        if (StyleUtils.checkSizeValidity(adapterSelectTextSize)) {
            this.tvCheck.setTextSize(adapterSelectTextSize);
        }
        int adapterSelectTextColor = selectMainStyle.getAdapterSelectTextColor();
        if (StyleUtils.checkStyleValidity(adapterSelectTextColor)) {
            this.tvCheck.setTextColor(adapterSelectTextColor);
        }
        int selectBackground = selectMainStyle.getSelectBackground();
        if (StyleUtils.checkStyleValidity(selectBackground)) {
            this.tvCheck.setBackgroundResource(selectBackground);
        }
        int[] adapterSelectStyleGravity = selectMainStyle.getAdapterSelectStyleGravity();
        if (StyleUtils.checkArrayValidity(adapterSelectStyleGravity)) {
            if (this.tvCheck.getLayoutParams() instanceof RelativeLayout.LayoutParams) {
                ((RelativeLayout.LayoutParams) this.tvCheck.getLayoutParams()).removeRule(21);
                for (int i : adapterSelectStyleGravity) {
                    ((RelativeLayout.LayoutParams) this.tvCheck.getLayoutParams()).addRule(i);
                }
            }
            if (this.btnCheck.getLayoutParams() instanceof RelativeLayout.LayoutParams) {
                ((RelativeLayout.LayoutParams) this.btnCheck.getLayoutParams()).removeRule(21);
                for (int i2 : adapterSelectStyleGravity) {
                    ((RelativeLayout.LayoutParams) this.btnCheck.getLayoutParams()).addRule(i2);
                }
            }
            int adapterSelectClickArea = selectMainStyle.getAdapterSelectClickArea();
            if (StyleUtils.checkSizeValidity(adapterSelectClickArea)) {
                ViewGroup.LayoutParams layoutParams = this.btnCheck.getLayoutParams();
                layoutParams.width = adapterSelectClickArea;
                layoutParams.height = adapterSelectClickArea;
            }
        }
    }

    public void bindData(final LocalMedia localMedia, final int i) {
        localMedia.position = getAbsoluteAdapterPosition();
        selectedMedia(isSelected(localMedia));
        if (this.isSelectNumberStyle) {
            notifySelectNumberStyle(localMedia);
        }
        if (this.isHandleMask && this.selectorConfig.isMaxSelectEnabledMask) {
            dispatchHandleMask(localMedia);
        }
        String path = localMedia.getPath();
        if (localMedia.isEditorImage()) {
            path = localMedia.getCutPath();
        }
        loadCover(path);
        this.tvCheck.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.adapter.holder.BaseRecyclerMediaHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BaseRecyclerMediaHolder.this.btnCheck.performClick();
            }
        });
        this.btnCheck.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.adapter.holder.BaseRecyclerMediaHolder.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int onSelected;
                if (BaseRecyclerMediaHolder.this.listener == null || (onSelected = BaseRecyclerMediaHolder.this.listener.onSelected(BaseRecyclerMediaHolder.this.tvCheck, i, localMedia)) == -1) {
                    return;
                }
                if (onSelected == 0) {
                    if (BaseRecyclerMediaHolder.this.selectorConfig.isSelectZoomAnim) {
                        if (BaseRecyclerMediaHolder.this.selectorConfig.onItemSelectAnimListener != null) {
                            BaseRecyclerMediaHolder.this.selectorConfig.onItemSelectAnimListener.onSelectItemAnim(BaseRecyclerMediaHolder.this.ivPicture, true);
                        } else {
                            AnimUtils.selectZoom(BaseRecyclerMediaHolder.this.ivPicture);
                        }
                    }
                } else if (onSelected == 1 && BaseRecyclerMediaHolder.this.selectorConfig.isSelectZoomAnim && BaseRecyclerMediaHolder.this.selectorConfig.onItemSelectAnimListener != null) {
                    BaseRecyclerMediaHolder.this.selectorConfig.onItemSelectAnimListener.onSelectItemAnim(BaseRecyclerMediaHolder.this.ivPicture, false);
                }
                BaseRecyclerMediaHolder baseRecyclerMediaHolder = BaseRecyclerMediaHolder.this;
                baseRecyclerMediaHolder.selectedMedia(baseRecyclerMediaHolder.isSelected(localMedia));
            }
        });
        this.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.luck.picture.lib.adapter.holder.BaseRecyclerMediaHolder.3
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (BaseRecyclerMediaHolder.this.listener == null) {
                    return false;
                }
                BaseRecyclerMediaHolder.this.listener.onItemLongClick(view, i);
                return false;
            }
        });
        this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.luck.picture.lib.adapter.holder.BaseRecyclerMediaHolder.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BaseRecyclerMediaHolder.this.listener == null) {
                    return;
                }
                if ((PictureMimeType.isHasImage(localMedia.getMimeType()) && BaseRecyclerMediaHolder.this.selectorConfig.isEnablePreviewImage) || BaseRecyclerMediaHolder.this.selectorConfig.isDirectReturnSingle || ((PictureMimeType.isHasVideo(localMedia.getMimeType()) && (BaseRecyclerMediaHolder.this.selectorConfig.isEnablePreviewVideo || BaseRecyclerMediaHolder.this.selectorConfig.selectionMode == 1)) || (PictureMimeType.isHasAudio(localMedia.getMimeType()) && (BaseRecyclerMediaHolder.this.selectorConfig.isEnablePreviewAudio || BaseRecyclerMediaHolder.this.selectorConfig.selectionMode == 1)))) {
                    if (localMedia.isMaxSelectEnabledMask()) {
                        return;
                    }
                    BaseRecyclerMediaHolder.this.listener.onItemClick(BaseRecyclerMediaHolder.this.tvCheck, i, localMedia);
                    return;
                }
                BaseRecyclerMediaHolder.this.btnCheck.performClick();
            }
        });
    }

    protected void loadCover(String str) {
        if (this.selectorConfig.imageEngine != null) {
            this.selectorConfig.imageEngine.loadGridImage(this.ivPicture.getContext(), str, this.ivPicture);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006d, code lost:
    
        if (com.luck.picture.lib.config.PictureMimeType.isHasImage(r4.getMimeType()) == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008b, code lost:
    
        if (com.luck.picture.lib.config.PictureMimeType.isHasVideo(r4.getMimeType()) == false) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void dispatchHandleMask(LocalMedia localMedia) {
        if (this.selectorConfig.getSelectCount() > 0 && !this.selectorConfig.getSelectedResult().contains(localMedia)) {
            if (this.selectorConfig.isWithVideoImage) {
                if (this.selectorConfig.selectionMode == 1) {
                }
            } else {
                if (PictureMimeType.isHasVideo(this.selectorConfig.getResultFirstMimeType())) {
                    if (this.selectorConfig.selectionMode != 1) {
                        r1 = this.selectorConfig.maxVideoSelectNum > 0 ? this.selectorConfig.maxVideoSelectNum : this.selectorConfig.maxSelectNum;
                    }
                    if (this.selectorConfig.getSelectCount() != r1) {
                    }
                    this.ivPicture.setColorFilter(this.maskWhiteColorFilter);
                    localMedia.setMaxSelectEnabledMask(true);
                    return;
                }
                if (this.selectorConfig.getSelectCount() != (this.selectorConfig.selectionMode != 1 ? this.selectorConfig.maxSelectNum : Integer.MAX_VALUE)) {
                }
                this.ivPicture.setColorFilter(this.maskWhiteColorFilter);
                localMedia.setMaxSelectEnabledMask(true);
                return;
            }
        }
        localMedia.setMaxSelectEnabledMask(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectedMedia(boolean z) {
        if (this.tvCheck.isSelected() != z) {
            this.tvCheck.setSelected(z);
        }
        if (this.selectorConfig.isDirectReturnSingle) {
            this.ivPicture.setColorFilter(this.defaultColorFilter);
        } else {
            this.ivPicture.setColorFilter(z ? this.selectColorFilter : this.defaultColorFilter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSelected(LocalMedia localMedia) {
        LocalMedia compareLocalMedia;
        boolean contains = this.selectorConfig.getSelectedResult().contains(localMedia);
        if (contains && (compareLocalMedia = localMedia.getCompareLocalMedia()) != null && compareLocalMedia.isEditorImage()) {
            localMedia.setCutPath(compareLocalMedia.getCutPath());
            localMedia.setCut(!TextUtils.isEmpty(compareLocalMedia.getCutPath()));
            localMedia.setEditorImage(compareLocalMedia.isEditorImage());
        }
        return contains;
    }

    private void notifySelectNumberStyle(LocalMedia localMedia) {
        this.tvCheck.setText("");
        for (int i = 0; i < this.selectorConfig.getSelectCount(); i++) {
            LocalMedia localMedia2 = this.selectorConfig.getSelectedResult().get(i);
            if (TextUtils.equals(localMedia2.getPath(), localMedia.getPath()) || localMedia2.getId() == localMedia.getId()) {
                localMedia.setNum(localMedia2.getNum());
                localMedia2.setPosition(localMedia.getPosition());
                this.tvCheck.setText(ValueOf.toString(Integer.valueOf(localMedia.getNum())));
            }
        }
    }

    public void setOnItemClickListener(PictureImageGridAdapter.OnItemClickListener onItemClickListener) {
        this.listener = onItemClickListener;
    }
}
