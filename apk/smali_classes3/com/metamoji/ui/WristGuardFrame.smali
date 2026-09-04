.class public Lcom/metamoji/ui/WristGuardFrame;
.super Landroid/widget/PopupWindow;
.source "WristGuardFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;
    }
.end annotation


# instance fields
.field private _context:Landroid/content/Context;

.field mActivity:Lcom/metamoji/noteanytime/EditorActivity;

.field mDirection:I

.field mDragOffsetX:I

.field mDragOffsetY:I

.field mDragging:Z

.field private final mHandler:Landroid/os/Handler;

.field mHasEvent:Z

.field mHeightRetio:F

.field mLastDragX:I

.field mLastDragY:I

.field mLastTime:J

.field mParent:Landroid/view/View;

.field mPivotX:I

.field mPivotY:I

.field mWidthRetio:F

.field mWristGuardView:Lcom/metamoji/ui/WristGuardView;

.field private timer:Ljava/util/Timer;

.field private timerTask:Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;

.field visible:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/metamoji/ui/WristGuardFrame;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/WristGuardFrame;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmove(Lcom/metamoji/ui/WristGuardFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/WristGuardFrame;->move()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/metamoji/ui/WristGuardFrame;->visible:Z

    const/4 v1, 0x0

    .line 97
    iput-object v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mParent:Landroid/view/View;

    const v1, 0x3f19999a    # 0.6f

    .line 164
    iput v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mWidthRetio:F

    const v1, 0x3ecccccd    # 0.4f

    .line 165
    iput v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mHeightRetio:F

    .line 166
    iput v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    .line 213
    iput-boolean v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mDragging:Z

    .line 266
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mHandler:Landroid/os/Handler;

    .line 267
    iput-boolean v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mHasEvent:Z

    .line 44
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/WristGuardFrame;->init(Landroid/content/Context;)V

    return-void
.end method

.method private calcRect(Landroid/view/View;)Lcom/metamoji/cm/RectEx;
    .locals 7

    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 439
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/high16 v1, 0x41c00000    # 24.0f

    .line 440
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v0

    .line 442
    iget v3, p0, Lcom/metamoji/ui/WristGuardFrame;->mWidthRetio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v0, v2

    int-to-float v3, p1

    .line 443
    iget v4, p0, Lcom/metamoji/ui/WristGuardFrame;->mHeightRetio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v3, p1, v3

    .line 448
    iget v4, p0, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    const/16 v5, 0x10e

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    sub-int/2addr v2, v1

    sub-int/2addr v0, v2

    add-int/2addr v3, v1

    move v1, v6

    move v6, v2

    goto :goto_0

    :cond_0
    const/16 v5, 0xb4

    if-ne v4, v5, :cond_1

    add-int v0, v2, v1

    add-int/2addr v3, v1

    move v1, v6

    goto :goto_0

    :cond_1
    const/16 v5, 0x5a

    if-ne v4, v5, :cond_2

    add-int v0, v2, v1

    sub-int/2addr v3, v1

    sub-int/2addr p1, v3

    move v1, v3

    move v3, p1

    goto :goto_0

    :cond_2
    sub-int v6, v2, v1

    sub-int v1, v3, v1

    sub-int/2addr v0, v6

    sub-int v3, p1, v1

    .line 465
    :goto_0
    new-instance p1, Lcom/metamoji/cm/RectEx;

    int-to-float v2, v6

    int-to-float v1, v1

    int-to-float v0, v0

    int-to-float v3, v3

    invoke-direct {p1, v2, v1, v0, v3}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object p1
.end method

.method private conv(Landroid/view/View;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    const/4 v0, 0x2

    .line 355
    new-array v1, v0, [I

    .line 356
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 357
    new-array p1, v0, [I

    .line 358
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mParent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 359
    aget v2, v1, v0

    aget v0, p1, v0

    sub-int/2addr v2, v0

    const/4 v0, 0x1

    .line 360
    aget v1, v1, v0

    aget p1, p1, v0

    sub-int/2addr v1, p1

    .line 362
    iget p1, p2, Landroid/graphics/Point;->x:I

    .line 365
    new-instance p1, Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v2

    iget p2, p2, Landroid/graphics/Point;->y:I

    add-int/2addr p2, v1

    invoke-direct {p1, v0, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method private convertPointFromView(Landroid/view/View;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7

    const/4 v0, 0x2

    .line 370
    new-array v1, v0, [I

    .line 372
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 375
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 376
    new-instance p1, Landroid/graphics/Point;

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v1, v1, v5

    invoke-direct {p1, v4, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 377
    iget v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    if-nez v1, :cond_0

    .line 378
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v3

    iget v3, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v3

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr p1, v2

    iget p2, p2, Landroid/graphics/Point;->y:I

    add-int/2addr p1, p2

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_0
    const/high16 v1, 0x41c00000    # 24.0f

    .line 380
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 381
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 382
    iget v6, p0, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    int-to-float v6, v6

    int-to-float v1, v1

    invoke-virtual {v4, v6, v1, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 384
    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v6, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v6

    int-to-float v1, v1

    .line 385
    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v6, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v6

    int-to-float v2, v2

    new-array v0, v0, [F

    aput v1, v0, v3

    aput v2, v0, v5

    .line 386
    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 389
    aget v1, v0, v3

    float-to-int v1, v1

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 390
    aget v0, v0, v5

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 392
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    add-int/2addr p1, p2

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private move()V
    .locals 4

    .line 330
    iget v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mLastDragX:I

    iget v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mPivotX:I

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mLastDragY:I

    iget v2, p0, Lcom/metamoji/ui/WristGuardFrame;->mPivotY:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 332
    :cond_1
    :goto_0
    iput v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mPivotX:I

    .line 333
    iget v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mLastDragY:I

    iput v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mPivotY:I

    .line 334
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 335
    iget-object v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 336
    iget v2, p0, Lcom/metamoji/ui/WristGuardFrame;->mPivotX:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    iput v2, p0, Lcom/metamoji/ui/WristGuardFrame;->mWidthRetio:F

    .line 337
    iget v2, p0, Lcom/metamoji/ui/WristGuardFrame;->mPivotY:I

    sub-int v2, v1, v2

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    iput v2, p0, Lcom/metamoji/ui/WristGuardFrame;->mHeightRetio:F

    .line 339
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mPivotX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/metamoji/ui/WristGuardFrame;->mWidthRetio:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DragMove width %d pivo %d retio %.1f"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    invoke-virtual {p0}, Lcom/metamoji/ui/WristGuardFrame;->checkLimit()V

    .line 342
    invoke-virtual {p0}, Lcom/metamoji/ui/WristGuardFrame;->resize()V

    return-void
.end method

.method private show()V
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mParent:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/WristGuardFrame;->calcRect(Landroid/view/View;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 118
    iget v1, v0, Lcom/metamoji/cm/RectEx;->width:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/WristGuardFrame;->setWidth(I)V

    .line 119
    iget v1, v0, Lcom/metamoji/cm/RectEx;->height:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/WristGuardFrame;->setHeight(I)V

    const/4 v1, 0x2

    .line 120
    new-array v1, v1, [I

    .line 121
    iget-object v2, p0, Lcom/metamoji/ui/WristGuardFrame;->mParent:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    .line 122
    aget v3, v1, v2

    const/16 v4, 0x64

    if-ge v3, v4, :cond_0

    .line 123
    iget v3, v0, Lcom/metamoji/cm/RectEx;->y:F

    aget v1, v1, v2

    int-to-float v1, v1

    add-float/2addr v3, v1

    iput v3, v0, Lcom/metamoji/cm/RectEx;->y:F

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mParent:Landroid/view/View;

    iget v2, v0, Lcom/metamoji/cm/RectEx;->x:F

    float-to-int v2, v2

    iget v0, v0, Lcom/metamoji/cm/RectEx;->y:F

    float-to-int v0, v0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/metamoji/ui/WristGuardFrame;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public attached()V
    .locals 1

    .line 305
    iget v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    if-eqz v0, :cond_0

    .line 306
    const-string v0, ""

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method checkLimit()V
    .locals 2

    .line 82
    iget v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mWidthRetio:F

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 83
    iput v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mWidthRetio:F

    .line 85
    :cond_0
    iget v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mHeightRetio:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 86
    iput v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mHeightRetio:F

    .line 88
    :cond_1
    iget v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mWidthRetio:F

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 89
    iput v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mWidthRetio:F

    .line 91
    :cond_2
    iget v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mHeightRetio:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 92
    iput v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mHeightRetio:F

    :cond_3
    return-void
.end method

.method public dragMove(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 6

    .line 272
    iget-boolean v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mDragging:Z

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 276
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 277
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, p1, v1}, Lcom/metamoji/ui/WristGuardFrame;->conv(Landroid/view/View;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 279
    iget p2, p0, Lcom/metamoji/ui/WristGuardFrame;->mDragOffsetX:I

    iget v0, p1, Landroid/graphics/Point;->x:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/metamoji/ui/WristGuardFrame;->mLastDragX:I

    .line 280
    iget p2, p0, Lcom/metamoji/ui/WristGuardFrame;->mDragOffsetY:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/metamoji/ui/WristGuardFrame;->mLastDragY:I

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 283
    iget-wide v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mLastTime:J

    const-wide/16 v2, 0x12c

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 284
    iput-wide p1, p0, Lcom/metamoji/ui/WristGuardFrame;->mLastTime:J

    const/4 p1, 0x0

    .line 285
    iput-boolean p1, p0, Lcom/metamoji/ui/WristGuardFrame;->mHasEvent:Z

    .line 286
    invoke-direct {p0}, Lcom/metamoji/ui/WristGuardFrame;->move()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 288
    iput-boolean p1, p0, Lcom/metamoji/ui/WristGuardFrame;->mHasEvent:Z

    .line 289
    iget-object p1, p0, Lcom/metamoji/ui/WristGuardFrame;->timer:Ljava/util/Timer;

    if-nez p1, :cond_1

    .line 290
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/WristGuardFrame;->timer:Ljava/util/Timer;

    .line 291
    new-instance v1, Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;-><init>(Lcom/metamoji/ui/WristGuardFrame;)V

    iput-object v1, p0, Lcom/metamoji/ui/WristGuardFrame;->timerTask:Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;

    .line 292
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardFrame;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method

.method public endDrag()V
    .locals 3

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mDragging:Z

    .line 261
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 262
    const-string v1, "WristGuardWidthRetio"

    iget v2, p0, Lcom/metamoji/ui/WristGuardFrame;->mWidthRetio:F

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;F)V

    .line 263
    const-string v1, "WristGuardHeightRetio"

    iget v2, p0, Lcom/metamoji/ui/WristGuardFrame;->mHeightRetio:F

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;F)V

    return-void
.end method

.method public first(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/metamoji/ui/WristGuardFrame;->mActivity:Lcom/metamoji/noteanytime/EditorActivity;

    return-void
.end method

.method init(Landroid/content/Context;)V
    .locals 3

    .line 48
    iput-object p1, p0, Lcom/metamoji/ui/WristGuardFrame;->_context:Landroid/content/Context;

    .line 50
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WristGuardFrame;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/WristGuardFrame;->setAnimationStyle(I)V

    .line 53
    new-instance v0, Lcom/metamoji/ui/WristGuardView;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/WristGuardView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mWristGuardView:Lcom/metamoji/ui/WristGuardView;

    .line 55
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WristGuardFrame;->setContentView(Landroid/view/View;)V

    .line 57
    iget-object p1, p0, Lcom/metamoji/ui/WristGuardFrame;->mWristGuardView:Lcom/metamoji/ui/WristGuardView;

    invoke-virtual {p1, p0}, Lcom/metamoji/ui/WristGuardView;->setParent(Lcom/metamoji/ui/WristGuardFrame;)V

    .line 59
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 60
    const-string v0, "WristGuardWidthRetio"

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mWidthRetio:F

    .line 61
    const-string v0, "WristGuardHeightRetio"

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mHeightRetio:F

    .line 62
    const-string v0, "WristGuardDirection"

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    .line 63
    invoke-virtual {p0}, Lcom/metamoji/ui/WristGuardFrame;->checkLimit()V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/metamoji/ui/WristGuardFrame;->visible:Z

    return v0
.end method

.method resize()V
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mParent:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/WristGuardFrame;->calcRect(Landroid/view/View;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    const/4 v1, 0x2

    .line 129
    new-array v1, v1, [I

    .line 130
    iget-object v2, p0, Lcom/metamoji/ui/WristGuardFrame;->mParent:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    .line 131
    aget v3, v1, v2

    const/16 v4, 0x64

    if-ge v3, v4, :cond_0

    .line 132
    iget v3, v0, Lcom/metamoji/cm/RectEx;->y:F

    aget v1, v1, v2

    int-to-float v1, v1

    add-float/2addr v3, v1

    iput v3, v0, Lcom/metamoji/cm/RectEx;->y:F

    .line 133
    :cond_0
    iget v1, v0, Lcom/metamoji/cm/RectEx;->x:F

    float-to-int v1, v1

    iget v2, v0, Lcom/metamoji/cm/RectEx;->y:F

    float-to-int v2, v2

    iget v3, v0, Lcom/metamoji/cm/RectEx;->width:F

    float-to-int v3, v3

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    float-to-int v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/metamoji/ui/WristGuardFrame;->update(IIII)V

    return-void
.end method

.method public startDrag(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 5

    const/high16 v0, 0x41c00000    # 24.0f

    .line 221
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 223
    iget-object v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mParent:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/metamoji/ui/WristGuardFrame;->calcRect(Landroid/view/View;)Lcom/metamoji/cm/RectEx;

    move-result-object v1

    .line 224
    iget v2, p0, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_0

    .line 225
    iget v2, v1, Lcom/metamoji/cm/RectEx;->x:F

    float-to-int v2, v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/metamoji/ui/WristGuardFrame;->mPivotX:I

    .line 226
    iget v1, v1, Lcom/metamoji/cm/RectEx;->height:F

    float-to-int v1, v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mPivotY:I

    goto :goto_0

    :cond_0
    const/16 v3, 0xb4

    if-ne v2, v3, :cond_1

    .line 228
    iget v2, v1, Lcom/metamoji/cm/RectEx;->width:F

    float-to-int v2, v2

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/metamoji/ui/WristGuardFrame;->mPivotX:I

    .line 229
    iget v1, v1, Lcom/metamoji/cm/RectEx;->height:F

    float-to-int v1, v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mPivotY:I

    goto :goto_0

    :cond_1
    const/16 v3, 0x5a

    if-ne v2, v3, :cond_2

    .line 231
    iget v2, v1, Lcom/metamoji/cm/RectEx;->width:F

    float-to-int v2, v2

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/metamoji/ui/WristGuardFrame;->mPivotX:I

    .line 232
    iget v1, v1, Lcom/metamoji/cm/RectEx;->y:F

    float-to-int v1, v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mPivotY:I

    goto :goto_0

    .line 234
    :cond_2
    iget v2, v1, Lcom/metamoji/cm/RectEx;->x:F

    float-to-int v2, v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/metamoji/ui/WristGuardFrame;->mPivotX:I

    .line 235
    iget v1, v1, Lcom/metamoji/cm/RectEx;->y:F

    float-to-int v1, v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mPivotY:I

    :goto_0
    const/4 v0, 0x2

    .line 240
    new-array v1, v0, [I

    .line 241
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 242
    new-array p1, v0, [I

    .line 243
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mParent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 245
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 248
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    const/4 v2, 0x0

    .line 251
    aget v3, v1, v2

    aget v4, p1, v2

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    iget v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mPivotX:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/metamoji/ui/WristGuardFrame;->mDragOffsetX:I

    const/4 v0, 0x1

    .line 252
    aget v1, v1, v0

    aget p1, p1, v0

    sub-int/2addr v1, p1

    add-int/2addr v1, p2

    iget p1, p0, Lcom/metamoji/ui/WristGuardFrame;->mPivotY:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mDragOffsetY:I

    .line 254
    iput-boolean v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mDragging:Z

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/metamoji/ui/WristGuardFrame;->mLastTime:J

    .line 256
    iput-boolean v2, p0, Lcom/metamoji/ui/WristGuardFrame;->mHasEvent:Z

    return-void
.end method

.method public update()V
    .locals 10

    .line 396
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mWristGuardView:Lcom/metamoji/ui/WristGuardView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/ui/WristGuardView;->getWidth()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/metamoji/ui/WristGuardFrame;->mWristGuardView:Lcom/metamoji/ui/WristGuardView;

    invoke-virtual {v1}, Lcom/metamoji/ui/WristGuardView;->getHeight()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x2

    .line 404
    new-array v2, v1, [I

    .line 405
    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Viewport;->getLocationOnScreen([I)V

    .line 406
    new-array v3, v1, [I

    .line 407
    iget-object v4, p0, Lcom/metamoji/ui/WristGuardFrame;->mWristGuardView:Lcom/metamoji/ui/WristGuardView;

    invoke-virtual {v4, v3}, Lcom/metamoji/ui/WristGuardView;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    .line 408
    aget v5, v3, v4

    aget v6, v2, v4

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    .line 409
    aget v3, v3, v6

    aget v2, v2, v6

    sub-int/2addr v3, v2

    .line 410
    iget v2, p0, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    if-eqz v2, :cond_2

    const/high16 v2, 0x41c00000    # 24.0f

    .line 411
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    .line 412
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 413
    iget v8, p0, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    int-to-float v8, v8

    int-to-float v2, v2

    invoke-virtual {v7, v8, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 416
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    .line 417
    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 419
    iget-object v8, p0, Lcom/metamoji/ui/WristGuardFrame;->mWristGuardView:Lcom/metamoji/ui/WristGuardView;

    invoke-virtual {v8}, Lcom/metamoji/ui/WristGuardView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    .line 420
    iget-object v9, p0, Lcom/metamoji/ui/WristGuardFrame;->mWristGuardView:Lcom/metamoji/ui/WristGuardView;

    invoke-virtual {v9}, Lcom/metamoji/ui/WristGuardView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    new-array v1, v1, [F

    aput v8, v1, v4

    aput v9, v1, v6

    .line 421
    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 423
    aget v7, v2, v4

    aget v8, v1, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 424
    aget v8, v2, v6

    aget v9, v1, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 425
    aget v9, v2, v4

    aget v4, v1, v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 426
    aget v2, v2, v6

    aget v1, v1, v6

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 428
    new-instance v2, Lcom/metamoji/cm/RectEx;

    int-to-float v5, v5

    add-float/2addr v5, v7

    int-to-float v3, v3

    add-float/2addr v3, v8

    sub-float/2addr v4, v7

    sub-float/2addr v1, v8

    invoke-direct {v2, v5, v3, v4, v1}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    goto :goto_1

    .line 430
    :cond_2
    new-instance v2, Lcom/metamoji/cm/RectEx;

    int-to-float v1, v5

    int-to-float v3, v3

    iget-object v4, p0, Lcom/metamoji/ui/WristGuardFrame;->mWristGuardView:Lcom/metamoji/ui/WristGuardView;

    invoke-virtual {v4}, Lcom/metamoji/ui/WristGuardView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/metamoji/ui/WristGuardFrame;->mWristGuardView:Lcom/metamoji/ui/WristGuardView;

    invoke-virtual {v5}, Lcom/metamoji/ui/WristGuardView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 433
    :goto_1
    iput-object v2, v0, Lcom/metamoji/df/sprite/Viewport;->wristGuardRect:Lcom/metamoji/cm/RectEx;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public visibleChange(Landroid/view/View;)V
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/metamoji/ui/WristGuardFrame;->visible:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/metamoji/ui/WristGuardFrame;->dismiss()V

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/metamoji/ui/WristGuardFrame;->visible:Z

    return-void

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/metamoji/ui/WristGuardFrame;->mParent:Landroid/view/View;

    .line 109
    invoke-direct {p0}, Lcom/metamoji/ui/WristGuardFrame;->show()V

    .line 110
    iget-object p1, p0, Lcom/metamoji/ui/WristGuardFrame;->mWristGuardView:Lcom/metamoji/ui/WristGuardView;

    invoke-virtual {p1}, Lcom/metamoji/ui/WristGuardView;->updateRotate()V

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/metamoji/ui/WristGuardFrame;->visible:Z

    return-void
.end method

.method public wgClose()V
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/metamoji/ui/WristGuardFrame;->dismiss()V

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/metamoji/ui/WristGuardFrame;->visible:Z

    return-void
.end method

.method public wgRotate()V
    .locals 3

    .line 177
    iget v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    add-int/lit16 v0, v0, 0x10e

    iput v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    .line 178
    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    .line 179
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "WristGuardDirection"

    iget v2, p0, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 180
    invoke-virtual {p0}, Lcom/metamoji/ui/WristGuardFrame;->dismiss()V

    .line 181
    invoke-direct {p0}, Lcom/metamoji/ui/WristGuardFrame;->show()V

    .line 182
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardFrame;->mWristGuardView:Lcom/metamoji/ui/WristGuardView;

    invoke-virtual {v0}, Lcom/metamoji/ui/WristGuardView;->updateRotate()V

    return-void
.end method
