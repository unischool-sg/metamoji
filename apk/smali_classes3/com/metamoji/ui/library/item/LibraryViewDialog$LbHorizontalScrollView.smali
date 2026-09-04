.class public Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "LibraryViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LbHorizontalScrollView"
.end annotation


# instance fields
.field mCurrentPage:I

.field mDisableRewinder:Z

.field private mEnableScroll:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mRewindScroller:Landroid/widget/Scroller;

.field mRewindTask:Ljava/lang/Runnable;

.field mScrollTick:J

.field mTimer:Ljava/util/Timer;

.field mTouching:Z

.field m_dlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

.field m_initialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryViewDialog;)V
    .locals 3

    .line 2002
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1990
    iput-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->m_initialized:Z

    const/4 v1, -0x1

    .line 1993
    iput v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mCurrentPage:I

    .line 1994
    iput-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mEnableScroll:Z

    .line 2124
    iput-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mTouching:Z

    const-wide/16 v1, 0x0

    .line 2126
    iput-wide v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mScrollTick:J

    .line 2127
    iput-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mDisableRewinder:Z

    .line 2003
    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->m_dlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    .line 2005
    new-instance p2, Landroid/widget/Scroller;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-direct {p2, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mRewindScroller:Landroid/widget/Scroller;

    .line 2006
    new-instance p2, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$1;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$1;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;)V

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mRewindTask:Ljava/lang/Runnable;

    .line 2022
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$2;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public enableScroll(Z)V
    .locals 0

    .line 2236
    iput-boolean p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mEnableScroll:Z

    return-void
.end method

.method fitPageAfterScrolled()V
    .locals 5

    .line 2173
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->getScrollX()I

    move-result v0

    .line 2174
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->getWidth()I

    move-result v1

    .line 2175
    div-int v2, v0, v1

    .line 2176
    rem-int v3, v0, v1

    div-int/lit8 v4, v1, 0x2

    if-le v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 2179
    :cond_0
    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mRewindScroller:Landroid/widget/Scroller;

    mul-int/2addr v1, v2

    sub-int/2addr v1, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 2180
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mRewindTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 2182
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mCurrentPage:I

    if-eq v2, v0, :cond_1

    .line 2183
    iput v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mCurrentPage:I

    .line 2185
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->m_dlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->onChangeCurrentIndex()V

    :cond_1
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .line 2092
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mCurrentPage:I

    return v0
.end method

.method public initialize()V
    .locals 6

    .line 2046
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->m_initialized:Z

    if-nez v0, :cond_3

    .line 2049
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->m_dlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2051
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->m_dlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getPageCount()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2052
    iget-object v4, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->m_dlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v4, v0, v3, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->tilePages(Landroid/content/Context;II)V

    const/4 v0, 0x1

    .line 2053
    iput-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->m_initialized:Z

    .line 2056
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 2058
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->m_dlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->systemOptionKeyCurrentPageDefault()I

    move-result v1

    .line 2060
    iget-object v4, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->m_dlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v4}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getPageCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->m_dlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v4, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->pageTypeOfIndex(I)Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v4

    sget-object v5, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_STORE:Lcom/metamoji/lb/LbConstants$LbPageType;

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2063
    :cond_1
    :goto_0
    iput v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mCurrentPage:I

    .line 2066
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->m_dlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->systemOptionKeyLastAccessId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2067
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 2068
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->m_dlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mCurrentPage:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->pageViewOfIndex(I)Lcom/metamoji/ui/library/item/LibraryPageView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2070
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->updateContentOffsetByEntityId(Ljava/lang/String;)V

    .line 2076
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mCurrentPage:I

    mul-int/2addr v0, v1

    .line 2077
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mRewindScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 2078
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mRewindTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 2081
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->m_dlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->onChangeCurrentIndex()V

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2215
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->touchChanged(Landroid/view/MotionEvent;)V

    .line 2217
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2218
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 2219
    iget-boolean v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mEnableScroll:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    .line 2141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 2142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mScrollTick:J

    .line 2145
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mTimer:Ljava/util/Timer;

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mDisableRewinder:Z

    if-nez p1, :cond_0

    .line 2146
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mTimer:Ljava/util/Timer;

    .line 2147
    new-instance v1, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;)V

    const-wide/16 v2, 0x96

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2229
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->touchChanged(Landroid/view/MotionEvent;)V

    .line 2230
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setPage(I)V
    .locals 2

    .line 2103
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mCurrentPage:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    .line 2106
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->m_dlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getPageCount()I

    move-result v0

    if-gt v0, p1, :cond_1

    goto :goto_0

    .line 2109
    :cond_1
    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mCurrentPage:I

    .line 2110
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    .line 2111
    iput-boolean v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mDisableRewinder:Z

    mul-int/2addr v0, p1

    .line 2112
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->setScrollX(I)V

    const/4 p1, 0x0

    .line 2113
    iput-boolean p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mDisableRewinder:Z

    .line 2116
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->m_dlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->onChangeCurrentIndex()V

    :cond_2
    :goto_0
    return-void
.end method

.method touchChanged(Landroid/view/MotionEvent;)V
    .locals 2

    .line 2195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    .line 2203
    iput-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mTouching:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2200
    iput-boolean p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mTouching:Z

    return-void
.end method
