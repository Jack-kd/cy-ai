package com.luck.picture.lib.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.luck.picture.lib.interfaces.OnRecyclerViewPreloadMoreListener;
import com.luck.picture.lib.interfaces.OnRecyclerViewScrollListener;
import com.luck.picture.lib.interfaces.OnRecyclerViewScrollStateListener;

/* loaded from: classes.dex */
public class RecyclerPreloadView extends RecyclerView {
    private static final int BOTTOM_DEFAULT = 1;
    public static final int BOTTOM_PRELOAD = 2;
    private static final int LIMIT = 150;
    private static final String TAG = "RecyclerPreloadView";
    private boolean isEnabledLoadMore;
    private boolean isInTheBottom;
    private int mFirstVisiblePosition;
    private int mLastVisiblePosition;
    private OnRecyclerViewPreloadMoreListener onRecyclerViewPreloadListener;
    private OnRecyclerViewScrollListener onRecyclerViewScrollListener;
    private OnRecyclerViewScrollStateListener onRecyclerViewScrollStateListener;
    private int reachBottomRow;

    public RecyclerPreloadView(Context context) {
        super(context);
        this.isInTheBottom = false;
        this.isEnabledLoadMore = false;
        this.reachBottomRow = 1;
    }

    public RecyclerPreloadView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isInTheBottom = false;
        this.isEnabledLoadMore = false;
        this.reachBottomRow = 1;
    }

    public RecyclerPreloadView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isInTheBottom = false;
        this.isEnabledLoadMore = false;
        this.reachBottomRow = 1;
    }

    public void setReachBottomRow(int i) {
        if (i < 1) {
            i = 1;
        }
        this.reachBottomRow = i;
    }

    public void setEnabledLoadMore(boolean z) {
        this.isEnabledLoadMore = z;
    }

    public boolean isEnabledLoadMore() {
        return this.isEnabledLoadMore;
    }

    public int getFirstVisiblePosition() {
        return this.mFirstVisiblePosition;
    }

    public int getLastVisiblePosition() {
        return this.mLastVisiblePosition;
    }

    public void setLastVisiblePosition(int i) {
        this.mLastVisiblePosition = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrolled(int i, int i2) {
        super.onScrolled(i, i2);
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager == null) {
            throw new RuntimeException("LayoutManager is null,Please check it!");
        }
        setLayoutManagerPosition(layoutManager);
        if (this.onRecyclerViewPreloadListener != null && this.isEnabledLoadMore) {
            RecyclerView.Adapter adapter = getAdapter();
            if (adapter == null) {
                throw new RuntimeException("Adapter is null,Please check it!");
            }
            if (layoutManager instanceof GridLayoutManager) {
                GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
                if (gridLayoutManager.findLastVisibleItemPosition() / gridLayoutManager.getSpanCount() >= (adapter.getItemCount() / gridLayoutManager.getSpanCount()) - this.reachBottomRow) {
                    if (!this.isInTheBottom) {
                        this.onRecyclerViewPreloadListener.onRecyclerViewPreloadMore();
                        if (i2 > 0) {
                            this.isInTheBottom = true;
                        }
                    } else if (i2 == 0) {
                        this.isInTheBottom = false;
                    }
                }
            }
            this.isInTheBottom = false;
        }
        OnRecyclerViewScrollListener onRecyclerViewScrollListener = this.onRecyclerViewScrollListener;
        if (onRecyclerViewScrollListener != null) {
            onRecyclerViewScrollListener.onScrolled(i, i2);
        }
        if (this.onRecyclerViewScrollStateListener != null) {
            if (Math.abs(i2) < LIMIT) {
                this.onRecyclerViewScrollStateListener.onScrollSlow();
            } else {
                this.onRecyclerViewScrollStateListener.onScrollFast();
            }
        }
    }

    private void setLayoutManagerPosition(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            this.mFirstVisiblePosition = gridLayoutManager.findFirstVisibleItemPosition();
            this.mLastVisiblePosition = gridLayoutManager.findLastVisibleItemPosition();
        } else if (layoutManager instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            this.mFirstVisiblePosition = linearLayoutManager.findFirstVisibleItemPosition();
            this.mLastVisiblePosition = linearLayoutManager.findLastVisibleItemPosition();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrollStateChanged(int i) {
        OnRecyclerViewScrollStateListener onRecyclerViewScrollStateListener;
        super.onScrollStateChanged(i);
        if (i == 0 || i == 1) {
            setLayoutManagerPosition(getLayoutManager());
        }
        OnRecyclerViewScrollListener onRecyclerViewScrollListener = this.onRecyclerViewScrollListener;
        if (onRecyclerViewScrollListener != null) {
            onRecyclerViewScrollListener.onScrollStateChanged(i);
        }
        if (i != 0 || (onRecyclerViewScrollStateListener = this.onRecyclerViewScrollStateListener) == null) {
            return;
        }
        onRecyclerViewScrollStateListener.onScrollSlow();
    }

    public void setOnRecyclerViewPreloadListener(OnRecyclerViewPreloadMoreListener onRecyclerViewPreloadMoreListener) {
        this.onRecyclerViewPreloadListener = onRecyclerViewPreloadMoreListener;
    }

    public void setOnRecyclerViewScrollStateListener(OnRecyclerViewScrollStateListener onRecyclerViewScrollStateListener) {
        this.onRecyclerViewScrollStateListener = onRecyclerViewScrollStateListener;
    }

    public void setOnRecyclerViewScrollListener(OnRecyclerViewScrollListener onRecyclerViewScrollListener) {
        this.onRecyclerViewScrollListener = onRecyclerViewScrollListener;
    }
}
