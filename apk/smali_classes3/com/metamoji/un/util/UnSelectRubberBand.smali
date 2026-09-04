.class public Lcom/metamoji/un/util/UnSelectRubberBand;
.super Ljava/lang/Object;
.source "UnSelectRubberBand.java"

# interfaces
.implements Lcom/metamoji/df/sprite/TouchListener;
.implements Lcom/metamoji/df/sprite/LongPressListener;
.implements Lcom/metamoji/df/sprite/ViewportListener;
.implements Lcom/metamoji/nt/NtAutoScroller$Listener;
.implements Lcom/metamoji/df/sprite/ContextClickListener2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;,
        Lcom/metamoji/un/util/UnSelectRubberBand$UnSelectRubberBandDisplay;
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

.field m_selectRubberBand:Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

.field m_startBaseBounds:Lcom/metamoji/cm/RectEx;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 98
    iput v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->RUBBERBAND_SPRITE_CONTENTOFFSET:I

    const/high16 v0, 0x41100000    # 9.0f

    .line 198
    iput v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->MOVE_THRESHOLD:F

    .line 200
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->_tempMoveStartPos:Landroid/graphics/PointF;

    .line 203
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->_tapPtOnTouchMove:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    .line 165
    iput-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandOverlayStage:Lcom/metamoji/df/sprite/Stage;

    .line 166
    iput-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    .line 167
    sget-object v1, Lcom/metamoji/rb/RbConstants$Activity;->NONE:Lcom/metamoji/rb/RbConstants$Activity;

    iput-object v1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

    .line 168
    sget-object v1, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_ALL:Lcom/metamoji/rb/RbConstants$Activity;

    iput-object v1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_handleVisibility:Lcom/metamoji/rb/RbConstants$Activity;

    .line 169
    iput-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_selectRubberBand:Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

    .line 170
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 171
    iput v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_contentOffset:F

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_listener_registered:Z

    .line 173
    iput-boolean v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_noRubberBand:Z

    .line 174
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_startBaseBounds:Lcom/metamoji/cm/RectEx;

    return-void
.end method

.method private isVisibleRubberBand()Z
    .locals 1

    .line 690
    iget-boolean v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_noRubberBand:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_selectRubberBand:Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

    invoke-interface {v0}, Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;->isVisibleRubberBand()Z

    move-result v0

    return v0
.end method

.method private zoomEnd()V
    .locals 2

    .line 813
    invoke-virtual {p0}, Lcom/metamoji/un/util/UnSelectRubberBand;->updateRubberBand()V

    .line 814
    iget-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/rb/RbRubberBand;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public cancelRubberBandOperation()V
    .locals 1

    .line 715
    invoke-virtual {p0}, Lcom/metamoji/un/util/UnSelectRubberBand;->isOperatingRubberBand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->NONE:Lcom/metamoji/rb/RbConstants$Activity;

    iput-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

    .line 719
    invoke-virtual {p0}, Lcom/metamoji/un/util/UnSelectRubberBand;->updateRubberBand()V

    :cond_0
    return-void
.end method

.method public contextClick(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 5

    .line 449
    iget-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_selectRubberBand:Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

    invoke-interface {v0}, Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;->getRubberBandUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v2

    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 451
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 454
    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    cmpg-float v2, v3, v2

    const/4 v4, 0x1

    if-gtz v2, :cond_0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getWidth()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getHeight()F

    move-result v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    .line 455
    iget-object p1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_selectRubberBand:Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

    invoke-interface {p1, v1, v4}, Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;->notifyInBoundsTapped(Landroid/graphics/PointF;Z)V

    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_selectRubberBand:Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

    invoke-interface {v0, p1, v4}, Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;->notifyOutOfBoundsTapped(Landroid/graphics/PointF;Z)V

    return-void
.end method

.method public didAutoScroll(FF)V
    .locals 2

    .line 861
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->_tapPtOnTouchMove:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p1

    iget-object p1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->_tapPtOnTouchMove:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 862
    iget-object p1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_selectRubberBand:Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

    invoke-interface {p1}, Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;->getRubberBandUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    .line 863
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object p2

    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 864
    iget-object p2, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {p2, p1}, Lcom/metamoji/rb/RbRubberBand;->touchMove(Landroid/graphics/PointF;)Lcom/metamoji/rb/RbRubberBandAction;

    return-void
.end method

.method public disposeRubberBand()V
    .locals 1

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_noRubberBand:Z

    .line 184
    invoke-virtual {p0}, Lcom/metamoji/un/util/UnSelectRubberBand;->updateRubberBand()V

    return-void
.end method

.method getContentOffset()F
    .locals 1

    .line 149
    iget v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_contentOffset:F

    return v0
.end method

.method public getHandleVisibility()Lcom/metamoji/rb/RbConstants$Activity;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_handleVisibility:Lcom/metamoji/rb/RbConstants$Activity;

    return-object v0
.end method

.method public getSelectRubberBand()Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_selectRubberBand:Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

    return-object v0
.end method

.method getTapPoint(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_selectRubberBand:Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

    invoke-interface {v0}, Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;->getRubberBandUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public isOperatingRubberBand()Z
    .locals 2

    .line 710
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->NONE:Lcom/metamoji/rb/RbConstants$Activity;

    iget-object v1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowRubberBand()Z
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public longPressCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 2

    .line 484
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->BODY:Lcom/metamoji/rb/RbConstants$Activity;

    iget-object v1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

    if-ne v0, v1, :cond_0

    return-void

    .line 487
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/util/UnSelectRubberBand;->touchCancel(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public longPressEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 2

    .line 476
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->BODY:Lcom/metamoji/rb/RbConstants$Activity;

    iget-object v1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

    if-ne v0, v1, :cond_0

    return-void

    .line 479
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/util/UnSelectRubberBand;->touchEnd(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public longPressMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 2

    .line 468
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->BODY:Lcom/metamoji/rb/RbConstants$Activity;

    iget-object v1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

    if-ne v0, v1, :cond_0

    return-void

    .line 471
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/util/UnSelectRubberBand;->touchMove(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public longPressStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lcom/metamoji/un/util/UnSelectRubberBand;->touchStart(Lcom/metamoji/df/sprite/TouchEvent;)V

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

    .line 153
    iput p1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_contentOffset:F

    return-void
.end method

.method public setDefaultRubberBandStyle()V
    .locals 7

    .line 508
    new-instance v0, Lcom/metamoji/rb/RbPathStyle;

    invoke-direct {v0}, Lcom/metamoji/rb/RbPathStyle;-><init>()V

    .line 509
    new-instance v1, Lcom/metamoji/rb/RbHandleStyle;

    invoke-direct {v1}, Lcom/metamoji/rb/RbHandleStyle;-><init>()V

    .line 510
    sget-object v2, Lcom/metamoji/un/util/UnSelectRubberBand;->m_handleCornerBmp:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 511
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->handle_circle:I

    invoke-static {v2}, Lcom/metamoji/cm/ImageUtils;->loadAssetBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/metamoji/un/util/UnSelectRubberBand;->m_handleCornerBmp:Landroid/graphics/Bitmap;

    .line 514
    :cond_0
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 515
    sget-object v3, Lcom/metamoji/un/util/UnSelectRubberBand;->m_handleCornerBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 516
    sget-object v3, Lcom/metamoji/un/util/UnSelectRubberBand;->m_handleCornerBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 517
    iget v3, v2, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x41700000    # 15.0f

    mul-float/2addr v3, v5

    const/high16 v5, 0x41480000    # 12.5f

    div-float/2addr v3, v5

    .line 518
    sget-object v5, Lcom/metamoji/un/util/UnSelectRubberBand;->m_handleCornerBmp:Landroid/graphics/Bitmap;

    sget-object v6, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_CORNER:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v1, v5, v6, v2, v3}, Lcom/metamoji/rb/RbHandleStyle;->setImage(Landroid/graphics/Bitmap;Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;F)V

    .line 520
    sget-object v2, Lcom/metamoji/un/util/UnSelectRubberBand;->m_handleMidpointBmp:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 521
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->handle_circle_small:I

    invoke-static {v2}, Lcom/metamoji/cm/ImageUtils;->loadAssetBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/metamoji/un/util/UnSelectRubberBand;->m_handleMidpointBmp:Landroid/graphics/Bitmap;

    .line 522
    :cond_1
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 523
    sget-object v3, Lcom/metamoji/un/util/UnSelectRubberBand;->m_handleMidpointBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 524
    sget-object v3, Lcom/metamoji/un/util/UnSelectRubberBand;->m_handleMidpointBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 525
    iget v3, v2, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v4

    .line 526
    sget-object v4, Lcom/metamoji/un/util/UnSelectRubberBand;->m_handleMidpointBmp:Landroid/graphics/Bitmap;

    sget-object v5, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_MIDPOINT:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/metamoji/rb/RbHandleStyle;->setImage(Landroid/graphics/Bitmap;Lcom/metamoji/rb/RbConstants$Activity;Landroid/graphics/PointF;F)V

    .line 528
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/util/UnSelectRubberBand;->setRubberBandStyle(Lcom/metamoji/rb/RbPathStyle;Lcom/metamoji/rb/RbHandleStyle;)V

    return-void
.end method

.method public setHandleVisibility(Lcom/metamoji/rb/RbConstants$Activity;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_handleVisibility:Lcom/metamoji/rb/RbConstants$Activity;

    return-void
.end method

.method public setRubberBandStyle(Lcom/metamoji/rb/RbPathStyle;Lcom/metamoji/rb/RbHandleStyle;)V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Lcom/metamoji/rb/RbRubberBand;

    invoke-direct {v0}, Lcom/metamoji/rb/RbRubberBand;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    const/high16 v1, 0x41700000    # 15.0f

    .line 497
    invoke-virtual {v0, v1}, Lcom/metamoji/rb/RbRubberBand;->setHandleMargin(F)V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {v0, p1}, Lcom/metamoji/rb/RbRubberBand;->setFrameStyle(Lcom/metamoji/rb/RbPathStyle;)V

    .line 501
    iget-object p1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {p1, p2}, Lcom/metamoji/rb/RbRubberBand;->setHandleStyle(Lcom/metamoji/rb/RbHandleStyle;)V

    return-void
.end method

.method public setSelectRubberBand(Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_selectRubberBand:Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

    return-void
.end method

.method public sizeChanged(II)V
    .locals 0

    return-void
.end method

.method public touchCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 438
    iget-object p1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->_autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 439
    invoke-interface {p1, v0}, Lcom/metamoji/nt/IAutoScrollSupporter;->setListener(Lcom/metamoji/nt/NtAutoScroller$Listener;)V

    .line 440
    iget-object p1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->_autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

    invoke-interface {p1}, Lcom/metamoji/nt/IAutoScrollSupporter;->autoScrollingEnded()V

    .line 441
    iput-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->_autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/util/UnSelectRubberBand;->cancelRubberBandOperation()V

    return-void
.end method

.method public touchEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 20

    move-object/from16 v1, p0

    .line 313
    :try_start_0
    iget-object v0, v1, Lcom/metamoji/un/util/UnSelectRubberBand;->_autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 314
    invoke-interface {v0, v3}, Lcom/metamoji/nt/IAutoScrollSupporter;->setListener(Lcom/metamoji/nt/NtAutoScroller$Listener;)V

    .line 315
    iget-object v0, v1, Lcom/metamoji/un/util/UnSelectRubberBand;->_autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

    invoke-interface {v0}, Lcom/metamoji/nt/IAutoScrollSupporter;->autoScrollingEnded()V

    .line 316
    iput-object v3, v1, Lcom/metamoji/un/util/UnSelectRubberBand;->_autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

    .line 320
    :cond_0
    iget-boolean v0, v1, Lcom/metamoji/un/util/UnSelectRubberBand;->_tempMoveStartPosEnabled:Z

    if-nez v0, :cond_a

    invoke-virtual {v1}, Lcom/metamoji/un/util/UnSelectRubberBand;->isOperatingRubberBand()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 321
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/un/util/UnSelectRubberBand;->getTapPoint(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;

    move-result-object v0

    .line 323
    iget-object v4, v1, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {v4, v0}, Lcom/metamoji/rb/RbRubberBand;->touchEnd(Landroid/graphics/PointF;)Lcom/metamoji/rb/RbRubberBandAction;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 327
    new-instance v4, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v4}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 329
    new-instance v5, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v5}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 332
    iget-object v6, v1, Lcom/metamoji/un/util/UnSelectRubberBand;->m_startBaseBounds:Lcom/metamoji/cm/RectEx;

    iget v6, v6, Lcom/metamoji/cm/RectEx;->x:F

    .line 333
    iget-object v7, v1, Lcom/metamoji/un/util/UnSelectRubberBand;->m_startBaseBounds:Lcom/metamoji/cm/RectEx;

    iget v7, v7, Lcom/metamoji/cm/RectEx;->y:F

    .line 334
    iget-object v8, v1, Lcom/metamoji/un/util/UnSelectRubberBand;->m_startBaseBounds:Lcom/metamoji/cm/RectEx;

    iget v8, v8, Lcom/metamoji/cm/RectEx;->width:F

    .line 335
    iget-object v9, v1, Lcom/metamoji/un/util/UnSelectRubberBand;->m_startBaseBounds:Lcom/metamoji/cm/RectEx;

    iget v9, v9, Lcom/metamoji/cm/RectEx;->height:F

    .line 337
    iget-object v10, v1, Lcom/metamoji/un/util/UnSelectRubberBand;->m_selectRubberBand:Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

    invoke-interface {v10}, Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;->getRubberBandUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v10

    .line 338
    const-string/jumbo v11, "x"

    const-wide/16 v12, 0x0

    invoke-interface {v10, v11, v12, v13}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v14

    double-to-float v11, v14

    .line 339
    const-string/jumbo v14, "y"

    invoke-interface {v10, v14, v12, v13}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v14

    double-to-float v14, v14

    .line 340
    const-string/jumbo v15, "width"

    const/16 v16, 0x0

    invoke-interface {v10, v15, v12, v13}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 341
    const-string v3, "height"

    move v15, v2

    invoke-interface {v10, v3, v12, v13}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 342
    const-string/jumbo v3, "rotation"

    invoke-interface {v10, v3, v12, v13}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v12

    double-to-float v3, v12

    .line 344
    invoke-virtual {v0}, Lcom/metamoji/rb/RbRubberBandAction;->dx()F

    move-result v10

    .line 345
    invoke-virtual {v0}, Lcom/metamoji/rb/RbRubberBandAction;->dy()F

    move-result v12

    .line 346
    invoke-virtual {v0}, Lcom/metamoji/rb/RbRubberBandAction;->dw()F

    move-result v13

    .line 347
    invoke-virtual {v0}, Lcom/metamoji/rb/RbRubberBandAction;->dh()F

    move-result v17

    .line 348
    invoke-virtual {v0}, Lcom/metamoji/rb/RbRubberBandAction;->da()F

    move-result v18

    .line 351
    sget-object v19, Lcom/metamoji/un/util/UnSelectRubberBand$1;->$SwitchMap$com$metamoji$rb$RbConstants$ActionType:[I

    invoke-virtual {v0}, Lcom/metamoji/rb/RbRubberBandAction;->type()Lcom/metamoji/rb/RbConstants$ActionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/rb/RbConstants$ActionType;->ordinal()I

    move-result v0

    aget v0, v19, v0

    move/from16 v19, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_3

    :cond_1
    cmpl-float v0, v16, v18

    if-eqz v0, :cond_7

    add-float v3, v3, v18

    .line 386
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v5, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    .line 387
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v4, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    :goto_0
    const/4 v0, 0x1

    goto :goto_4

    :cond_2
    cmpl-float v0, v16, v13

    if-nez v0, :cond_4

    cmpl-float v0, v16, v17

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    add-float/2addr v8, v13

    add-float v9, v9, v17

    add-float v2, v15, v13

    add-float v0, v19, v17

    .line 369
    new-instance v3, Lcom/metamoji/cm/SizeF;

    invoke-direct {v3, v8, v9}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v3, v5, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 370
    new-instance v3, Lcom/metamoji/cm/SizeF;

    invoke-direct {v3, v2, v0}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v3, v4, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    const/4 v0, 0x1

    :goto_2
    cmpl-float v2, v16, v10

    if-nez v2, :cond_5

    cmpl-float v2, v16, v12

    if-eqz v2, :cond_8

    :cond_5
    add-float/2addr v6, v10

    add-float/2addr v7, v12

    add-float/2addr v11, v10

    add-float/2addr v14, v12

    .line 378
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, v5, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 379
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v11, v14}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, v4, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    goto :goto_0

    :cond_6
    cmpl-float v0, v16, v10

    if-eqz v0, :cond_7

    cmpl-float v0, v16, v12

    if-eqz v0, :cond_7

    add-float/2addr v6, v10

    add-float/2addr v7, v12

    add-float/2addr v11, v10

    add-float/2addr v14, v12

    .line 358
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, v5, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 359
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v11, v14}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, v4, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    goto :goto_0

    :cond_7
    :goto_3
    const/4 v0, 0x0

    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    .line 395
    iget-object v0, v1, Lcom/metamoji/un/util/UnSelectRubberBand;->m_selectRubberBand:Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

    invoke-interface {v0, v4, v5}, Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;->rubberBandChanged(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/GeometricProps;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 397
    invoke-virtual {v1}, Lcom/metamoji/un/util/UnSelectRubberBand;->updateRubberBand()V

    goto :goto_5

    .line 407
    :cond_9
    invoke-virtual {v1}, Lcom/metamoji/un/util/UnSelectRubberBand;->cancelRubberBandOperation()V

    goto :goto_5

    :cond_a
    const/16 v16, 0x0

    .line 412
    iget-boolean v0, v1, Lcom/metamoji/un/util/UnSelectRubberBand;->_tempMoveStartPosEnabled:Z

    if-eqz v0, :cond_c

    .line 415
    iget-object v0, v1, Lcom/metamoji/un/util/UnSelectRubberBand;->m_selectRubberBand:Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

    invoke-interface {v0}, Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;->getRubberBandUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 417
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 420
    iget v4, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v16, v4

    if-gtz v4, :cond_b

    iget v4, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v16, v4

    if-gtz v4, :cond_b

    iget v4, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getWidth()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_b

    iget v4, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getHeight()F

    move-result v0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_b

    .line 421
    iget-object v0, v1, Lcom/metamoji/un/util/UnSelectRubberBand;->m_selectRubberBand:Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

    const/4 v2, 0x0

    invoke-interface {v0, v3, v2}, Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;->notifyInBoundsTapped(Landroid/graphics/PointF;Z)V

    goto :goto_5

    .line 423
    :cond_b
    iget-object v0, v1, Lcom/metamoji/un/util/UnSelectRubberBand;->m_selectRubberBand:Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;->notifyOutOfBoundsTapped(Landroid/graphics/PointF;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    :goto_5
    const/4 v2, 0x0

    .line 428
    iput-boolean v2, v1, Lcom/metamoji/un/util/UnSelectRubberBand;->_tempMoveStartPosEnabled:Z

    return-void

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/metamoji/un/util/UnSelectRubberBand;->_tempMoveStartPosEnabled:Z

    .line 429
    throw v0
.end method

.method public touchMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 3

    .line 250
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->isHistorical()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 254
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->_tempMoveStartPosEnabled:Z

    if-eqz v0, :cond_1

    .line 256
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->_tempMoveStartPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 257
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->_tempMoveStartPos:Landroid/graphics/PointF;

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

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->_tempMoveStartPosEnabled:Z

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/util/UnSelectRubberBand;->isOperatingRubberBand()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    iget-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->_tapPtOnTouchMove:Landroid/graphics/PointF;

    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/PointUtils;->set(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 269
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->BODY:Lcom/metamoji/rb/RbConstants$Activity;

    iget-object v1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

    if-ne v0, v1, :cond_3

    .line 270
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/PointUtils;->PointF(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_selectRubberBand:Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

    invoke-interface {v1}, Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;->getRubberBandUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v1

    .line 274
    iget-object v2, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->_autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

    if-nez v2, :cond_2

    .line 275
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 276
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 278
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getAutoScrollSupporter()Lcom/metamoji/nt/IAutoScrollSupporter;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->_autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

    .line 279
    invoke-interface {v2, p0}, Lcom/metamoji/nt/IAutoScrollSupporter;->setListener(Lcom/metamoji/nt/NtAutoScroller$Listener;)V

    .line 280
    iget-object v2, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->_autoScrollSupporter:Lcom/metamoji/nt/IAutoScrollSupporter;

    invoke-interface {v2, v0, v1}, Lcom/metamoji/nt/IAutoScrollSupporter;->autoScrollingBegan(Landroid/graphics/PointF;Landroid/view/View;)V

    goto :goto_0

    .line 282
    :cond_2
    invoke-interface {v2, v0, v1}, Lcom/metamoji/nt/IAutoScrollSupporter;->autoScrollingMoved(Landroid/graphics/PointF;Landroid/view/View;)V

    .line 286
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/util/UnSelectRubberBand;->getTapPoint(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;

    move-result-object p1

    .line 287
    iget-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {v0, p1}, Lcom/metamoji/rb/RbRubberBand;->touchMove(Landroid/graphics/PointF;)Lcom/metamoji/rb/RbRubberBandAction;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 295
    sget-object v0, Lcom/metamoji/un/util/UnSelectRubberBand$1;->$SwitchMap$com$metamoji$rb$RbConstants$ActionType:[I

    invoke-virtual {p1}, Lcom/metamoji/rb/RbRubberBandAction;->type()Lcom/metamoji/rb/RbConstants$ActionType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/rb/RbConstants$ActionType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :cond_4
    :goto_1
    return-void
.end method

.method public touchStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 3

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->_tempMoveStartPosEnabled:Z

    .line 208
    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->NONE:Lcom/metamoji/rb/RbConstants$Activity;

    iput-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

    .line 211
    invoke-virtual {p0}, Lcom/metamoji/un/util/UnSelectRubberBand;->isShowRubberBand()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->_tempMoveStartPosEnabled:Z

    .line 213
    iget-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->_tempMoveStartPos:Landroid/graphics/PointF;

    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/PointUtils;->set(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/metamoji/un/util/UnSelectRubberBand;->getTapPoint(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;

    move-result-object p1

    .line 216
    iget-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {v0, p1}, Lcom/metamoji/rb/RbRubberBand;->touchStart(Landroid/graphics/PointF;)Lcom/metamoji/rb/RbRubberBandAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    sget-object v1, Lcom/metamoji/un/util/UnSelectRubberBand$1;->$SwitchMap$com$metamoji$rb$RbConstants$Activity:[I

    invoke-virtual {p0}, Lcom/metamoji/un/util/UnSelectRubberBand;->getSelectRubberBand()Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;->hitTestRubberBand(Lcom/metamoji/rb/RbRubberBandAction;Landroid/graphics/PointF;)Lcom/metamoji/rb/RbConstants$Activity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/rb/RbConstants$Activity;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 239
    :pswitch_0
    invoke-virtual {v0}, Lcom/metamoji/rb/RbRubberBandAction;->activity()Lcom/metamoji/rb/RbConstants$Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandActivity:Lcom/metamoji/rb/RbConstants$Activity;

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
    .locals 17

    move-object/from16 v0, p0

    .line 542
    invoke-virtual {v0}, Lcom/metamoji/un/util/UnSelectRubberBand;->isShowRubberBand()Z

    .line 544
    iget-object v1, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_selectRubberBand:Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

    invoke-interface {v1}, Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;->getRubberBandUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    .line 545
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v2

    .line 546
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v3

    .line 549
    invoke-direct {v0}, Lcom/metamoji/un/util/UnSelectRubberBand;->isVisibleRubberBand()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 551
    iget-object v4, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    if-nez v4, :cond_0

    .line 552
    new-instance v4, Lcom/metamoji/rb/RbRubberBand;

    invoke-direct {v4}, Lcom/metamoji/rb/RbRubberBand;-><init>()V

    iput-object v4, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    .line 556
    :cond_0
    iget-object v4, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandOverlayStage:Lcom/metamoji/df/sprite/Stage;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 558
    new-instance v4, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v4}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object v4, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    .line 559
    invoke-virtual {v4, v5}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 560
    iget-object v4, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v4, v5}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 561
    iget-object v4, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Stage;->getWidth()F

    move-result v6

    invoke-virtual {v4, v6}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 562
    iget-object v4, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Stage;->getHeight()F

    move-result v6

    invoke-virtual {v4, v6}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 565
    new-instance v4, Lcom/metamoji/df/sprite/Stage;

    invoke-direct {v4}, Lcom/metamoji/df/sprite/Stage;-><init>()V

    iput-object v4, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandOverlayStage:Lcom/metamoji/df/sprite/Stage;

    .line 566
    iget-object v6, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v4, v6}, Lcom/metamoji/df/sprite/Stage;->setSprite(Lcom/metamoji/df/sprite/Sprite;)V

    .line 568
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->getOverLayer()Lcom/metamoji/df/sprite/Layer;

    move-result-object v2

    iget-object v4, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandOverlayStage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v2, v4}, Lcom/metamoji/df/sprite/Layer;->setStage(Lcom/metamoji/df/sprite/Stage;)V

    .line 575
    :cond_1
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v2

    .line 579
    iget-object v3, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandOverlayStage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v3, v2}, Lcom/metamoji/df/sprite/Stage;->setZoom(F)V

    .line 582
    iget-object v3, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    iget-object v4, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_handleVisibility:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {v4}, Lcom/metamoji/rb/RbConstants$Activity;->toValule()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/metamoji/rb/RbRubberBand;->setHandleVisibility(I)V

    .line 584
    iget-object v3, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_selectRubberBand:Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;

    invoke-interface {v3}, Lcom/metamoji/un/util/UnSelectRubberBand$IUnSelectRubberBandProc;->getRubberBandUnitSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/metamoji/df/sprite/Sprite;->localToGlobal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 585
    new-instance v4, Lcom/metamoji/cm/SizeF;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getWidth()F

    move-result v5

    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getHeight()F

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    .line 586
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getRotation()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v7, v7, v5

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v7, :cond_2

    .line 589
    new-instance v7, Landroid/graphics/PointF;

    iget v9, v4, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr v9, v8

    iget v10, v4, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v10, v8

    invoke-direct {v7, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 590
    new-instance v9, Landroid/graphics/PointF;

    iget v10, v7, Landroid/graphics/PointF;->x:F

    float-to-double v10, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    iget v12, v7, Landroid/graphics/PointF;->y:F

    float-to-double v12, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-float v10, v10

    iget v11, v7, Landroid/graphics/PointF;->x:F

    float-to-double v11, v11

    .line 591
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    iget v13, v7, Landroid/graphics/PointF;->y:F

    float-to-double v13, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    double-to-float v11, v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 592
    iget v10, v3, Landroid/graphics/PointF;->x:F

    iget v11, v9, Landroid/graphics/PointF;->x:F

    iget v12, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v3, Landroid/graphics/PointF;->x:F

    .line 593
    iget v10, v3, Landroid/graphics/PointF;->y:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v7

    add-float/2addr v10, v9

    iput v10, v3, Landroid/graphics/PointF;->y:F

    .line 595
    :cond_2
    new-instance v7, Lcom/metamoji/cm/RectEx;

    invoke-direct {v7, v3, v4}, Lcom/metamoji/cm/RectEx;-><init>(Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;)V

    .line 596
    iget-object v3, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    double-to-float v4, v5

    invoke-virtual {v3, v4}, Lcom/metamoji/rb/RbRubberBand;->setAngle(F)V

    .line 598
    iget-object v3, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {v3, v7}, Lcom/metamoji/rb/RbRubberBand;->setBaseBounds(Lcom/metamoji/cm/RectEx;)V

    .line 602
    iget-object v3, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_startBaseBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v3, v7}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 604
    iget-object v3, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    new-instance v4, Lcom/metamoji/cm/RectEx;

    iget v5, v7, Lcom/metamoji/cm/RectEx;->x:F

    iget v6, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_contentOffset:F

    div-float/2addr v6, v2

    sub-float/2addr v5, v6

    iget v6, v7, Lcom/metamoji/cm/RectEx;->y:F

    iget v9, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_contentOffset:F

    div-float/2addr v9, v2

    sub-float/2addr v6, v9

    iget v9, v7, Lcom/metamoji/cm/RectEx;->width:F

    iget v10, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_contentOffset:F

    mul-float/2addr v10, v8

    div-float/2addr v10, v2

    add-float/2addr v9, v10

    iget v7, v7, Lcom/metamoji/cm/RectEx;->height:F

    iget v10, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_contentOffset:F

    mul-float/2addr v10, v8

    div-float/2addr v10, v2

    add-float/2addr v7, v10

    invoke-direct {v4, v5, v6, v9, v7}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Lcom/metamoji/rb/RbRubberBand;->setContentBounds(Lcom/metamoji/cm/RectEx;)V

    .line 610
    iget-object v3, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {v3, v2}, Lcom/metamoji/rb/RbRubberBand;->setZoom(F)V

    .line 615
    iget-object v2, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v3, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {v3}, Lcom/metamoji/rb/RbRubberBand;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    goto :goto_0

    .line 619
    :cond_3
    iget-object v3, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v3, :cond_5

    .line 621
    iget-object v4, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    invoke-virtual {v4}, Lcom/metamoji/rb/RbRubberBand;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 624
    iget-object v3, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandOverlayStage:Lcom/metamoji/df/sprite/Stage;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 626
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->resetOverLayer()V

    .line 628
    iget-object v2, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandOverlayStage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v2, v4}, Lcom/metamoji/df/sprite/Stage;->setSprite(Lcom/metamoji/df/sprite/Sprite;)V

    .line 629
    iput-object v4, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandOverlayStage:Lcom/metamoji/df/sprite/Stage;

    .line 632
    :cond_4
    iput-object v4, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBandOverlaySprite:Lcom/metamoji/df/sprite/Sprite;

    .line 637
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/un/util/UnSelectRubberBand;->isShowRubberBand()Z

    .line 647
    invoke-virtual {v0}, Lcom/metamoji/un/util/UnSelectRubberBand;->isShowRubberBand()Z

    move-result v2

    .line 661
    iget-boolean v3, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_listener_registered:Z

    if-eqz v2, :cond_6

    if-nez v3, :cond_7

    const/4 v2, 0x1

    .line 650
    iput-boolean v2, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_listener_registered:Z

    .line 651
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/nt/INtAppFrame;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v1

    .line 652
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtInteractiveEventManager;->addTouchListener(Lcom/metamoji/df/sprite/TouchListener;)V

    .line 653
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtInteractiveEventManager;->addLongPressListener(Lcom/metamoji/df/sprite/LongPressListener;)V

    .line 654
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtInteractiveEventManager;->addViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    .line 655
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtInteractiveEventManager;->addContextClickListener(Lcom/metamoji/df/sprite/ContextClickListener2;)V

    return-void

    :cond_6
    if-eqz v3, :cond_7

    const/4 v2, 0x0

    .line 662
    iput-boolean v2, v0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_listener_registered:Z

    .line 663
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/nt/INtAppFrame;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v1

    .line 664
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeTouchListener(Lcom/metamoji/df/sprite/TouchListener;)V

    .line 665
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeLongPressListener(Lcom/metamoji/df/sprite/LongPressListener;)V

    .line 666
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    .line 667
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeContextClickListener(Lcom/metamoji/df/sprite/ContextClickListener2;)V

    :cond_7
    return-void
.end method

.method public updateRubberBandWithUpdate()V
    .locals 0

    .line 677
    invoke-virtual {p0}, Lcom/metamoji/un/util/UnSelectRubberBand;->updateRubberBand()V

    return-void
.end method

.method public willAutoScroll(FF)V
    .locals 0

    return-void
.end method

.method public zoomChanged()V
    .locals 0

    .line 839
    invoke-virtual {p0}, Lcom/metamoji/un/util/UnSelectRubberBand;->updateRubberBand()V

    return-void
.end method

.method public zoomChanging()V
    .locals 0

    return-void
.end method

.method public zoomEnd(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 809
    invoke-direct {p0}, Lcom/metamoji/un/util/UnSelectRubberBand;->zoomEnd()V

    :cond_0
    return-void
.end method

.method public zoomReboundEnd(Z)V
    .locals 0

    .line 831
    invoke-direct {p0}, Lcom/metamoji/un/util/UnSelectRubberBand;->zoomEnd()V

    return-void
.end method

.method public zoomReboundStart()V
    .locals 0

    return-void
.end method

.method public zoomStart()V
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand;->m_rubberBand:Lcom/metamoji/rb/RbRubberBand;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/rb/RbRubberBand;->setVisible(Z)V

    return-void
.end method
