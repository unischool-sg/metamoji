.class public Lcom/metamoji/df/controller/DfUtility;
.super Ljava/lang/Object;
.source "DfUtility.java"


# static fields
.field public static final DEFAULT_DPI:F = 72.0f

.field public static final DEFAULT_MAX_ZOOM:F = 50.0f

.field public static final DEFAULT_MIN_ZOOM:F = 1.0f

.field public static DEVICE_DPI:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachChildControllerFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/DfController;I)Lcom/metamoji/df/controller/DfController;
    .locals 1

    .line 75
    invoke-virtual {p1, p1}, Lcom/metamoji/df/controller/DfController;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v0

    .line 76
    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/df/controller/DfUtility;->attachChildControllerFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/DfController;ILcom/metamoji/df/controller/ControllerContext;)Lcom/metamoji/df/controller/DfController;

    move-result-object p0

    return-object p0
.end method

.method public static attachChildControllerFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/DfController;ILcom/metamoji/df/controller/ControllerContext;)Lcom/metamoji/df/controller/DfController;
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p3, v0}, Lcom/metamoji/df/controller/ControllerContext;->setRestored(Z)V

    .line 90
    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfController;->getControllerFactory()Lcom/metamoji/df/controller/ControllerFactory;

    move-result-object v0

    invoke-virtual {v0, p3, p0, p2}, Lcom/metamoji/df/controller/ControllerFactory;->createAsDepthFirst(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;I)Lcom/metamoji/df/controller/DfController;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_0
    invoke-static {p3, p1, p2, p0}, Lcom/metamoji/df/controller/DfController;->attachToControllerTree(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/controller/DfController;ILcom/metamoji/df/controller/DfController;)V

    return-object p0
.end method

.method public static detachChildController(Lcom/metamoji/df/controller/DfController;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v0}, Lcom/metamoji/df/controller/DfController;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v1

    const/4 v2, 0x0

    .line 111
    invoke-virtual {v1, v2}, Lcom/metamoji/df/controller/ControllerContext;->setPurged(Z)V

    .line 112
    invoke-virtual {v1, v2}, Lcom/metamoji/df/controller/ControllerContext;->setClosed(Z)V

    .line 113
    invoke-static {v1, v0, p0}, Lcom/metamoji/df/controller/DfController;->detachFromControllerTree(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/controller/DfController;)V

    return-void
.end method

.method public static getAncestorModelIDs(Lcom/metamoji/df/model/IModel;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p0, :cond_0

    .line 156
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getParent()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method

.method public static getMagnificationFromZoom(D)D
    .locals 2

    .line 150
    sget-object v0, Lcom/metamoji/df/controller/DfUtility;->DEVICE_DPI:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static getMagnificationFromZoom(F)F
    .locals 1

    .line 63
    sget-object v0, Lcom/metamoji/df/controller/DfUtility;->DEVICE_DPI:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr p0, v0

    const/high16 v0, 0x42900000    # 72.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static getZoomFromMagnification(D)D
    .locals 2

    .line 143
    sget-object v0, Lcom/metamoji/df/controller/DfUtility;->DEVICE_DPI:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static getZoomFromMagnification(F)F
    .locals 1

    .line 52
    sget-object v0, Lcom/metamoji/df/controller/DfUtility;->DEVICE_DPI:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr p0, v0

    const/high16 v0, 0x42900000    # 72.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static initDeviceDpi(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 37
    sget-object v0, Lcom/metamoji/df/controller/DfUtility;->DEVICE_DPI:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 40
    new-instance p0, Landroid/graphics/PointF;

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-direct {p0, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object p0, Lcom/metamoji/df/controller/DfUtility;->DEVICE_DPI:Landroid/graphics/PointF;

    :cond_0
    return-void
.end method

.method public static initialize(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/metamoji/df/controller/DfUtility;->initDeviceDpi(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public static mm2px(FF)F
    .locals 0

    mul-float/2addr p0, p1

    const p1, 0x41cb3333    # 25.4f

    div-float/2addr p0, p1

    return p0
.end method

.method public static mmFromPoint(F)F
    .locals 1

    const v0, 0x41cb3333    # 25.4f

    mul-float/2addr p0, v0

    const/high16 v0, 0x42900000    # 72.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static pointFromMm(F)F
    .locals 1

    const/high16 v0, 0x42900000    # 72.0f

    mul-float/2addr p0, v0

    const v0, 0x41cb3333    # 25.4f

    div-float/2addr p0, v0

    return p0
.end method

.method public static px2mm(IF)F
    .locals 1

    int-to-float p0, p0

    const v0, 0x41cb3333    # 25.4f

    mul-float/2addr p0, v0

    div-float/2addr p0, p1

    return p0
.end method
