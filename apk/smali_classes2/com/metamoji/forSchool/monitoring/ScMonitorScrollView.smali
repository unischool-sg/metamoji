.class public Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;
.super Landroid/widget/ScrollView;
.source "ScMonitorScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView$IScMonitorScrollViewListener;
    }
.end annotation


# instance fields
.field private mEnableScroll:Z

.field private mScrollViewListener:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView$IScMonitorScrollViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->mScrollViewListener:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView$IScMonitorScrollViewListener;

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->mEnableScroll:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->mScrollViewListener:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView$IScMonitorScrollViewListener;

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->mEnableScroll:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->mScrollViewListener:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView$IScMonitorScrollViewListener;

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->mEnableScroll:Z

    return-void
.end method


# virtual methods
.method public enableScroll(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->mEnableScroll:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 35
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p1, v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 41
    :goto_0
    iget-boolean v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->mEnableScroll:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 47
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->mScrollViewListener:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView$IScMonitorScrollViewListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 48
    invoke-interface/range {v0 .. v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView$IScMonitorScrollViewListener;->onScrollChanged(Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;IIII)V

    :cond_0
    return-void
.end method

.method public setOnScrollViewListener(Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView$IScMonitorScrollViewListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->mScrollViewListener:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView$IScMonitorScrollViewListener;

    return-void
.end method
