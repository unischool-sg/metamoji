.class public Lcom/metamoji/ui/DetailView;
.super Landroid/widget/RelativeLayout;
.source "DetailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/DetailView$OnSizeChangedListener;,
        Lcom/metamoji/ui/DetailView$AddSpriteOwner;
    }
.end annotation


# instance fields
.field private _drawProxy:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

.field private _dwindow:Lcom/metamoji/ui/DetailWindow;

.field private _initTarget:Z

.field private _maxTouchX:F

.field private _onSizeChangedListener:Lcom/metamoji/ui/DetailView$OnSizeChangedListener;

.field private _spriteOwner:Lcom/metamoji/ui/DetailView$AddSpriteOwner;

.field private _touchListener:Lcom/metamoji/df/sprite/TouchListener;

.field private _traceTouchX:Z

.field private _viewport:Lcom/metamoji/df/sprite/Viewport;


# direct methods
.method static bridge synthetic -$$Nest$fget_drawProxy(Lcom/metamoji/ui/DetailView;)Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/DetailView;->_drawProxy:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_dwindow(Lcom/metamoji/ui/DetailView;)Lcom/metamoji/ui/DetailWindow;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/DetailView;->_dwindow:Lcom/metamoji/ui/DetailWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_traceTouchX(Lcom/metamoji/ui/DetailView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/DetailView;->_traceTouchX:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fput_traceTouchX(Lcom/metamoji/ui/DetailView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/DetailView;->_traceTouchX:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPoint(Lcom/metamoji/ui/DetailView;Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/DetailView;->getPoint(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/metamoji/ui/DetailView;->_traceTouchX:Z

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/metamoji/ui/DetailView;->_maxTouchX:F

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/metamoji/ui/DetailView;->_onSizeChangedListener:Lcom/metamoji/ui/DetailView$OnSizeChangedListener;

    .line 101
    iput-boolean p1, p0, Lcom/metamoji/ui/DetailView;->_initTarget:Z

    .line 128
    new-instance p1, Lcom/metamoji/ui/DetailView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/DetailView$1;-><init>(Lcom/metamoji/ui/DetailView;)V

    iput-object p1, p0, Lcom/metamoji/ui/DetailView;->_touchListener:Lcom/metamoji/df/sprite/TouchListener;

    .line 410
    new-instance p1, Lcom/metamoji/ui/DetailView$AddSpriteOwner;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/DetailView$AddSpriteOwner;-><init>(Lcom/metamoji/ui/DetailView;)V

    iput-object p1, p0, Lcom/metamoji/ui/DetailView;->_spriteOwner:Lcom/metamoji/ui/DetailView$AddSpriteOwner;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/metamoji/ui/DetailView;->_traceTouchX:Z

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcom/metamoji/ui/DetailView;->_maxTouchX:F

    const/4 p2, 0x0

    .line 82
    iput-object p2, p0, Lcom/metamoji/ui/DetailView;->_onSizeChangedListener:Lcom/metamoji/ui/DetailView$OnSizeChangedListener;

    .line 101
    iput-boolean p1, p0, Lcom/metamoji/ui/DetailView;->_initTarget:Z

    .line 128
    new-instance p1, Lcom/metamoji/ui/DetailView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/DetailView$1;-><init>(Lcom/metamoji/ui/DetailView;)V

    iput-object p1, p0, Lcom/metamoji/ui/DetailView;->_touchListener:Lcom/metamoji/df/sprite/TouchListener;

    .line 410
    new-instance p1, Lcom/metamoji/ui/DetailView$AddSpriteOwner;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/DetailView$AddSpriteOwner;-><init>(Lcom/metamoji/ui/DetailView;)V

    iput-object p1, p0, Lcom/metamoji/ui/DetailView;->_spriteOwner:Lcom/metamoji/ui/DetailView$AddSpriteOwner;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/metamoji/ui/DetailView;->_traceTouchX:Z

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcom/metamoji/ui/DetailView;->_maxTouchX:F

    const/4 p2, 0x0

    .line 82
    iput-object p2, p0, Lcom/metamoji/ui/DetailView;->_onSizeChangedListener:Lcom/metamoji/ui/DetailView$OnSizeChangedListener;

    .line 101
    iput-boolean p1, p0, Lcom/metamoji/ui/DetailView;->_initTarget:Z

    .line 128
    new-instance p1, Lcom/metamoji/ui/DetailView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/DetailView$1;-><init>(Lcom/metamoji/ui/DetailView;)V

    iput-object p1, p0, Lcom/metamoji/ui/DetailView;->_touchListener:Lcom/metamoji/df/sprite/TouchListener;

    .line 410
    new-instance p1, Lcom/metamoji/ui/DetailView$AddSpriteOwner;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/DetailView$AddSpriteOwner;-><init>(Lcom/metamoji/ui/DetailView;)V

    iput-object p1, p0, Lcom/metamoji/ui/DetailView;->_spriteOwner:Lcom/metamoji/ui/DetailView$AddSpriteOwner;

    return-void
.end method

.method private createViewport()V
    .locals 3

    .line 104
    new-instance v0, Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {p0}, Lcom/metamoji/ui/DetailView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/Viewport;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    const/4 v1, 0x4

    .line 109
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setDetail(Z)V

    .line 111
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    new-instance v1, Lcom/metamoji/df/sprite/Stage;

    invoke-direct {v1}, Lcom/metamoji/df/sprite/Stage;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setStage(Lcom/metamoji/df/sprite/Stage;)V

    .line 112
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setNumberOfTouchesPanGesture(I)V

    .line 113
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setPanEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setPinchEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setMinZoomScale(F)V

    .line 117
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setMaxZoomScale(F)V

    .line 119
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    iget-object v1, p0, Lcom/metamoji/ui/DetailView;->_touchListener:Lcom/metamoji/df/sprite/TouchListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setTouchListener(Lcom/metamoji/df/sprite/TouchListener;)V

    .line 122
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 123
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-interface {v1, v0, v2}, Lcom/metamoji/nt/INtEditor;->setMinPaintInterval(Lcom/metamoji/nt/NtUserDefaults;Lcom/metamoji/df/sprite/Viewport;)V

    .line 125
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/DetailView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getPoint(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;
    .locals 2

    .line 239
    new-instance v0, Landroid/graphics/PointF;

    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getX()F

    move-result v1

    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 240
    iget-boolean p1, p0, Lcom/metamoji/ui/DetailView;->_traceTouchX:Z

    if-eqz p1, :cond_0

    iget p1, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/metamoji/ui/DetailView;->_maxTouchX:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    .line 241
    iget p1, v0, Landroid/graphics/PointF;->x:F

    iput p1, p0, Lcom/metamoji/ui/DetailView;->_maxTouchX:F

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 244
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_drawProxy:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->destroy()V

    .line 64
    iput-object v1, p0, Lcom/metamoji/ui/DetailView;->_drawProxy:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->dispose()V

    .line 68
    iput-object v1, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    .line 70
    :cond_1
    iput-object v1, p0, Lcom/metamoji/ui/DetailView;->_dwindow:Lcom/metamoji/ui/DetailWindow;

    .line 71
    iput-object v1, p0, Lcom/metamoji/ui/DetailView;->_onSizeChangedListener:Lcom/metamoji/ui/DetailView$OnSizeChangedListener;

    return-void
.end method

.method public fixSize(Z)V
    .locals 1

    .line 310
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailView;->getWidth()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 313
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailView;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void

    :cond_0
    const/4 p1, -0x1

    .line 315
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 316
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 317
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailView;->requestLayout()V

    return-void
.end method

.method public getMaxTouchX()F
    .locals 1

    .line 269
    iget v0, p0, Lcom/metamoji/ui/DetailView;->_maxTouchX:F

    return v0
.end method

.method public getViewport()Lcom/metamoji/df/sprite/Viewport;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getZoomScale()F

    move-result v0

    return v0
.end method

.method public hideViewport()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_drawProxy:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->resetOverLayer()V

    .line 223
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_spriteOwner:Lcom/metamoji/ui/DetailView$AddSpriteOwner;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->disconnect()V

    .line 225
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_drawProxy:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->destroy()V

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/metamoji/ui/DetailView;->_drawProxy:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    return-void
.end method

.method public init(Lcom/metamoji/ui/DetailWindow;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/metamoji/ui/DetailView;->_dwindow:Lcom/metamoji/ui/DetailWindow;

    .line 52
    invoke-direct {p0}, Lcom/metamoji/ui/DetailView;->createViewport()V

    return-void
.end method

.method public isDrawMode()Z
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_drawProxy:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 302
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->type()Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    move-result-object v0

    sget-object v2, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->DRAW:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 88
    iget-object p3, p0, Lcom/metamoji/ui/DetailView;->_onSizeChangedListener:Lcom/metamoji/ui/DetailView$OnSizeChangedListener;

    if-eqz p3, :cond_0

    .line 89
    invoke-interface {p3, p0, p1, p2}, Lcom/metamoji/ui/DetailView$OnSizeChangedListener;->onSizeChanged(Lcom/metamoji/ui/DetailView;II)V

    :cond_0
    return-void
.end method

.method public resetMaxTouchX()V
    .locals 1

    const/4 v0, 0x0

    .line 273
    iput v0, p0, Lcom/metamoji/ui/DetailView;->_maxTouchX:F

    return-void
.end method

.method public setOnSizeChangedListener(Lcom/metamoji/ui/DetailView$OnSizeChangedListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/metamoji/ui/DetailView;->_onSizeChangedListener:Lcom/metamoji/ui/DetailView$OnSizeChangedListener;

    return-void
.end method

.method public setTargetRect(Landroid/graphics/RectF;)V
    .locals 4

    const/4 v0, 0x0

    .line 249
    iput v0, p0, Lcom/metamoji/ui/DetailView;->_maxTouchX:F

    .line 251
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    .line 252
    iget-object v1, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, v0

    iget v3, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/df/sprite/Viewport;->scrollTo(FF)V

    .line 253
    iget-object v1, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getZoomScale()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Viewport;->setZoomScale(F)V

    .line 255
    iget-object v1, p0, Lcom/metamoji/ui/DetailView;->_drawProxy:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {v2, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->updateOverlayCoordinatesWithZoom(FLandroid/graphics/PointF;)V

    .line 258
    :cond_0
    iget-boolean p1, p0, Lcom/metamoji/ui/DetailView;->_initTarget:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 259
    iput-boolean p1, p0, Lcom/metamoji/ui/DetailView;->_initTarget:Z

    .line 260
    iget-object p1, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Viewport;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showViewport(Lcom/metamoji/nt/NtNoteController;)V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_drawProxy:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    if-eqz v0, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Stage;->setSprite(Lcom/metamoji/df/sprite/Sprite;)V

    .line 187
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    .line 188
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getExternalInteractionProxy()Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/DetailView;->_drawProxy:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    .line 189
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->overlay()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    .line 193
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Stage;->getWidth()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 194
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Stage;->getHeight()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 197
    iget-object v2, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->getOverLayer()Lcom/metamoji/df/sprite/Layer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Layer;->setStage(Lcom/metamoji/df/sprite/Stage;)V

    .line 198
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getZoomScale()F

    move-result v0

    .line 199
    iget-object v2, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->getContentOffset()Landroid/graphics/PointF;

    move-result-object v2

    .line 200
    iget v3, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 201
    iget v3, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 202
    iget-object v3, p0, Lcom/metamoji/ui/DetailView;->_drawProxy:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    invoke-virtual {v3, v0, v2}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->updateOverlayCoordinatesWithZoom(FLandroid/graphics/PointF;)V

    .line 203
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_spriteOwner:Lcom/metamoji/ui/DetailView$AddSpriteOwner;

    iget-object v2, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/DetailView$AddSpriteOwner;->connect(Lcom/metamoji/df/sprite/Stage;Lcom/metamoji/df/sprite/Stage;)V

    .line 204
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/DetailView;->updateNoteMode(Lcom/metamoji/nt/NtNoteController$NoteMode;)V

    .line 207
    iget-object p1, p0, Lcom/metamoji/ui/DetailView;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Stage;->invalidate()V

    return-void
.end method

.method public updateNoteMode(Lcom/metamoji/nt/NtNoteController$NoteMode;)V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_drawProxy:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    sget-object v0, Lcom/metamoji/ui/DetailView$2;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/metamoji/ui/DetailView;->_drawProxy:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 289
    sget-object p1, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->NONE:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->setType(Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;)V

    return-void

    .line 286
    :cond_1
    sget-object p1, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->ERASE:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->setType(Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;)V

    return-void

    .line 283
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ui/DetailView;->_drawProxy:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    sget-object v0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->DRAW:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->setType(Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;)V

    return-void
.end method
