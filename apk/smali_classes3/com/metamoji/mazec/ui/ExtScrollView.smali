.class public Lcom/metamoji/mazec/ui/ExtScrollView;
.super Landroid/widget/ScrollView;
.source "ExtScrollView.java"


# static fields
.field private static mIsAndroid2_2:Z


# instance fields
.field private mFadingEdgeColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/metamoji/mazec/ui/ExtScrollView;->mIsAndroid2_2:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/metamoji/mazec/ui/ExtScrollView;->mFadingEdgeColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/metamoji/mazec/ui/ExtScrollView;->mFadingEdgeColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/metamoji/mazec/ui/ExtScrollView;->mFadingEdgeColor:I

    return-void
.end method


# virtual methods
.method public canScrollBottom()Z
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/ExtScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/ExtScrollView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/ExtScrollView;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollTop()Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/ExtScrollView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fling(I)V
    .locals 1

    .line 47
    sget-boolean v0, Lcom/metamoji/mazec/ui/ExtScrollView;->mIsAndroid2_2:Z

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/ExtScrollView;->canScrollTop()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-lez p1, :cond_2

    .line 49
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/ExtScrollView;->canScrollBottom()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 54
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    return-void
.end method

.method public getSolidColor()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/metamoji/mazec/ui/ExtScrollView;->mFadingEdgeColor:I

    if-eqz v0, :cond_0

    return v0

    .line 109
    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->getSolidColor()I

    move-result v0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 8

    .line 82
    sget-boolean v0, Lcom/metamoji/mazec/ui/ExtScrollView;->mIsAndroid2_2:Z

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/ExtScrollView;->canScrollTop()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/ExtScrollView;->canScrollBottom()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 84
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-wide v2, v0

    .line 85
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/ExtScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v4, 0x1

    .line 86
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/ExtScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void

    .line 89
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method public setFadingEdgeColor(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/metamoji/mazec/ui/ExtScrollView;->mFadingEdgeColor:I

    return-void
.end method
