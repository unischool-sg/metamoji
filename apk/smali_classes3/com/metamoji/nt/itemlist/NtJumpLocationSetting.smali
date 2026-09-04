.class public Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;
.super Ljava/lang/Object;
.source "NtJumpLocationSetting.java"

# interfaces
.implements Lcom/metamoji/df/sprite/TouchListener;
.implements Lcom/metamoji/df/sprite/LongPressListener;
.implements Lcom/metamoji/df/sprite/ViewportListener;
.implements Lcom/metamoji/nt/NtAutoScroller$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;,
        Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$UnSelectRubberBandDisplay;
    }
.end annotation


# static fields
.field static m_handleCornerBmp:Landroid/graphics/Bitmap;

.field static m_handleMidpointBmp:Landroid/graphics/Bitmap;


# instance fields
.field final MOVE_THRESHOLD:F

.field final RUBBERBAND_SPRITE_CONTENTOFFSET:I

.field _autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

.field _tapPtOnTouchMove:Landroid/graphics/PointF;

.field final _tempMoveStartPos:Landroid/graphics/PointF;

.field _tempMoveStartPosEnabled:Z

.field m_contentOffset:F

.field m_handleVisibility:Lcom/metamoji/rb/RbConstants$Activity;

.field m_listener_registered:Z

.field m_noRubberBand:Z

.field m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

.field m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

.field m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

.field m_rubberBandOverlayStage:Lcom/metamoji/df/sprite/Stage;

.field m_selectRubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;

.field m_startBaseBounds:Lcom/metamoji/cm/RectEx;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 104
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->RUBBERBAND_SPRITE_CONTENTOFFSET:I

    const/high16 v0, 0x41100000    # 9.0f

    .line 202
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->MOVE_THRESHOLD:F

    .line 204
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_tempMoveStartPos:Landroid/graphics/PointF;

    .line 207
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_tapPtOnTouchMove:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    .line 171
    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandOverlayStage:Lcom/metamoji/df/sprite/Stage;

    .line 172
    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    .line 173
    sget-object v1, Lcom/metamoji/rb/RbConstants$Activity;->NONE:Lcom/metamoji/rb/RbConstants$Activity;

    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

    .line 174
    sget-object v1, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_ALL:Lcom/metamoji/rb/RbConstants$Activity;

    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_handleVisibility:Lcom/metamoji/rb/RbConstants$Activity;

    .line 175
    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_selectRubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;

    .line 176
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 177
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_contentOffset:F

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_listener_registered:Z

    .line 179
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_noRubberBand:Z

    .line 180
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_startBaseBounds:Lcom/metamoji/cm/RectEx;

    return-void
.end method

.method private isVisibleRubberBand()Z
    .locals 1

    .line 508
    iget-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_noRubberBand:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private zoomEnd()V
    .locals 2

    .line 781
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->updateRubberBand()V

    .line 782
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/rb/RbRubberBand;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public cancelRubberBandOperation()V
    .locals 1

    .line 683
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->isOperatingRubberBand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->NONE:Lcom/metamoji/rb/RbConstants$Activity;

    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

    .line 687
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->updateRubberBand()V

    :cond_0
    return-void
.end method

.method public didAutoScroll(FF)V
    .locals 2

    .line 829
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_tapPtOnTouchMove:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p1

    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_tapPtOnTouchMove:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 832
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_selectRubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;

    invoke-interface {p1, v0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;->viewportToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 833
    iget-object p2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {p2, p1}, Lcom/metamoji/rb/RbRubberBand;->touchMove(Landroid/graphics/PointF;)Lcom/metamoji/rb/RbRubberBandAction;

    return-void
.end method

.method public disposeRubberBand()V
    .locals 1

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_noRubberBand:Z

    .line 190
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->updateRubberBand()V

    return-void
.end method

.method public getAppFrame()Lcom/metamoji/nt/INtAppFrame;
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_selectRubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;

    invoke-interface {v0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    return-object v0
.end method

.method getContentOffset()F
    .locals 1

    .line 155
    iget v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_contentOffset:F

    return v0
.end method

.method public getHandleVisibility()Lcom/metamoji/rb/RbConstants$Activity;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_handleVisibility:Lcom/metamoji/rb/RbConstants$Activity;

    return-object v0
.end method

.method public getSelectRubberBand()Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_selectRubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;

    return-object v0
.end method

.method getTapPoint(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_selectRubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;

    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;->viewportToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public isOperatingRubberBand()Z
    .locals 2

    .line 678
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->NONE:Lcom/metamoji/rb/RbConstants$Activity;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowRubberBand()Z
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public longPressCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 2

    .line 454
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->BODY:Lcom/metamoji/rb/RbConstants$Activity;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

    if-ne v0, v1, :cond_0

    return-void

    .line 457
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->touchCancel(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public longPressEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 2

    .line 446
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->BODY:Lcom/metamoji/rb/RbConstants$Activity;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

    if-ne v0, v1, :cond_0

    return-void

    .line 449
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->touchEnd(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public longPressMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 2

    .line 438
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->BODY:Lcom/metamoji/rb/RbConstants$Activity;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

    if-ne v0, v1, :cond_0

    return-void

    .line 441
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->touchMove(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public longPressStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->touchStart(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public scrollChanged()V
    .locals 0

    return-void
.end method

.method public scrollChanging()V
    .locals 0

    return-void
.end method

.method public scrollEnd(Z)V
    .locals 0

    return-void
.end method

.method public scrollInertiaEnd(Z)V
    .locals 0

    return-void
.end method

.method public scrollInertiaStart()V
    .locals 0

    return-void
.end method

.method public scrollStart()V
    .locals 0

    return-void
.end method

.method setCOntentOffset(F)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_contentOffset:F

    return-void
.end method

.method public setDefaultRubberBandStyle()V
    .locals 7

    .line 480
    new-instance v0, Lcom/metamoji/rb/RbPathStyle;

    invoke-direct {v0}, Lcom/metamoji/rb/RbPathStyle;-><init>()V

    .line 481
    new-instance v1, Lcom/metamoji/rb/RbHandleStyle;

    invoke-direct {v1}, Lcom/metamoji/rb/RbHandleStyle;-><init>()V

    .line 482
    sget-object v2, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_handleCornerBmp:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 483
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->handle_circle:I

    invoke-static {v2}, Lcom/metamoji/cm/ImageUtils;->loadAssetBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_handleCornerBmp:Landroid/graphics/Bitmap;

    .line 486
    :cond_0
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 487
    sget-object v3, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_handleCornerBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 488
    sget-object v3, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_handleCornerBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 489
    iget v3, v2, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x41700000    # 15.0f

    mul-float/2addr v3, v5

    const/high16 v5, 0x41480000    # 12.5f

    div-float/2addr v3, v5

    .line 490
    sget-object v5, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_handleCornerBmp:Landroid/graphics/Bitmap;

    sget-object v6, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_CORNER:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v1, v5, v6, v2, v3}, Lcom/metamoji/rb/RbHandleStyle;->setImage(Landroid/graphics/Bitmap;Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;F)V

    .line 492
    sget-object v2, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_handleMidpointBmp:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 493
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->handle_circle_small:I

    invoke-static {v2}, Lcom/metamoji/cm/ImageUtils;->loadAssetBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_handleMidpointBmp:Landroid/graphics/Bitmap;

    .line 494
    :cond_1
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 495
    sget-object v3, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_handleMidpointBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 496
    sget-object v3, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_handleMidpointBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 497
    iget v3, v2, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v4

    .line 498
    sget-object v4, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_handleMidpointBmp:Landroid/graphics/Bitmap;

    sget-object v5, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_MIDPOINT:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/metamoji/rb/RbHandleStyle;->setImage(Landroid/graphics/Bitmap;Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;F)V

    .line 500
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->setRubberBandStyle(Lcom/metamoji/rb/RbPathStyle;Lcom/metamoji/rb/RbHandleStyle;)V

    return-void
.end method

.method public setHandleVisibility(Lcom/metamoji/rb/RbConstants$Activity;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_handleVisibility:Lcom/metamoji/rb/RbConstants$Activity;

    return-void
.end method

.method public setRubberBandStyle(Lcom/metamoji/rb/RbPathStyle;Lcom/metamoji/rb/RbHandleStyle;)V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Lcom/metamoji/rb/RbRubberBand;

    invoke-direct {v0}, Lcom/metamoji/rb/RbRubberBand;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    .line 467
    new-instance v1, Lcom/metamoji/cm/SizeF;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-direct {v1, v2, v2}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/metamoji/rb/RbRubberBand;->setMinSize(Lcom/metamoji/cm/SizeF;)V

    .line 468
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Lcom/metamoji/rb/RbRubberBand;->setHandleMargin(F)V

    .line 469
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    sget-object v1, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_ALL:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v1}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/rb/RbRubberBand;->setKeepAspectRatio(I)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {v0, p1}, Lcom/metamoji/rb/RbRubberBand;->setFrameStyle(Lcom/metamoji/rb/RbPathStyle;)V

    .line 473
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {p1, p2}, Lcom/metamoji/rb/RbRubberBand;->setHandleStyle(Lcom/metamoji/rb/RbHandleStyle;)V

    return-void
.end method

.method public setSelectRubberBand(Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_selectRubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;

    return-void
.end method

.method public sizeChanged(II)V
    .locals 0

    return-void
.end method

.method public touchCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 422
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 423
    invoke-interface {p1, v0}, Lcom/metamoji/nt/IAutoScrollSupporter;->setListener(Lcom/metamoji/nt/NtAutoScroller$Listener;)V

    .line 424
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

    invoke-interface {p1}, Lcom/metamoji/nt/IAutoScrollSupporter;->autoScrollingEnded()V

    .line 425
    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->cancelRubberBandOperation()V

    return-void
.end method

.method public touchEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 14

    const/4 v0, 0x0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 312
    invoke-interface {v1, v2}, Lcom/metamoji/nt/IAutoScrollSupporter;->setListener(Lcom/metamoji/nt/NtAutoScroller$Listener;)V

    .line 313
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

    invoke-interface {v1}, Lcom/metamoji/nt/IAutoScrollSupporter;->autoScrollingEnded()V

    .line 314
    iput-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

    .line 318
    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_tempMoveStartPosEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->isOperatingRubberBand()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 319
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->getTapPoint(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;

    move-result-object p1

    .line 321
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {v1, p1}, Lcom/metamoji/rb/RbRubberBand;->touchEnd(Landroid/graphics/PointF;)Lcom/metamoji/rb/RbRubberBandAction;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 325
    new-instance v1, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v1}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 328
    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_startBaseBounds:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->x:F

    .line 329
    iget-object v4, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_startBaseBounds:Lcom/metamoji/cm/RectEx;

    iget v4, v4, Lcom/metamoji/cm/RectEx;->y:F

    .line 330
    iget-object v5, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_startBaseBounds:Lcom/metamoji/cm/RectEx;

    iget v5, v5, Lcom/metamoji/cm/RectEx;->width:F

    .line 331
    iget-object v6, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_startBaseBounds:Lcom/metamoji/cm/RectEx;

    iget v6, v6, Lcom/metamoji/cm/RectEx;->height:F

    .line 335
    invoke-virtual {p1}, Lcom/metamoji/rb/RbRubberBandAction;->dx()F

    move-result v7

    .line 336
    invoke-virtual {p1}, Lcom/metamoji/rb/RbRubberBandAction;->dy()F

    move-result v8

    .line 337
    invoke-virtual {p1}, Lcom/metamoji/rb/RbRubberBandAction;->dw()F

    move-result v9

    .line 338
    invoke-virtual {p1}, Lcom/metamoji/rb/RbRubberBandAction;->dh()F

    move-result v10

    .line 339
    invoke-virtual {p1}, Lcom/metamoji/rb/RbRubberBandAction;->da()F

    move-result v11

    .line 342
    sget-object v12, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$1;->$SwitchMap$com$metamoji$rb$RbConstants$ActionType:[I

    invoke-virtual {p1}, Lcom/metamoji/rb/RbRubberBandAction;->type()Lcom/metamoji/rb/RbConstants$ActionType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/rb/RbConstants$ActionType;->ordinal()I

    move-result p1

    aget p1, v12, p1

    const/4 v12, 0x1

    if-eq p1, v12, :cond_7

    const/4 v13, 0x2

    if-eq p1, v13, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    goto :goto_3

    :cond_1
    cmpl-float p1, v2, v11

    if-eqz p1, :cond_8

    add-float/2addr v11, v2

    .line 368
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    goto :goto_4

    :cond_2
    cmpl-float p1, v2, v9

    if-nez p1, :cond_4

    cmpl-float p1, v2, v10

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v0

    goto :goto_1

    :cond_4
    :goto_0
    add-float/2addr v5, v9

    add-float/2addr v6, v10

    .line 355
    new-instance p1, Lcom/metamoji/cm/SizeF;

    invoke-direct {p1, v5, v6}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object p1, v1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    move p1, v12

    :goto_1
    cmpl-float v5, v2, v7

    if-nez v5, :cond_6

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v12, p1

    goto :goto_4

    :cond_6
    :goto_2
    add-float/2addr v3, v7

    add-float/2addr v4, v8

    .line 361
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, v1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    goto :goto_4

    :cond_7
    cmpl-float p1, v2, v7

    if-eqz p1, :cond_8

    cmpl-float p1, v2, v8

    if-eqz p1, :cond_8

    add-float/2addr v3, v7

    add-float/2addr v4, v8

    .line 347
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, v1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    goto :goto_4

    :cond_8
    :goto_3
    move v12, v0

    :goto_4
    if-eqz v12, :cond_9

    .line 376
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_selectRubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;

    invoke-interface {p1, v1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;->rubberBandChanged(Lcom/metamoji/df/controller/GeometricProps;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 378
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->updateRubberBand()V

    goto :goto_5

    .line 388
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->cancelRubberBandOperation()V

    goto :goto_5

    .line 393
    :cond_a
    iget-boolean v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_tempMoveStartPosEnabled:Z

    if-eqz v1, :cond_c

    .line 395
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 396
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    .line 397
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v1

    .line 398
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 399
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_selectRubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;

    invoke-interface {v1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;->get_point()Landroid/graphics/PointF;

    move-result-object v1

    .line 401
    iget v3, v1, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/PointF;->offset(FF)V

    .line 403
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_selectRubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;

    invoke-interface {v1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;->get_size()Lcom/metamoji/cm/SizeF;

    move-result-object v1

    .line 404
    iget v3, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_b

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_b

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, v1, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v1, v2, v1

    if-gez v1, :cond_b

    .line 405
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_selectRubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;

    invoke-interface {v1, p1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;->notifyInBoundsTapped(Landroid/graphics/PointF;)V

    goto :goto_5

    .line 407
    :cond_b
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_selectRubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;

    invoke-interface {v1, p1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;->notifyOutOfBoundsTapped(Landroid/graphics/PointF;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :cond_c
    :goto_5
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_tempMoveStartPosEnabled:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_tempMoveStartPosEnabled:Z

    .line 413
    throw p1
.end method

.method public touchMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 3

    .line 254
    iget-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_tempMoveStartPosEnabled:Z

    if-eqz v0, :cond_0

    .line 256
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_tempMoveStartPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 257
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_tempMoveStartPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 258
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x41100000    # 9.0f

    .line 259
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_tempMoveStartPosEnabled:Z

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->isOperatingRubberBand()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_tapPtOnTouchMove:Landroid/graphics/PointF;

    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/PointUtils;->set(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 269
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->BODY:Lcom/metamoji/rb/RbConstants$Activity;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

    if-ne v0, v1, :cond_2

    .line 270
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/PointUtils;->PointF(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 273
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    .line 275
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v1

    .line 278
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

    if-nez v2, :cond_1

    .line 279
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 280
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 282
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getAutoScrollSupporter()Lcom/metamoji/nt/IAutoScrollSupporter;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

    .line 283
    invoke-interface {v2, p0}, Lcom/metamoji/nt/IAutoScrollSupporter;->setListener(Lcom/metamoji/nt/NtAutoScroller$Listener;)V

    .line 284
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

    invoke-interface {v2, v0, v1}, Lcom/metamoji/nt/IAutoScrollSupporter;->autoScrollingBegan(Landroid/graphics/PointF;Landroid/view/View;)V

    goto :goto_0

    .line 286
    :cond_1
    invoke-interface {v2, v0, v1}, Lcom/metamoji/nt/IAutoScrollSupporter;->autoScrollingMoved(Landroid/graphics/PointF;Landroid/view/View;)V

    .line 290
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->getTapPoint(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;

    move-result-object p1

    .line 291
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {v0, p1}, Lcom/metamoji/rb/RbRubberBand;->touchMove(Landroid/graphics/PointF;)Lcom/metamoji/rb/RbRubberBandAction;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 293
    sget-object v0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$1;->$SwitchMap$com$metamoji$rb$RbConstants$ActionType:[I

    invoke-virtual {p1}, Lcom/metamoji/rb/RbRubberBandAction;->type()Lcom/metamoji/rb/RbConstants$ActionType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/rb/RbConstants$ActionType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :cond_3
    return-void
.end method

.method public touchStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 3

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_tempMoveStartPosEnabled:Z

    .line 212
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->NONE:Lcom/metamoji/rb/RbConstants$Activity;

    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

    .line 215
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->isShowRubberBand()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_tempMoveStartPosEnabled:Z

    .line 217
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->_tempMoveStartPos:Landroid/graphics/PointF;

    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/PointUtils;->set(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 219
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->getTapPoint(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;

    move-result-object p1

    .line 220
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {v0, p1}, Lcom/metamoji/rb/RbRubberBand;->touchStart(Landroid/graphics/PointF;)Lcom/metamoji/rb/RbRubberBandAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    sget-object v1, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$1;->$SwitchMap$com$metamoji$rb$RbConstants$Activity:[I

    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->getSelectRubberBand()Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;->hitTestRubberBand(Lcom/metamoji/rb/RbRubberBandAction;Landroid/graphics/PointF;)Lcom/metamoji/rb/RbConstants$Activity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/rb/RbConstants$Activity;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 243
    :pswitch_0
    invoke-virtual {v0}, Lcom/metamoji/rb/RbRubberBandAction;->activity()Lcom/metamoji/rb/RbConstants$Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateRubberBand()V
    .locals 9

    .line 516
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->isShowRubberBand()Z

    .line 519
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 521
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    .line 524
    invoke-direct {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->isVisibleRubberBand()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 529
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    if-nez v2, :cond_0

    .line 530
    new-instance v2, Lcom/metamoji/rb/RbRubberBand;

    invoke-direct {v2}, Lcom/metamoji/rb/RbRubberBand;-><init>()V

    iput-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    .line 534
    :cond_0
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandOverlayStage:Lcom/metamoji/df/sprite/Stage;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 536
    new-instance v2, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v2}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    .line 537
    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 538
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 539
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Stage;->getWidth()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 540
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Stage;->getHeight()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 543
    new-instance v2, Lcom/metamoji/df/sprite/Stage;

    invoke-direct {v2}, Lcom/metamoji/df/sprite/Stage;-><init>()V

    iput-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandOverlayStage:Lcom/metamoji/df/sprite/Stage;

    .line 544
    iget-object v4, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2, v4}, Lcom/metamoji/df/sprite/Stage;->setSprite(Lcom/metamoji/df/sprite/Sprite;)V

    .line 546
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getOverLayer()Lcom/metamoji/df/sprite/Layer;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandOverlayStage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Layer;->setStage(Lcom/metamoji/df/sprite/Stage;)V

    .line 553
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v0

    .line 557
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandOverlayStage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Stage;->setZoom(F)V

    .line 560
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_handleVisibility:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v2}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/rb/RbRubberBand;->setHandleVisibility(I)V

    .line 562
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_selectRubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, v2}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;->localToGlobal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 563
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_selectRubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;

    invoke-interface {v2}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;->get_size()Lcom/metamoji/cm/SizeF;

    move-result-object v2

    .line 573
    new-instance v3, Lcom/metamoji/cm/RectEx;

    invoke-direct {v3, v1, v2}, Lcom/metamoji/cm/RectEx;-><init>(Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;)V

    .line 574
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    const-wide/16 v4, 0x0

    double-to-float v2, v4

    invoke-virtual {v1, v2}, Lcom/metamoji/rb/RbRubberBand;->setAngle(F)V

    .line 576
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {v1, v3}, Lcom/metamoji/rb/RbRubberBand;->setBaseBounds(Lcom/metamoji/cm/RectEx;)V

    .line 580
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_startBaseBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 582
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    new-instance v2, Lcom/metamoji/cm/RectEx;

    iget v4, v3, Lcom/metamoji/cm/RectEx;->x:F

    iget v5, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_contentOffset:F

    div-float/2addr v5, v0

    sub-float/2addr v4, v5

    iget v5, v3, Lcom/metamoji/cm/RectEx;->y:F

    iget v6, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_contentOffset:F

    div-float/2addr v6, v0

    sub-float/2addr v5, v6

    iget v6, v3, Lcom/metamoji/cm/RectEx;->width:F

    iget v7, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_contentOffset:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    div-float/2addr v7, v0

    add-float/2addr v6, v7

    iget v3, v3, Lcom/metamoji/cm/RectEx;->height:F

    iget v7, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_contentOffset:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v0

    add-float/2addr v3, v7

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lcom/metamoji/rb/RbRubberBand;->setContentBounds(Lcom/metamoji/cm/RectEx;)V

    .line 588
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {v1, v0}, Lcom/metamoji/rb/RbRubberBand;->setZoom(F)V

    .line 593
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {v1}, Lcom/metamoji/rb/RbRubberBand;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    goto :goto_0

    .line 597
    :cond_2
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v1, :cond_4

    .line 599
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {v2}, Lcom/metamoji/rb/RbRubberBand;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 602
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandOverlayStage:Lcom/metamoji/df/sprite/Stage;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 604
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->resetOverLayer()V

    .line 606
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandOverlayStage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Stage;->setSprite(Lcom/metamoji/df/sprite/Sprite;)V

    .line 607
    iput-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandOverlayStage:Lcom/metamoji/df/sprite/Stage;

    .line 610
    :cond_3
    iput-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    .line 616
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->isShowRubberBand()Z

    .line 626
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->isShowRubberBand()Z

    move-result v0

    .line 640
    iget-boolean v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_listener_registered:Z

    if-eqz v0, :cond_6

    if-nez v1, :cond_5

    const/4 v0, 0x1

    .line 629
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_listener_registered:Z

    .line 630
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    .line 631
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->addTouchListener(Lcom/metamoji/df/sprite/TouchListener;)V

    .line 632
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->addLongPressListener(Lcom/metamoji/df/sprite/LongPressListener;)V

    .line 633
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->addViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    .line 635
    :cond_5
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_selectRubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;

    invoke-interface {v0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;->contextShowDelay()V

    return-void

    :cond_6
    if-eqz v1, :cond_7

    const/4 v0, 0x0

    .line 641
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_listener_registered:Z

    .line 642
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    .line 643
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeTouchListener(Lcom/metamoji/df/sprite/TouchListener;)V

    .line 644
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeLongPressListener(Lcom/metamoji/df/sprite/LongPressListener;)V

    .line 645
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    :cond_7
    return-void
.end method

.method public updateRubberBandWithUpdate()V
    .locals 0

    .line 655
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->updateRubberBand()V

    return-void
.end method

.method public willAutoScroll(FF)V
    .locals 0

    return-void
.end method

.method public zoomChanged()V
    .locals 0

    .line 807
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->updateRubberBand()V

    return-void
.end method

.method public zoomChanging()V
    .locals 0

    return-void
.end method

.method public zoomEnd(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 777
    invoke-direct {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->zoomEnd()V

    :cond_0
    return-void
.end method

.method public zoomReboundEnd(Z)V
    .locals 0

    .line 799
    invoke-direct {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->zoomEnd()V

    return-void
.end method

.method public zoomReboundStart()V
    .locals 0

    return-void
.end method

.method public zoomStart()V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/rb/RbRubberBand;->setVisible(Z)V

    return-void
.end method
