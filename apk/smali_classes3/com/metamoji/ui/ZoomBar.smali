.class public Lcom/metamoji/ui/ZoomBar;
.super Landroidx/fragment/app/Fragment;
.source "ZoomBar.java"


# static fields
.field public static final LOCATION_LEFT:I = 0x0

.field public static final LOCATION_RIGHT:I = 0x1

.field private static final NOHIT_MARGIN:F = 20.0f

.field private static final POS_RANGE_EXCLUDE:F = 73.0f

.field private static final ZOOMSCALE_EPSILON:F = 1.0E-4f


# instance fields
.field private _dragging:Z

.field private _location:I

.field private _manager:Lcom/metamoji/ui/ScrollButtonManager;

.field private _maxZoom:F

.field private _minZoom:F

.field private _pos:F

.field private _posRange:F

.field private _thumb:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$monTouch(Lcom/metamoji/ui/ZoomBar;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/ZoomBar;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/metamoji/ui/ZoomBar;->_thumb:Landroid/view/View;

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/metamoji/ui/ZoomBar;->_pos:F

    const/high16 v2, 0x430f0000    # 143.0f

    .line 23
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    iput v2, p0, Lcom/metamoji/ui/ZoomBar;->_posRange:F

    const/4 v2, 0x1

    .line 27
    iput v2, p0, Lcom/metamoji/ui/ZoomBar;->_location:I

    .line 29
    iput v1, p0, Lcom/metamoji/ui/ZoomBar;->_minZoom:F

    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    .line 30
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/metamoji/ui/ZoomBar;->_maxZoom:F

    .line 31
    iput-object v0, p0, Lcom/metamoji/ui/ZoomBar;->_manager:Lcom/metamoji/ui/ScrollButtonManager;

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/metamoji/ui/ZoomBar;->_dragging:Z

    return-void
.end method

.method private adjustHeight(Landroid/view/View;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/metamoji/ui/ZoomBar;->_manager:Lcom/metamoji/ui/ScrollButtonManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/ZoomBar;->_manager:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager;->getZoomBarSpace()I

    move-result v0

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 207
    iget p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float p1, p1

    const/high16 v0, 0x42920000    # 73.0f

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/metamoji/ui/ZoomBar;->_posRange:F

    .line 209
    iget p1, p0, Lcom/metamoji/ui/ZoomBar;->_pos:F

    invoke-direct {p0, p1}, Lcom/metamoji/ui/ZoomBar;->moveThumb(F)V

    return-void
.end method

.method private innerSetLocation(Landroid/view/View;)V
    .locals 7

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 167
    iget v1, p0, Lcom/metamoji/ui/ZoomBar;->_location:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/16 v6, 0xb

    if-ne v1, v2, :cond_0

    .line 169
    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 170
    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 174
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 176
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private moveThumb(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    :goto_1
    iput p1, p0, Lcom/metamoji/ui/ZoomBar;->_pos:F

    .line 92
    iget-object v0, p0, Lcom/metamoji/ui/ZoomBar;->_thumb:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 93
    iget v1, p0, Lcom/metamoji/ui/ZoomBar;->_posRange:F

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method private onTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    return v2

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ui/ZoomBar;->_dragging:Z

    if-nez v0, :cond_1

    return v2

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/ZoomBar;->trackPos(F)V

    return v1

    .line 127
    :cond_2
    iget-boolean p1, p0, Lcom/metamoji/ui/ZoomBar;->_dragging:Z

    if-nez p1, :cond_3

    return v2

    .line 130
    :cond_3
    iput-boolean v2, p0, Lcom/metamoji/ui/ZoomBar;->_dragging:Z

    .line 131
    iget-object p1, p0, Lcom/metamoji/ui/ZoomBar;->_manager:Lcom/metamoji/ui/ScrollButtonManager;

    if-eqz p1, :cond_4

    .line 132
    invoke-virtual {p1, v2}, Lcom/metamoji/ui/ScrollButtonManager;->setScreenShotMode(Z)V

    :cond_4
    return v1

    .line 103
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    .line 104
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    cmpg-float v2, p1, v0

    if-ltz v2, :cond_8

    .line 105
    invoke-virtual {p0}, Lcom/metamoji/ui/ZoomBar;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    cmpl-float v0, p1, v2

    if-lez v0, :cond_6

    goto :goto_0

    .line 109
    :cond_6
    iget-object v0, p0, Lcom/metamoji/ui/ZoomBar;->_manager:Lcom/metamoji/ui/ScrollButtonManager;

    if-eqz v0, :cond_7

    .line 110
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/ScrollButtonManager;->setScreenShotMode(Z)V

    .line 112
    :cond_7
    invoke-direct {p0, p1}, Lcom/metamoji/ui/ZoomBar;->trackPos(F)V

    .line 113
    iput-boolean v1, p0, Lcom/metamoji/ui/ZoomBar;->_dragging:Z

    :cond_8
    :goto_0
    return v1
.end method

.method private trackPos(F)V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/metamoji/ui/ZoomBar;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 142
    iget v0, p0, Lcom/metamoji/ui/ZoomBar;->_posRange:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/metamoji/ui/ZoomBar;->moveThumb(F)V

    .line 144
    iget-object p1, p0, Lcom/metamoji/ui/ZoomBar;->_manager:Lcom/metamoji/ui/ScrollButtonManager;

    if-eqz p1, :cond_0

    .line 145
    iget p1, p0, Lcom/metamoji/ui/ZoomBar;->_minZoom:F

    iget v0, p0, Lcom/metamoji/ui/ZoomBar;->_pos:F

    iget v1, p0, Lcom/metamoji/ui/ZoomBar;->_maxZoom:F

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 146
    iget-object v0, p0, Lcom/metamoji/ui/ZoomBar;->_manager:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/ScrollButtonManager;->setZoom(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public adjustHeight()V
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/metamoji/ui/ZoomBar;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-direct {p0, v0}, Lcom/metamoji/ui/ZoomBar;->adjustHeight(Landroid/view/View;)V

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public hide()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 36
    sget p3, Lcom/metamoji/noteanytime/R$layout;->editor_zoom_bar:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Lcom/metamoji/ui/ZoomBar;->adjustHeight(Landroid/view/View;)V

    .line 40
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_zoombar_thumb:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ui/ZoomBar;->_thumb:Landroid/view/View;

    .line 41
    iget p2, p0, Lcom/metamoji/ui/ZoomBar;->_pos:F

    invoke-direct {p0, p2}, Lcom/metamoji/ui/ZoomBar;->moveThumb(F)V

    .line 43
    new-instance p2, Lcom/metamoji/ui/ZoomBar$1;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/ZoomBar$1;-><init>(Lcom/metamoji/ui/ZoomBar;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51
    iget p2, p0, Lcom/metamoji/ui/ZoomBar;->_location:I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    .line 52
    invoke-direct {p0, p1}, Lcom/metamoji/ui/ZoomBar;->innerSetLocation(Landroid/view/View;)V

    :cond_0
    return-object p1
.end method

.method public setLocation(I)V
    .locals 1

    .line 155
    iget v0, p0, Lcom/metamoji/ui/ZoomBar;->_location:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iput p1, p0, Lcom/metamoji/ui/ZoomBar;->_location:I

    .line 159
    invoke-virtual {p0}, Lcom/metamoji/ui/ZoomBar;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 161
    invoke-direct {p0, p1}, Lcom/metamoji/ui/ZoomBar;->innerSetLocation(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setScrollButtonManager(Lcom/metamoji/ui/ScrollButtonManager;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/metamoji/ui/ZoomBar;->_manager:Lcom/metamoji/ui/ScrollButtonManager;

    return-void
.end method

.method public setZoom(F)V
    .locals 2

    float-to-double v0, p1

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Lcom/metamoji/ui/ZoomBar;->_minZoom:F

    sub-float/2addr p1, v0

    iget v1, p0, Lcom/metamoji/ui/ZoomBar;->_maxZoom:F

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/ZoomBar;->moveThumb(F)V

    return-void
.end method

.method public setZoomRange(FF)V
    .locals 2

    float-to-double v0, p1

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float p1, v0

    const v0, 0x38d1b717    # 1.0E-4f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/metamoji/ui/ZoomBar;->_minZoom:F

    float-to-double p1, p2

    .line 71
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    double-to-float p1, p1

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/metamoji/ui/ZoomBar;->_maxZoom:F

    return-void
.end method

.method public show()V
    .locals 0

    return-void
.end method
