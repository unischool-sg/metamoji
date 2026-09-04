.class public Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;
.super Ljava/lang/Object;
.source "UiDragInterceptionInhibitor.java"


# static fields
.field public static final BOTH:I = 0x3

.field public static final HORIZONTAL:I = 0x2

.field public static final VERTICAL:I = 0x1


# instance fields
.field mDragOrientation:I

.field mDragging:Z

.field mStartX:F

.field mStartY:F

.field mTarget:Landroid/view/View;

.field mThreshold:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mStartX:F

    .line 20
    iput v0, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mStartY:F

    const/16 v0, 0x14

    .line 21
    iput v0, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mThreshold:I

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mDragging:Z

    .line 33
    iput-object p1, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mTarget:Landroid/view/View;

    .line 34
    iput p2, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mDragOrientation:I

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_6

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_6

    goto/16 :goto_1

    .line 65
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mDragging:Z

    if-nez v0, :cond_9

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 68
    iget v1, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mStartX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 69
    iget v1, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mStartY:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 70
    iget v1, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mDragOrientation:I

    if-eq v1, v2, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    iget v1, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mThreshold:I

    int-to-float v3, v1

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    int-to-float v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 74
    :cond_2
    iput-boolean v2, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mDragging:Z

    goto :goto_0

    .line 83
    :cond_3
    iget v1, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mThreshold:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    cmpl-float p1, v0, p1

    if-lez p1, :cond_5

    .line 84
    iput-boolean v2, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mDragging:Z

    goto :goto_0

    .line 78
    :cond_4
    iget v1, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mThreshold:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_5

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 79
    iput-boolean v2, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mDragging:Z

    .line 90
    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mDragging:Z

    if-eqz p1, :cond_9

    .line 91
    iget-object p1, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 97
    :cond_6
    iput-boolean v1, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mDragging:Z

    goto :goto_1

    .line 55
    :cond_7
    iget v0, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mThreshold:I

    if-nez v0, :cond_8

    .line 56
    iput-boolean v2, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mDragging:Z

    .line 57
    iget-object p1, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 59
    :cond_8
    iput-boolean v1, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mDragging:Z

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mStartX:F

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mStartY:F

    :cond_9
    :goto_1
    return v2

    :cond_a
    return v1
.end method

.method public setThreshold(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->mThreshold:I

    return-void
.end method
