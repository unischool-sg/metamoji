.class public interface abstract Lcom/metamoji/nt/itemlist/NtItemListScrollView;
.super Ljava/lang/Object;
.source "NtItemListScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListHorizontalScrollView;,
        Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListVerticalScrollView;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getDistance()I
.end method

.method public abstract getLength()I
.end method

.method public abstract isVertical()Z
.end method

.method public abstract isViewInScreen(Landroid/view/View;)Z
.end method

.method public abstract setNtItemListListener(Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;)V
.end method

.method public abstract smoothScrollBy(II)V
.end method
