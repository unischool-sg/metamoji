.class public Lcom/handmark/pulltorefresh/library/internal/ShareViewLoadingLayout;
.super Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.source "ShareViewLoadingLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 18
    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/ShareViewLoadingLayout;->mHeaderText:Landroid/widget/TextView;

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/ShareViewLoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/ShareViewLoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 22
    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/ShareViewLoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getDefaultDrawableResId()I
    .locals 1

    .line 61
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->clear:I

    return v0
.end method

.method public onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method protected onPullImlp(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;II)V
    .locals 0

    return-void
.end method

.method protected onPullImpl(F)V
    .locals 0

    return-void
.end method

.method protected pullToRefreshImpl()V
    .locals 0

    return-void
.end method

.method protected refreshingImpl()V
    .locals 0

    return-void
.end method

.method protected releaseToRefreshImpl()V
    .locals 0

    return-void
.end method

.method protected resetImpl()V
    .locals 0

    return-void
.end method
