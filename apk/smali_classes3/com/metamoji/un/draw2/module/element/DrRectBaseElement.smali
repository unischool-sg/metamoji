.class public Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;
.super Lcom/metamoji/un/draw2/module/element/DrElement;
.source "DrRectBaseElement.java"


# static fields
.field private static final MODEL_PROPERTY_IS_REVERSING_X:Ljava/lang/String; = "RX?"

.field private static final MODEL_PROPERTY_IS_REVERSING_Y:Ljava/lang/String; = "RY?"

.field private static final MODEL_PROPERTY_PRE_EDIT_IS_REVERSING_X:Ljava/lang/String; = "PRX?"

.field private static final MODEL_PROPERTY_PRE_EDIT_IS_REVERSING_Y:Ljava/lang/String; = "PRY?"

.field private static final MODEL_PROPERTY_PRE_EDIT_SCALE_HEIGHT:Ljava/lang/String; = "PH"

.field private static final MODEL_PROPERTY_PRE_EDIT_SCALE_WIDTH:Ljava/lang/String; = "PW"

.field private static final MODEL_PROPERTY_PRE_EDIT_TRANSLATE_X:Ljava/lang/String; = "PX"

.field private static final MODEL_PROPERTY_PRE_EDIT_TRANSLATE_Y:Ljava/lang/String; = "PY"

.field private static final MODEL_PROPERTY_RECT_HEIGHT:Ljava/lang/String; = "H"

.field private static final MODEL_PROPERTY_RECT_WIDTH:Ljava/lang/String; = "W"

.field private static final MODEL_PROPERTY_RECT_X:Ljava/lang/String; = "X"

.field private static final MODEL_PROPERTY_RECT_Y:Ljava/lang/String; = "Y"

.field private static final MODEL_PROPERTY_SCALE_HEIGHT:Ljava/lang/String; = "SH"

.field private static final MODEL_PROPERTY_SCALE_WIDTH:Ljava/lang/String; = "SW"

.field private static final MODEL_PROPERTY_TRANSLATE_X:Ljava/lang/String; = "TX"

.field private static final MODEL_PROPERTY_TRANSLATE_Y:Ljava/lang/String; = "TY"


# instance fields
.field private final m_bounds:Lcom/metamoji/cm/RectEx;

.field private m_highlightAngleInRadians:F

.field private m_highlightId:I

.field private m_highlightOverlayId:I

.field private final m_highlightRect:Lcom/metamoji/cm/RectEx;

.field private m_isReversingX:Z

.field private m_isReversingY:Z

.field private final m_leftBottom:Landroid/graphics/PointF;

.field private final m_leftTop:Landroid/graphics/PointF;

.field private m_minScaleX:F

.field private m_minScaleY:F

.field private final m_rect:Lcom/metamoji/cm/RectEx;

.field private final m_rightBottom:Landroid/graphics/PointF;

.field private final m_rightTop:Landroid/graphics/PointF;

.field private m_scaleHeight:F

.field private m_scaleWidth:F

.field private m_translateX:F

.field private m_translateY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;-><init>()V

    .line 45
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    .line 52
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftTop:Landroid/graphics/PointF;

    .line 53
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightTop:Landroid/graphics/PointF;

    .line 54
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftBottom:Landroid/graphics/PointF;

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightBottom:Landroid/graphics/PointF;

    .line 56
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    .line 61
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightRect:Lcom/metamoji/cm/RectEx;

    return-void
.end method

.method private applyReverse(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1576
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingX:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingX:Z

    :cond_0
    if-eqz p2, :cond_1

    .line 1579
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingY:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingY:Z

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 1581
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1582
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingX:Z

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingY:Z

    invoke-static {p1, p2, v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->saveIsReversingToModel(Lcom/metamoji/df/model/IModel;ZZ)V

    :cond_3
    return-void
.end method

.method private applyTranslate(FFFF)V
    .locals 5

    .line 1555
    new-instance v0, Lcom/metamoji/cm/RectEx;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->x:F

    add-float/2addr v1, p1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->y:F

    add-float/2addr v2, p2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v3, p3

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v4, v4, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->updateRect(Lcom/metamoji/cm/RectEx;)V

    .line 1561
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editWithVariationAlways()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1562
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateX:F

    .line 1563
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateY:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateY:F

    .line 1564
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleWidth:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleWidth:F

    .line 1565
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleHeight:F

    mul-float/2addr p1, p4

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleHeight:F

    .line 1566
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1567
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget p2, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateX:F

    float-to-double p2, p2

    iget p4, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateY:F

    float-to-double v0, p4

    invoke-static {p1, p2, p3, v0, v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->saveTranslateToModel(Lcom/metamoji/df/model/IModel;DD)V

    .line 1568
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget p2, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleWidth:F

    float-to-double p2, p2

    iget p4, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleHeight:F

    float-to-double v0, p4

    invoke-static {p1, p2, p3, v0, v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->saveScaleToModel(Lcom/metamoji/df/model/IModel;DD)V

    :cond_0
    return-void
.end method

.method public static checkRectBaseElementModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 1302
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->checkElementModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->getBaseTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object p0

    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static checkRectFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/RectEx;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1593
    :cond_0
    const-string v0, "X"

    iget v1, p1, Lcom/metamoji/cm/RectEx;->x:F

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    iput v0, p1, Lcom/metamoji/cm/RectEx;->x:F

    .line 1594
    const-string v0, "Y"

    iget v1, p1, Lcom/metamoji/cm/RectEx;->y:F

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    iput v0, p1, Lcom/metamoji/cm/RectEx;->y:F

    .line 1595
    const-string v0, "W"

    iget v1, p1, Lcom/metamoji/cm/RectEx;->width:F

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    iput v0, p1, Lcom/metamoji/cm/RectEx;->width:F

    .line 1596
    const-string v0, "H"

    iget v1, p1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    iput p0, p1, Lcom/metamoji/cm/RectEx;->height:F

    return-void
.end method

.method public static getIsReversingXFromModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1354
    :cond_0
    const-string v1, "RX?"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0
.end method

.method public static getIsReversingYFromModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1361
    :cond_0
    const-string v1, "RY?"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0
.end method

.method public static getPreEditIsReversingXFromModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1396
    :cond_0
    const-string v1, "PRX?"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0
.end method

.method public static getPreEditIsReversingYFromModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1403
    :cond_0
    const-string v1, "PRY?"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0
.end method

.method public static getPreEditScaleHeightFromModel(Lcom/metamoji/df/model/IModel;)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_0

    return v0

    .line 1389
    :cond_0
    const-string v1, "PH"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    return p0
.end method

.method public static getPreEditScaleWidthFromModel(Lcom/metamoji/df/model/IModel;)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_0

    return v0

    .line 1382
    :cond_0
    const-string v1, "PW"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    return p0
.end method

.method public static getPreEditTranslateXFromModel(Lcom/metamoji/df/model/IModel;)F
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1368
    :cond_0
    const-string v1, "PX"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    return p0
.end method

.method public static getPreEditTranslateYfromModel(Lcom/metamoji/df/model/IModel;)F
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1375
    :cond_0
    const-string v1, "PY"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    return p0
.end method

.method public static getRectFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/cm/RectEx;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1315
    :cond_0
    const-string v0, "X"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    .line 1316
    const-string v2, "Y"

    invoke-static {v2, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v2

    .line 1317
    const-string v3, "W"

    invoke-static {v3, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v3

    .line 1318
    const-string v4, "H"

    invoke-static {v4, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    .line 1319
    new-instance v1, Lcom/metamoji/cm/RectEx;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v1
.end method

.method public static getScaleHeightFromModel(Lcom/metamoji/df/model/IModel;)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_0

    return v0

    .line 1347
    :cond_0
    const-string v1, "SH"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    return p0
.end method

.method public static getScaleWidthFromModel(Lcom/metamoji/df/model/IModel;)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_0

    return v0

    .line 1340
    :cond_0
    const-string v1, "SW"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    return p0
.end method

.method public static getTranslateXFromModel(Lcom/metamoji/df/model/IModel;)F
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1326
    :cond_0
    const-string v1, "TX"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    return p0
.end method

.method public static getTranslateYFromModel(Lcom/metamoji/df/model/IModel;)F
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1333
    :cond_0
    const-string v1, "TY"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    return p0
.end method

.method public static newEmptyRectBaseElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 1432
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->newEmptyElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1434
    const-string v0, "B"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1436
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method public static preEditWithContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;Lcom/metamoji/df/model/IModel;)V
    .locals 13

    .line 1445
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->checkRectBaseElementModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 1446
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p0, :cond_1

    .line 1450
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1453
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1458
    :cond_2
    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    .line 1479
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1474
    :cond_3
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->getIsRotatableFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    .line 1466
    :cond_4
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->getIsResizableFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 1469
    :cond_5
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->getIsReversibleFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->isReverse()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 1460
    :cond_6
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->getIsMovableFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_0
    return-void

    .line 1484
    :cond_7
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getRectFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/cm/RectEx;

    move-result-object v1

    .line 1485
    iget v2, v1, Lcom/metamoji/cm/RectEx;->x:F

    .line 1486
    iget v3, v1, Lcom/metamoji/cm/RectEx;->y:F

    .line 1487
    iget v4, v1, Lcom/metamoji/cm/RectEx;->width:F

    .line 1488
    iget v1, v1, Lcom/metamoji/cm/RectEx;->height:F

    .line 1491
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getPreEditTranslateXFromModel(Lcom/metamoji/df/model/IModel;)F

    move-result v5

    .line 1492
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getPreEditTranslateYfromModel(Lcom/metamoji/df/model/IModel;)F

    move-result v6

    .line 1493
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getPreEditScaleWidthFromModel(Lcom/metamoji/df/model/IModel;)F

    move-result v7

    .line 1494
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getPreEditScaleHeightFromModel(Lcom/metamoji/df/model/IModel;)F

    move-result v8

    .line 1497
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getPreEditIsReversingXFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v9

    .line 1498
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getPreEditIsReversingYFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v10

    .line 1501
    new-instance v11, Lcom/metamoji/cm/RectEx;

    invoke-direct {v11, v2, v3, v4, v1}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    .line 1502
    iget v12, v11, Lcom/metamoji/cm/RectEx;->x:F

    add-float/2addr v12, v5

    iput v12, v11, Lcom/metamoji/cm/RectEx;->x:F

    .line 1503
    iget v5, v11, Lcom/metamoji/cm/RectEx;->y:F

    add-float/2addr v5, v6

    iput v5, v11, Lcom/metamoji/cm/RectEx;->y:F

    .line 1504
    iget v5, v11, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v5, v7

    iput v5, v11, Lcom/metamoji/cm/RectEx;->width:F

    .line 1505
    iget v5, v11, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v5, v8

    iput v5, v11, Lcom/metamoji/cm/RectEx;->height:F

    const/4 v5, 0x0

    .line 1508
    invoke-static {p1, v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->checkAngleInDegreesFromModel(Lcom/metamoji/df/model/IModel;F)F

    move-result v6

    .line 1511
    invoke-virtual {p0, v11, v6}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->updateVariationForRectInDegrees(Lcom/metamoji/cm/RectEx;F)V

    .line 1514
    iget v6, v11, Lcom/metamoji/cm/RectEx;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateX()F

    move-result v7

    add-float/2addr v6, v7

    iput v6, v11, Lcom/metamoji/cm/RectEx;->x:F

    .line 1515
    iget v6, v11, Lcom/metamoji/cm/RectEx;->y:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateY()F

    move-result v7

    add-float/2addr v6, v7

    iput v6, v11, Lcom/metamoji/cm/RectEx;->y:F

    .line 1516
    iget v6, v11, Lcom/metamoji/cm/RectEx;->width:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleWidth()F

    move-result v7

    mul-float/2addr v6, v7

    iput v6, v11, Lcom/metamoji/cm/RectEx;->width:F

    .line 1517
    iget v6, v11, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleHeight()F

    move-result v7

    mul-float/2addr v6, v7

    iput v6, v11, Lcom/metamoji/cm/RectEx;->height:F

    .line 1520
    iget v6, v11, Lcom/metamoji/cm/RectEx;->x:F

    sub-float/2addr v6, v2

    .line 1521
    iget v2, v11, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr v2, v3

    cmpl-float v3, v4, v5

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v3, :cond_8

    .line 1522
    iget v3, v11, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v3, v4

    goto :goto_1

    :cond_8
    move v3, v7

    :goto_1
    cmpl-float v4, v1, v5

    if-eqz v4, :cond_9

    .line 1523
    iget v4, v11, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v4, v1

    goto :goto_2

    :cond_9
    move v4, v7

    :goto_2
    float-to-double v11, v6

    float-to-double v1, v2

    .line 1524
    invoke-static {p1, v11, v12, v1, v2}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->savePreEditTranslateToModel(Lcom/metamoji/df/model/IModel;DD)V

    float-to-double v1, v3

    float-to-double v3, v4

    .line 1525
    invoke-static {p1, v1, v2, v3, v4}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->savePreEditScaleToModel(Lcom/metamoji/df/model/IModel;DD)V

    .line 1528
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingX()Z

    move-result v1

    if-eqz v1, :cond_a

    xor-int/lit8 v9, v9, 0x1

    .line 1531
    :cond_a
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingY()Z

    move-result v1

    if-eqz v1, :cond_b

    xor-int/lit8 v10, v10, 0x1

    .line 1534
    :cond_b
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingX()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingY()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1535
    :cond_c
    invoke-static {p1, v9, v10}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->savePreEditIsReversingToModel(Lcom/metamoji/df/model/IModel;ZZ)V

    .line 1539
    :cond_d
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result v1

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_e

    .line 1540
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result v1

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->applyPreEditAngleInDegreesToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1542
    :cond_e
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result v1

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_f

    .line 1543
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result p0

    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->applyPreEditContentScaleToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1547
    :cond_f
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->applyWasPreEditedToModel(Lcom/metamoji/df/model/IModel;Z)V

    return-void
.end method

.method private static saveIsReversingToModel(Lcom/metamoji/df/model/IModel;ZZ)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1668
    const-string v1, "RX?"

    if-eqz p1, :cond_1

    .line 1669
    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 1671
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1673
    :goto_0
    const-string p1, "RY?"

    if-eqz p2, :cond_2

    .line 1674
    invoke-static {p1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1676
    :cond_2
    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePreEditIsReversingToModel(Lcom/metamoji/df/model/IModel;ZZ)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1716
    const-string v1, "PRX?"

    if-eqz p1, :cond_1

    .line 1717
    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 1719
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1721
    :goto_0
    const-string p1, "PRY?"

    if-eqz p2, :cond_2

    .line 1722
    invoke-static {p1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1724
    :cond_2
    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePreEditScaleToModel(Lcom/metamoji/df/model/IModel;DD)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    .line 1700
    const-string v3, "PW"

    if-eqz v2, :cond_1

    .line 1701
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v3, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 1703
    :cond_1
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :goto_0
    cmpl-double p1, p3, v0

    .line 1705
    const-string p2, "PH"

    if-eqz p1, :cond_2

    .line 1706
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1708
    :cond_2
    invoke-static {p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePreEditTranslateToModel(Lcom/metamoji/df/model/IModel;DD)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    .line 1684
    const-string v3, "PX"

    if-eqz v2, :cond_1

    .line 1685
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v3, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 1687
    :cond_1
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :goto_0
    cmpl-double p1, p3, v0

    .line 1689
    const-string p2, "PY"

    if-eqz p1, :cond_2

    .line 1690
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1692
    :cond_2
    invoke-static {p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveRectToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/RectEx;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 1603
    :cond_0
    const-string v0, "H"

    const-string v1, "W"

    const-string v2, "Y"

    const-string v3, "X"

    if-nez p1, :cond_1

    .line 1604
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1605
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1606
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1607
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1610
    :cond_1
    iget v4, p1, Lcom/metamoji/cm/RectEx;->x:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 1611
    iget v4, p1, Lcom/metamoji/cm/RectEx;->x:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 1613
    :cond_2
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1615
    :goto_0
    iget v3, p1, Lcom/metamoji/cm/RectEx;->y:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3

    .line 1616
    iget v3, p1, Lcom/metamoji/cm/RectEx;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 1618
    :cond_3
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1620
    :goto_1
    iget v2, p1, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_4

    .line 1621
    iget v2, p1, Lcom/metamoji/cm/RectEx;->width:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 1623
    :cond_4
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1625
    :goto_2
    iget v1, p1, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_5

    .line 1626
    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1628
    :cond_5
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveScaleToModel(Lcom/metamoji/df/model/IModel;DD)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    .line 1652
    const-string v3, "SW"

    if-eqz v2, :cond_1

    .line 1653
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v3, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 1655
    :cond_1
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :goto_0
    cmpl-double p1, p3, v0

    .line 1657
    const-string p2, "SH"

    if-eqz p1, :cond_2

    .line 1658
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1660
    :cond_2
    invoke-static {p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveTranslateToModel(Lcom/metamoji/df/model/IModel;DD)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    .line 1636
    const-string v3, "TX"

    if-eqz v2, :cond_1

    .line 1637
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v3, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 1639
    :cond_1
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :goto_0
    cmpl-double p1, p3, v0

    .line 1641
    const-string p2, "TY"

    if-eqz p1, :cond_2

    .line 1642
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1644
    :cond_2
    invoke-static {p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setRectToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/RectEx;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1415
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    .line 1416
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1419
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFiniteRect(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x1

    .line 1420
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1423
    :cond_2
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->saveRectToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/RectEx;)V

    return-void
.end method

.method private static swap(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2

    .line 1732
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    .line 1733
    invoke-virtual {p0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1734
    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method


# virtual methods
.method protected activate_()V
    .locals 0

    .line 1253
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->activate_()V

    return-void
.end method

.method public applyVariationWithTranslate(FFFFZZFF)V
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p8, v0

    if-gtz v1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 275
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    cmpl-float v1, p7, v0

    if-eqz v1, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v2

    add-float/2addr v2, p7

    invoke-virtual {p0, v2}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->updateAngleInDegrees(F)V

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p8, v2

    if-eqz v3, :cond_2

    .line 286
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->contentScale()F

    move-result v3

    mul-float/2addr v3, p8

    invoke-virtual {p0, v3}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->updateContentScale(F)V

    .line 290
    :cond_2
    invoke-direct {p0, p5, p6}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->applyReverse(ZZ)V

    cmpl-float v3, p1, v0

    if-nez v3, :cond_4

    cmpl-float v0, p2, v0

    if-nez v0, :cond_4

    cmpl-float v0, p3, v2

    if-nez v0, :cond_4

    cmpl-float v0, p4, v2

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    .line 298
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->updateBounds()V

    goto :goto_1

    .line 294
    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->applyTranslate(FFFF)V

    .line 303
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p8}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->applyVariationWithTranslate_(FFFFZZFF)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 310
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isActive()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 311
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->updateCovers()V

    .line 312
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->repaint_()V

    :cond_6
    return-void
.end method

.method protected applyVariationWithTranslate_(FFFFZZFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected baseType_()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;
    .locals 1

    .line 921
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    return-object v0
.end method

.method protected boundsFromRect(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 8

    .line 708
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInRadians()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-object p1

    .line 713
    :cond_0
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 715
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInRadians()F

    move-result v2

    move-object v1, p1

    .line 714
    invoke-static/range {v1 .. v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkCornerOfRectInRadians(Lcom/metamoji/cm/RectEx;FLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 722
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingX:Z

    if-eqz p1, :cond_1

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v7

    .line 730
    :cond_1
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingY:Z

    if-eqz p1, :cond_2

    move-object v7, v5

    move-object v5, v3

    move-object v3, v7

    move-object v7, v6

    move-object v6, v4

    move-object v4, v7

    .line 740
    :cond_2
    invoke-static {v3, v4, v5, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected bounds_()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public checkVariationForResizedBounds(Lcom/metamoji/cm/RectEx;FFFF)Lcom/metamoji/cm/RectEx;
    .locals 6

    .line 327
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 328
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 329
    new-instance p1, Lcom/metamoji/cm/RectEx;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object p1

    .line 331
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidRect(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 332
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 333
    new-instance p1, Lcom/metamoji/cm/RectEx;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object p1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 337
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->checkVariationForResizedBounds_(Lcom/metamoji/cm/RectEx;FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method public checkVariationForResizedBounds_(Lcom/metamoji/cm/RectEx;FFFF)Lcom/metamoji/cm/RectEx;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 411
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v6, v6, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    const/4 v8, 0x0

    if-eqz v6, :cond_18

    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v6, v6, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    goto/16 :goto_a

    .line 415
    :cond_0
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v6, v6, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v6, v6, v7

    const/4 v9, 0x1

    if-eqz v6, :cond_17

    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v6, v6, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    goto/16 :goto_9

    .line 421
    :cond_1
    iget v6, v1, Lcom/metamoji/cm/RectEx;->width:F

    iget-object v10, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v10, v10, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v6, v10

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x5

    .line 422
    invoke-static {v6, v10, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v12

    if-eqz v12, :cond_2

    move v6, v10

    .line 425
    :cond_2
    iget v12, v1, Lcom/metamoji/cm/RectEx;->height:F

    iget-object v13, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v13, v13, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v12, v13

    .line 426
    invoke-static {v12, v10, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v13

    if-eqz v13, :cond_3

    move v12, v10

    .line 431
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v13

    .line 432
    invoke-static {v13, v7, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v7

    if-nez v7, :cond_16

    const/high16 v7, 0x43340000    # 180.0f

    .line 433
    invoke-static {v13, v7, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v14

    if-eqz v14, :cond_4

    goto/16 :goto_8

    :cond_4
    const/high16 v14, 0x42b40000    # 90.0f

    .line 440
    invoke-static {v13, v14, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v15

    if-nez v15, :cond_15

    const/high16 v15, 0x43870000    # 270.0f

    .line 441
    invoke-static {v13, v15, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v11

    if-eqz v11, :cond_5

    goto/16 :goto_7

    .line 450
    :cond_5
    invoke-static {v13}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkAxisSwitchingZoneForAngleInDegrees(F)Z

    move-result v11

    .line 453
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v16

    move/from16 v17, v7

    iget-object v7, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v7

    sub-float v16, v16, v7

    .line 454
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v7

    move/from16 v18, v10

    iget-object v10, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v10

    sub-float/2addr v7, v10

    .line 455
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object v1

    .line 456
    iget v10, v1, Lcom/metamoji/cm/RectEx;->x:F

    sub-float v10, v10, v16

    iput v10, v1, Lcom/metamoji/cm/RectEx;->x:F

    .line 457
    iget v10, v1, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr v10, v7

    iput v10, v1, Lcom/metamoji/cm/RectEx;->y:F

    cmpl-float v10, v12, v18

    const/high16 v19, 0x40000000    # 2.0f

    if-nez v10, :cond_c

    if-eqz v11, :cond_8

    cmpg-float v6, v13, v14

    if-ltz v6, :cond_7

    cmpl-float v6, v13, v15

    if-lez v6, :cond_6

    goto :goto_0

    .line 467
    :cond_6
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightTop:Landroid/graphics/PointF;

    .line 468
    iget-object v10, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightBottom:Landroid/graphics/PointF;

    goto :goto_1

    .line 464
    :cond_7
    :goto_0
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftTop:Landroid/graphics/PointF;

    .line 465
    iget-object v10, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftBottom:Landroid/graphics/PointF;

    goto :goto_1

    :cond_8
    cmpg-float v6, v13, v17

    if-gez v6, :cond_9

    .line 472
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftBottom:Landroid/graphics/PointF;

    .line 473
    iget-object v10, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightBottom:Landroid/graphics/PointF;

    goto :goto_1

    .line 475
    :cond_9
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftTop:Landroid/graphics/PointF;

    .line 476
    iget-object v10, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightTop:Landroid/graphics/PointF;

    :goto_1
    move-object/from16 v20, v6

    move-object/from16 v21, v10

    .line 479
    new-instance v24, Landroid/graphics/PointF;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/PointF;-><init>()V

    .line 480
    new-array v6, v9, [Z

    .line 483
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->originOf(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v22

    iget v9, v1, Lcom/metamoji/cm/RectEx;->x:F

    iget v10, v1, Lcom/metamoji/cm/RectEx;->y:F

    iget v1, v1, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr v10, v1

    .line 484
    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v25, v6

    .line 481
    invoke-static/range {v20 .. v25}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->checkIntersectionOfLineWithPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;[Z)Z

    move-result v1

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v6, v24

    if-nez v1, :cond_a

    const/4 v1, 0x2

    .line 487
    invoke-static {v1, v8}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 488
    new-instance v1, Lcom/metamoji/cm/RectEx;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v1

    .line 490
    :cond_a
    iget v1, v9, Landroid/graphics/PointF;->x:F

    iget v2, v10, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    div-float v1, v1, v19

    iget v2, v9, Landroid/graphics/PointF;->y:F

    iget v3, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    div-float v2, v2, v19

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    .line 497
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    if-eqz v11, :cond_b

    mul-float v3, v1, v19

    .line 493
    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v3, v2

    .line 495
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F

    div-float v2, v2, v19

    sub-float/2addr v2, v1

    add-float/2addr v7, v2

    move/from16 v10, v18

    goto :goto_2

    :cond_b
    mul-float v3, v1, v19

    .line 497
    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v3, v2

    .line 499
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    div-float v2, v2, v19

    sub-float/2addr v2, v1

    add-float v16, v2, v16

    move v10, v3

    move/from16 v3, v18

    :goto_2
    move/from16 v1, v16

    .line 502
    new-instance v2, Lcom/metamoji/cm/RectEx;

    invoke-direct {v2, v1, v7, v10, v3}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v2

    :cond_c
    cmpl-float v10, v6, v18

    if-nez v10, :cond_13

    if-eqz v11, :cond_f

    cmpg-float v6, v13, v14

    if-ltz v6, :cond_e

    cmpl-float v6, v13, v15

    if-lez v6, :cond_d

    goto :goto_3

    .line 513
    :cond_d
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftBottom:Landroid/graphics/PointF;

    .line 514
    iget-object v10, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightBottom:Landroid/graphics/PointF;

    goto :goto_4

    .line 510
    :cond_e
    :goto_3
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftTop:Landroid/graphics/PointF;

    .line 511
    iget-object v10, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightTop:Landroid/graphics/PointF;

    goto :goto_4

    :cond_f
    cmpg-float v6, v13, v17

    if-gez v6, :cond_10

    .line 518
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftTop:Landroid/graphics/PointF;

    .line 519
    iget-object v10, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftBottom:Landroid/graphics/PointF;

    goto :goto_4

    .line 521
    :cond_10
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightTop:Landroid/graphics/PointF;

    .line 522
    iget-object v10, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightBottom:Landroid/graphics/PointF;

    :goto_4
    move-object/from16 v20, v6

    move-object/from16 v21, v10

    .line 525
    new-instance v24, Landroid/graphics/PointF;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/PointF;-><init>()V

    .line 526
    new-array v6, v9, [Z

    .line 529
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->originOf(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v22

    iget v9, v1, Lcom/metamoji/cm/RectEx;->x:F

    iget v10, v1, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v9, v10

    iget v1, v1, Lcom/metamoji/cm/RectEx;->y:F

    .line 530
    invoke-static {v9, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v25, v6

    .line 527
    invoke-static/range {v20 .. v25}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->checkIntersectionOfLineWithPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;[Z)Z

    move-result v1

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v6, v24

    if-nez v1, :cond_11

    const/4 v1, 0x3

    .line 533
    invoke-static {v1, v8}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 534
    new-instance v1, Lcom/metamoji/cm/RectEx;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v1

    .line 536
    :cond_11
    iget v1, v9, Landroid/graphics/PointF;->x:F

    iget v2, v10, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    div-float v1, v1, v19

    iget v2, v9, Landroid/graphics/PointF;->y:F

    iget v3, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    div-float v2, v2, v19

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    .line 544
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    if-eqz v11, :cond_12

    mul-float v3, v1, v19

    .line 538
    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v3, v2

    .line 540
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    div-float v2, v2, v19

    sub-float/2addr v2, v1

    add-float v16, v2, v16

    move v10, v3

    move/from16 v3, v18

    goto :goto_5

    :cond_12
    mul-float v3, v1, v19

    .line 544
    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v3, v2

    .line 546
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F

    div-float v2, v2, v19

    sub-float/2addr v2, v1

    add-float/2addr v7, v2

    move/from16 v10, v18

    :goto_5
    move/from16 v1, v16

    .line 548
    new-instance v2, Lcom/metamoji/cm/RectEx;

    invoke-direct {v2, v1, v7, v10, v3}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v2

    .line 552
    :cond_13
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v2, v6

    iget v3, v1, Lcom/metamoji/cm/RectEx;->height:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v3, v12

    iget v1, v1, Lcom/metamoji/cm/RectEx;->width:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_14

    goto :goto_6

    :cond_14
    move v6, v12

    :goto_6
    sub-float v10, v18, v6

    .line 555
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v1, v10

    div-float v1, v1, v19

    add-float v1, v1, v16

    .line 556
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v10, v2

    div-float v10, v10, v19

    add-float/2addr v10, v7

    .line 567
    new-instance v2, Lcom/metamoji/cm/RectEx;

    invoke-direct {v2, v1, v10, v6, v6}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v2

    .line 444
    :cond_15
    :goto_7
    iget v2, v1, Lcom/metamoji/cm/RectEx;->y:F

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr v2, v3

    .line 445
    iget v1, v1, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->x:F

    sub-float/2addr v1, v3

    .line 446
    new-instance v3, Lcom/metamoji/cm/RectEx;

    invoke-direct {v3, v2, v1, v12, v6}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v3

    .line 436
    :cond_16
    :goto_8
    iget v2, v1, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->x:F

    sub-float/2addr v2, v3

    .line 437
    iget v1, v1, Lcom/metamoji/cm/RectEx;->y:F

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr v1, v3

    .line 438
    new-instance v3, Lcom/metamoji/cm/RectEx;

    invoke-direct {v3, v2, v1, v6, v12}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v3

    .line 416
    :cond_17
    :goto_9
    invoke-static {v9, v8}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 417
    new-instance v1, Lcom/metamoji/cm/RectEx;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v1

    :cond_18
    :goto_a
    const/4 v1, 0x0

    .line 412
    invoke-static {v1, v8}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 413
    new-instance v1, Lcom/metamoji/cm/RectEx;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v1
.end method

.method public clearVariation()V
    .locals 1

    const/4 v0, 0x0

    .line 350
    invoke-virtual {p0, v0, v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->updateTranslate(FF)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 351
    invoke-virtual {p0, v0, v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->updateScale(FF)V

    return-void
.end method

.method protected coverAtIndex_(I)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 951
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->coverAtIndex_(I)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected coverCount_()I
    .locals 1

    .line 946
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->coverCount_()I

    move-result v0

    return v0
.end method

.method protected createVariation_()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 2

    .line 1232
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initRectTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    .line 1233
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateX:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateX(F)V

    .line 1234
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateY:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateY(F)V

    .line 1235
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleWidth:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleWidth(F)V

    .line 1236
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleHeight:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleHeight(F)V

    .line 1237
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingX:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setIsReversingX(Z)V

    .line 1238
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingY:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setIsReversingY(Z)V

    return-object v0
.end method

.method protected deactivate_()V
    .locals 3

    .line 1259
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightOverlayId:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1260
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightId:I

    iget v2, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightOverlayId:I

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->removeHighlightObjectWithId(II)V

    .line 1264
    :cond_0
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->deactivate_()V

    return-void
.end method

.method protected destroy_()V
    .locals 0

    .line 1244
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->destroy_()V

    return-void
.end method

.method protected distanceToPoint_(Landroid/graphics/PointF;I)F
    .locals 0

    .line 1212
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->distanceToPoint_(Landroid/graphics/PointF;I)F

    move-result p1

    return p1
.end method

.method protected distanceToSegment_(Landroid/graphics/PointF;Landroid/graphics/PointF;I)F
    .locals 0

    .line 1217
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/DrElement;->distanceToSegment_(Landroid/graphics/PointF;Landroid/graphics/PointF;I)F

    move-result p1

    return p1
.end method

.method protected editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z
    .locals 4

    .line 1020
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    .line 1041
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->updateVariationForRectInDegrees(Lcom/metamoji/cm/RectEx;F)V

    .line 1029
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingX()Z

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingY()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->applyReverse(ZZ)V

    .line 1032
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateX()F

    move-result v0

    .line 1033
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateY()F

    move-result v1

    .line 1034
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleWidth()F

    move-result v3

    .line 1035
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleHeight()F

    move-result p1

    .line 1032
    invoke-direct {p0, v0, v1, v3, p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->applyTranslate(FFFF)V

    :cond_1
    :goto_0
    return v2
.end method

.method public frameRect()Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 256
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 257
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->frameRect_()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method protected frameRect_()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method protected getBoundsResizeVariationWithResizeX_(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 8

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 1142
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1145
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v2

    .line 1146
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v0

    float-to-double v3, v0

    .line 1147
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v0, p1

    float-to-double v5, v0

    const/4 v7, 0x1

    .line 1145
    invoke-static/range {v2 .. v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->resizeValueForTotalWidth(Lcom/metamoji/cm/SizeF;DDZ)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    .line 1149
    iget v2, v0, Lcom/metamoji/cm/SizeF;->width:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    return-object v1

    .line 1152
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1153
    new-instance v2, Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;-><init>()V

    .line 1154
    iget v4, v0, Lcom/metamoji/cm/SizeF;->width:F

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {v2, v4, v0, v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->setResizeContext(FFLandroid/graphics/PointF;)V

    .line 1155
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v4

    invoke-virtual {v2, v0, v4}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->updateVariationForRectInDegrees(Lcom/metamoji/cm/RectEx;F)V

    .line 1156
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0, p1, v3, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->applyScaleWithoutReversingToRect(Lcom/metamoji/cm/RectEx;FFLandroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1157
    new-instance p2, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {p2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initRectTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p2

    .line 1158
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateX()F

    move-result v0

    iget v3, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v3

    iget v3, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    invoke-virtual {p2, v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateX(F)V

    .line 1159
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateY()F

    move-result v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p1

    iget p1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateY(F)V

    .line 1160
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleWidth()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleWidth(F)V

    .line 1161
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleHeight()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleHeight(F)V

    return-object p2
.end method

.method protected getBoundsResizeVariationWithResizeY_(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 8

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 1168
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1171
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v2

    .line 1172
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v0

    float-to-double v3, v0

    .line 1173
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v0, p1

    float-to-double v5, v0

    const/4 v7, 0x1

    .line 1171
    invoke-static/range {v2 .. v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->resizeValueForTotalHeight(Lcom/metamoji/cm/SizeF;DDZ)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    .line 1175
    iget v2, v0, Lcom/metamoji/cm/SizeF;->width:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    return-object v1

    .line 1178
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1179
    new-instance v2, Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;-><init>()V

    .line 1180
    iget v4, v0, Lcom/metamoji/cm/SizeF;->width:F

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {v2, v4, v0, v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->setResizeContext(FFLandroid/graphics/PointF;)V

    .line 1181
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v4

    invoke-virtual {v2, v0, v4}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->updateVariationForRectInDegrees(Lcom/metamoji/cm/RectEx;F)V

    .line 1182
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0, v3, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->applyScaleWithoutReversingToRect(Lcom/metamoji/cm/RectEx;FFLandroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1183
    new-instance p2, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {p2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initRectTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p2

    .line 1184
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateX()F

    move-result v0

    iget v3, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v3

    iget v3, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    invoke-virtual {p2, v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateX(F)V

    .line 1185
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateY()F

    move-result v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p1

    iget p1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateY(F)V

    .line 1186
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleWidth()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleWidth(F)V

    .line 1187
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleHeight()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleHeight(F)V

    return-object p2
.end method

.method protected getBoundsResizeVariationWithResize_(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1194
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p2

    .line 1197
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1198
    new-instance v1, Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;-><init>()V

    .line 1199
    invoke-virtual {v1, p1, p1, v0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->setResizeContext(FFLandroid/graphics/PointF;)V

    .line 1200
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->updateVariationForRectInDegrees(Lcom/metamoji/cm/RectEx;F)V

    .line 1201
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    invoke-static {v2, p1, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->applyScaleWithoutReversingToRect(Lcom/metamoji/cm/RectEx;FFLandroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1202
    new-instance p2, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {p2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initRectTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p2

    .line 1203
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateX()F

    move-result v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateX(F)V

    .line 1204
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateY()F

    move-result v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, p1

    iget p1, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p1

    invoke-virtual {p2, v2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateY(F)V

    .line 1205
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleWidth()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleWidth(F)V

    .line 1206
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleHeight()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleHeight(F)V

    return-object p2
.end method

.method protected highlightFramePadding_()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected highlightFrameStyle_()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected highlightRectWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;Lcom/metamoji/cm/RectEx;F)Lcom/metamoji/cm/RectEx;
    .locals 4

    .line 571
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0, p2}, Lcom/metamoji/cm/RectEx;-><init>(Lcom/metamoji/cm/RectEx;)V

    .line 572
    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrHighlightProcess:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->process()Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->editContext()Lcom/metamoji/un/draw2/module/element/DrEditContext;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 581
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 582
    new-instance p1, Lcom/metamoji/cm/RectEx;

    invoke-direct {p1}, Lcom/metamoji/cm/RectEx;-><init>()V

    return-object p1

    .line 584
    :cond_1
    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_2

    :goto_0
    return-object v0

    .line 590
    :cond_2
    invoke-virtual {p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->updateVariationForRectInRadians(Lcom/metamoji/cm/RectEx;F)V

    .line 593
    iget p2, v0, Lcom/metamoji/cm/RectEx;->x:F

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateX()F

    move-result p3

    add-float/2addr p2, p3

    iput p2, v0, Lcom/metamoji/cm/RectEx;->x:F

    .line 594
    iget p2, v0, Lcom/metamoji/cm/RectEx;->y:F

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateY()F

    move-result p3

    add-float/2addr p2, p3

    iput p2, v0, Lcom/metamoji/cm/RectEx;->y:F

    .line 595
    iget p2, v0, Lcom/metamoji/cm/RectEx;->width:F

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleWidth()F

    move-result p3

    mul-float/2addr p2, p3

    iput p2, v0, Lcom/metamoji/cm/RectEx;->width:F

    .line 596
    iget p2, v0, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleHeight()F

    move-result p1

    mul-float/2addr p2, p1

    iput p2, v0, Lcom/metamoji/cm/RectEx;->height:F

    return-object v0
.end method

.method protected highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V
    .locals 10

    .line 1051
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->highlightFrameStyle_()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 1057
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 1062
    :cond_1
    new-instance v1, Lcom/metamoji/cm/RectEx;

    invoke-direct {v1}, Lcom/metamoji/cm/RectEx;-><init>()V

    .line 1064
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrHighlightProcess:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->process()Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eq v0, v6, :cond_5

    const/4 v8, 0x4

    if-eq v0, v8, :cond_2

    goto/16 :goto_2

    .line 1088
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->editContext()Lcom/metamoji/un/draw2/module/element/DrEditContext;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p1, 0x0

    .line 1090
    invoke-static {v5, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1095
    :cond_3
    sget-object v5, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v9

    aget v5, v5, v9

    if-eq v5, v2, :cond_4

    if-eq v5, v4, :cond_4

    if-eq v5, v6, :cond_4

    if-eq v5, v8, :cond_4

    goto :goto_0

    .line 1100
    :cond_4
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightRect:Lcom/metamoji/cm/RectEx;

    iget v4, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightAngleInRadians:F

    invoke-virtual {p0, p1, v2, v4}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->highlightRectWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;Lcom/metamoji/cm/RectEx;F)Lcom/metamoji/cm/RectEx;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 1101
    iget v2, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightAngleInRadians:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInRadians()F

    move-result v0

    add-float/2addr v2, v0

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustRadian(F)F

    move-result v7

    goto :goto_0

    .line 1078
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightId:I

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->checkObjectWithId(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1079
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightId:I

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->removeObjectWithId(I)V

    const/4 p1, -0x1

    .line 1080
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightId:I

    .line 1081
    iput v5, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightOverlayId:I

    .line 1082
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightRect:Lcom/metamoji/cm/RectEx;

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 1083
    iput v7, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightAngleInRadians:F

    return-void

    .line 1068
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInRadians()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightAngleInRadians:F

    .line 1069
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightRect:Lcom/metamoji/cm/RectEx;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0, p1, v4, v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->highlightRectWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;Lcom/metamoji/cm/RectEx;F)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 1072
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightRect:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v1, v0}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 1073
    iget v7, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightAngleInRadians:F

    :goto_0
    move v2, v7

    .line 1115
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsEmpty(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 1122
    :cond_7
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v0

    iget v4, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightId:I

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->checkObjectWithId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1123
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v0

    .line 1126
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->highlightFramePadding_()F

    move-result v4

    iget v5, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightId:I

    .line 1123
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->repaintRect(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;FI)V

    goto :goto_1

    .line 1129
    :cond_8
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v0

    .line 1132
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->highlightFramePadding_()F

    move-result v4

    .line 1129
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->drawRect(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightId:I

    .line 1136
    :goto_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->uid()I

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightOverlayId:I

    :cond_9
    :goto_2
    return-void
.end method

.method protected initWithEditContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 748
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Lcom/metamoji/cm/RectEx;->set(FFFF)V

    .line 749
    iput v3, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateX:F

    .line 750
    iput v3, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateY:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 751
    iput v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleWidth:F

    .line 752
    iput v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleHeight:F

    const/4 v9, 0x0

    .line 753
    iput-boolean v9, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingX:Z

    .line 754
    iput-boolean v9, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingY:Z

    const/4 v4, -0x1

    .line 755
    iput v4, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_highlightId:I

    .line 765
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 767
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getRectFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/cm/RectEx;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 770
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editWithVariationAlways()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 771
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getTranslateXFromModel(Lcom/metamoji/df/model/IModel;)F

    move-result v4

    iput v4, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateX:F

    .line 772
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getTranslateYFromModel(Lcom/metamoji/df/model/IModel;)F

    move-result v4

    iput v4, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateY:F

    .line 773
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getScaleWidthFromModel(Lcom/metamoji/df/model/IModel;)F

    move-result v4

    iput v4, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleWidth:F

    .line 774
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getScaleHeightFromModel(Lcom/metamoji/df/model/IModel;)F

    move-result v4

    iput v4, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleHeight:F

    .line 778
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getIsReversingXFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingX:Z

    .line 779
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getIsReversingYFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingY:Z

    .line 782
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->wasPreEdited()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 783
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getPreEditTranslateXFromModel(Lcom/metamoji/df/model/IModel;)F

    move-result v4

    .line 784
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getPreEditTranslateYfromModel(Lcom/metamoji/df/model/IModel;)F

    move-result v5

    .line 785
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getPreEditScaleWidthFromModel(Lcom/metamoji/df/model/IModel;)F

    move-result v6

    .line 786
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v7

    invoke-static {v7}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getPreEditScaleHeightFromModel(Lcom/metamoji/df/model/IModel;)F

    move-result v7

    .line 787
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getPreEditIsReversingXFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v8

    .line 788
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v10

    invoke-static {v10}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getPreEditIsReversingYFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v10

    cmpl-float v11, v4, v3

    if-nez v11, :cond_1

    cmpl-float v11, v5, v3

    if-eqz v11, :cond_2

    .line 790
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-static {v11, v12, v13, v12, v13}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->savePreEditTranslateToModel(Lcom/metamoji/df/model/IModel;DD)V

    :cond_2
    cmpl-float v11, v6, v2

    if-nez v11, :cond_3

    cmpl-float v11, v7, v2

    if-eqz v11, :cond_4

    .line 793
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v11

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12, v13, v12, v13}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->savePreEditScaleToModel(Lcom/metamoji/df/model/IModel;DD)V

    :cond_4
    if-nez v8, :cond_5

    if-eqz v10, :cond_7

    .line 796
    :cond_5
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v11

    invoke-static {v11, v9, v9}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->savePreEditIsReversingToModel(Lcom/metamoji/df/model/IModel;ZZ)V

    goto :goto_0

    :cond_6
    move v6, v2

    move v7, v6

    move v4, v3

    move v5, v4

    move v8, v9

    move v10, v8

    .line 802
    :cond_7
    :goto_0
    iget-object v11, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-static {v11}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v11

    const/4 v12, 0x1

    if-nez v11, :cond_13

    if-eqz v1, :cond_b

    .line 805
    iget-object v11, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v11, v11, Lcom/metamoji/cm/RectEx;->x:F

    .line 806
    iget-object v13, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v13, v13, Lcom/metamoji/cm/RectEx;->y:F

    .line 807
    iget-object v14, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v14, v14, Lcom/metamoji/cm/RectEx;->width:F

    .line 808
    iget-object v15, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v15, v15, Lcom/metamoji/cm/RectEx;->height:F

    move/from16 v16, v2

    .line 811
    new-instance v2, Lcom/metamoji/cm/RectEx;

    invoke-direct {v2, v11, v13, v14, v15}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    move/from16 v17, v3

    .line 812
    iget v3, v2, Lcom/metamoji/cm/RectEx;->x:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/metamoji/cm/RectEx;->x:F

    .line 813
    iget v3, v2, Lcom/metamoji/cm/RectEx;->y:F

    add-float/2addr v3, v5

    iput v3, v2, Lcom/metamoji/cm/RectEx;->y:F

    .line 814
    iget v3, v2, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v3, v6

    iput v3, v2, Lcom/metamoji/cm/RectEx;->width:F

    .line 815
    iget v3, v2, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v3, v7

    iput v3, v2, Lcom/metamoji/cm/RectEx;->height:F

    .line 818
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->updateVariationForRectInDegrees(Lcom/metamoji/cm/RectEx;F)V

    .line 821
    iget v3, v2, Lcom/metamoji/cm/RectEx;->x:F

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateX()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/metamoji/cm/RectEx;->x:F

    .line 822
    iget v3, v2, Lcom/metamoji/cm/RectEx;->y:F

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateY()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/metamoji/cm/RectEx;->y:F

    .line 823
    iget v3, v2, Lcom/metamoji/cm/RectEx;->width:F

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleWidth()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/metamoji/cm/RectEx;->width:F

    .line 824
    iget v3, v2, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleHeight()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/metamoji/cm/RectEx;->height:F

    .line 827
    iget v3, v2, Lcom/metamoji/cm/RectEx;->x:F

    sub-float v4, v3, v11

    .line 828
    iget v3, v2, Lcom/metamoji/cm/RectEx;->y:F

    sub-float v5, v3, v13

    cmpl-float v3, v14, v17

    if-eqz v3, :cond_8

    .line 829
    iget v3, v2, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v3, v14

    move v6, v3

    goto :goto_1

    :cond_8
    move/from16 v6, v16

    :goto_1
    cmpl-float v3, v15, v17

    if-eqz v3, :cond_9

    .line 830
    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v2, v15

    move v7, v2

    goto :goto_2

    :cond_9
    move/from16 v7, v16

    .line 833
    :goto_2
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingX()Z

    move-result v2

    if-eqz v2, :cond_a

    xor-int/lit8 v8, v8, 0x1

    .line 836
    :cond_a
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingY()Z

    move-result v2

    if-eqz v2, :cond_c

    xor-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_b
    move/from16 v16, v2

    move/from16 v17, v3

    :cond_c
    :goto_3
    cmpl-float v2, v4, v17

    if-nez v2, :cond_d

    cmpl-float v2, v5, v17

    if-nez v2, :cond_d

    cmpl-float v2, v6, v16

    if-nez v2, :cond_d

    cmpl-float v2, v7, v16

    if-eqz v2, :cond_e

    .line 843
    :cond_d
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v3, v2, Lcom/metamoji/cm/RectEx;->x:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/metamoji/cm/RectEx;->x:F

    .line 844
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v3, v2, Lcom/metamoji/cm/RectEx;->y:F

    add-float/2addr v3, v5

    iput v3, v2, Lcom/metamoji/cm/RectEx;->y:F

    .line 845
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v3, v2, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v3, v6

    iput v3, v2, Lcom/metamoji/cm/RectEx;->width:F

    .line 846
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v3, v2, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v3, v7

    iput v3, v2, Lcom/metamoji/cm/RectEx;->height:F

    .line 847
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 848
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->saveRectToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/RectEx;)V

    :cond_e
    if-eqz v8, :cond_f

    .line 854
    iget-boolean v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingX:Z

    xor-int/2addr v2, v12

    iput-boolean v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingX:Z

    :cond_f
    if-eqz v10, :cond_10

    .line 857
    iget-boolean v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingY:Z

    xor-int/2addr v2, v12

    iput-boolean v2, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingY:Z

    :cond_10
    if-nez v8, :cond_11

    if-eqz v10, :cond_12

    .line 859
    :cond_11
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 860
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    iget-boolean v3, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingX:Z

    iget-boolean v11, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingY:Z

    invoke-static {v2, v3, v11}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->saveIsReversingToModel(Lcom/metamoji/df/model/IModel;ZZ)V

    :cond_12
    move v2, v5

    move v3, v6

    move v5, v8

    move v6, v10

    goto :goto_4

    :cond_13
    move/from16 v16, v2

    move/from16 v17, v3

    move v5, v9

    move v6, v5

    move/from16 v3, v16

    move v7, v3

    move/from16 v2, v17

    move v4, v2

    .line 873
    :goto_4
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editWithVariationAlways()Z

    move-result v8

    if-eqz v8, :cond_17

    cmpl-float v8, v4, v17

    if-nez v8, :cond_14

    cmpl-float v8, v2, v17

    if-eqz v8, :cond_15

    .line 875
    :cond_14
    iget v8, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateX:F

    add-float/2addr v8, v4

    iput v8, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateX:F

    .line 876
    iget v8, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateY:F

    add-float/2addr v8, v2

    iput v8, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateY:F

    .line 877
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    if-eqz v8, :cond_15

    .line 878
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    iget v10, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateX:F

    float-to-double v10, v10

    iget v13, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateY:F

    float-to-double v13, v13

    invoke-static {v8, v10, v11, v13, v14}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->saveTranslateToModel(Lcom/metamoji/df/model/IModel;DD)V

    :cond_15
    cmpl-float v8, v3, v16

    if-nez v8, :cond_16

    cmpl-float v8, v7, v16

    if-eqz v8, :cond_17

    .line 882
    :cond_16
    iget v8, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleWidth:F

    mul-float/2addr v8, v3

    iput v8, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleWidth:F

    .line 883
    iget v8, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleHeight:F

    mul-float/2addr v8, v7

    iput v8, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleHeight:F

    .line 884
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    if-eqz v8, :cond_17

    .line 885
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    iget v10, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleWidth:F

    float-to-double v10, v10

    iget v13, v0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleHeight:F

    float-to-double v13, v13

    invoke-static {v8, v10, v11, v13, v14}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->saveScaleToModel(Lcom/metamoji/df/model/IModel;DD)V

    .line 891
    :cond_17
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->updateBounds()V

    .line 894
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->preEditAngleInDegrees()F

    move-result v8

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result v10

    add-float/2addr v8, v10

    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result v8

    .line 895
    :cond_18
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->preEditContentScale()F

    move-result v10

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result v1

    mul-float/2addr v10, v1

    :cond_19
    move v1, v4

    move v4, v7

    move v7, v8

    move v8, v10

    .line 896
    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->initWithTranslate_(FFFFZZFF)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v0, 0x0

    .line 904
    invoke-static {v9, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v9

    .line 909
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->updateMinScale()V

    return v12
.end method

.method protected initWithTranslate_(FFFFZZFF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected isErasable_()Z
    .locals 1

    .line 986
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isErasable_()Z

    move-result v0

    return v0
.end method

.method protected isMovable_()Z
    .locals 1

    .line 966
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isMovable_()Z

    move-result v0

    return v0
.end method

.method protected isResizable_()Z
    .locals 1

    .line 971
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isResizable_()Z

    move-result v0

    return v0
.end method

.method protected isReversible_()Z
    .locals 1

    .line 976
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isReversible_()Z

    move-result v0

    return v0
.end method

.method public isReversingX()Z
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 203
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 206
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingX:Z

    return v0
.end method

.method public isReversingY()Z
    .locals 2

    .line 211
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 212
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 215
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingY:Z

    return v0
.end method

.method protected isRotatable_()Z
    .locals 1

    .line 981
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isRotatable_()Z

    move-result v0

    return v0
.end method

.method protected isSelectable_()Z
    .locals 1

    .line 961
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isSelectable_()Z

    move-result v0

    return v0
.end method

.method public leftBottom()Landroid/graphics/PointF;
    .locals 2

    .line 238
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 239
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 240
    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftBottom:Landroid/graphics/PointF;

    return-object v0
.end method

.method public leftTop()Landroid/graphics/PointF;
    .locals 2

    .line 220
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 221
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 222
    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftTop:Landroid/graphics/PointF;

    return-object v0
.end method

.method protected minScaleHeight_()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected minScaleWidth_()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected minScaleX_()F
    .locals 1

    .line 936
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_minScaleX:F

    return v0
.end method

.method protected minScaleY_()F
    .locals 1

    .line 941
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_minScaleY:F

    return v0
.end method

.method protected minScale_()F
    .locals 2

    .line 931
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_minScaleX:F

    iget v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_minScaleY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method protected noFocusing_()Z
    .locals 1

    .line 1011
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->noFocusing_()Z

    move-result v0

    return v0
.end method

.method protected noResizingX_()Z
    .locals 1

    .line 996
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->noResizingX_()Z

    move-result v0

    return v0
.end method

.method protected noResizingY_()Z
    .locals 1

    .line 1001
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->noResizingY_()Z

    move-result v0

    return v0
.end method

.method protected noResizing_()Z
    .locals 1

    .line 991
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->noResizing_()Z

    move-result v0

    return v0
.end method

.method protected noRotating_()Z
    .locals 1

    .line 1006
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->noRotating_()Z

    move-result v0

    return v0
.end method

.method public rect()Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public rectHeight()F
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    return v0
.end method

.method public rectWidth()F
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->width:F

    return v0
.end method

.method public rectX()F
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->x:F

    return v0
.end method

.method public rectY()F
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->y:F

    return v0
.end method

.method protected repaintHighlightAlways_()Z
    .locals 1

    .line 956
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->repaintHighlightAlways_()Z

    move-result v0

    return v0
.end method

.method protected repaint_()V
    .locals 0

    return-void
.end method

.method public rightBottom()Landroid/graphics/PointF;
    .locals 2

    .line 247
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 248
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 249
    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightBottom:Landroid/graphics/PointF;

    return-object v0
.end method

.method public rightTop()Landroid/graphics/PointF;
    .locals 2

    .line 229
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 230
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 231
    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightTop:Landroid/graphics/PointF;

    return-object v0
.end method

.method protected samplePointAtIndex_(I)Landroid/graphics/PointF;
    .locals 0

    .line 1227
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftTop:Landroid/graphics/PointF;

    return-object p1
.end method

.method protected samplePointCount_()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public scaleHeight()F
    .locals 2

    .line 193
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 194
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 197
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleHeight:F

    return v0
.end method

.method public scaleWidth()F
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 185
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 188
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleWidth:F

    return v0
.end method

.method public setRect(Lcom/metamoji/cm/RectEx;)V
    .locals 12

    .line 87
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 88
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 91
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 92
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 95
    :cond_1
    iget v0, p1, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    goto :goto_1

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectEqualToRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 104
    :cond_3
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    sub-float v4, v0, v1

    .line 105
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    sub-float v5, v0, v1

    .line 107
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    .line 108
    iget v0, p1, Lcom/metamoji/cm/RectEx;->width:F

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v0, v3

    move v6, v0

    goto :goto_0

    :cond_4
    move v6, v1

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5

    .line 112
    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    div-float v1, p1, v0

    :cond_5
    move v7, v1

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    .line 116
    invoke-virtual/range {v3 .. v11}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->applyVariationWithTranslate(FFFFZZFF)V

    return-void

    :cond_6
    :goto_1
    const/4 p1, 0x2

    .line 96
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public translateX()F
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 169
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 172
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateX:F

    return v0
.end method

.method public translateY()F
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 177
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 180
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateY:F

    return v0
.end method

.method protected type_()Lcom/metamoji/un/draw2/module/element/DrElementType;
    .locals 1

    .line 916
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->type_()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v0

    return-object v0
.end method

.method protected updateBounds()V
    .locals 6

    .line 1270
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    .line 1271
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInRadians()F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftTop:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightTop:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftBottom:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightBottom:Landroid/graphics/PointF;

    .line 1270
    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkCornerOfRectInRadians(Lcom/metamoji/cm/RectEx;FLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1278
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingX:Z

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftTop:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightTop:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->swap(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1280
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftBottom:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightBottom:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->swap(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1282
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingY:Z

    if-eqz v0, :cond_1

    .line 1283
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftTop:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftBottom:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->swap(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1284
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightTop:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightBottom:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->swap(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1288
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInRadians()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftTop:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightTop:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_leftBottom:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rightBottom:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    .line 1289
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v1, v0}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 1292
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->updateBounds()V

    return-void
.end method

.method public updateIsReversing(ZZ)V
    .locals 1

    .line 674
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingX:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingY:Z

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 677
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingX:Z

    .line 678
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingY:Z

    .line 679
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 680
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingX:Z

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_isReversingY:Z

    invoke-static {p1, p2, v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->saveIsReversingToModel(Lcom/metamoji/df/model/IModel;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateMinScale()V
    .locals 3

    .line 691
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->minScaleWidth_()F

    move-result v0

    .line 692
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->minScaleHeight_()F

    move-result v1

    .line 693
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkAxisSwitchingZoneForAngleInDegrees(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 694
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_minScaleX:F

    .line 695
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_minScaleY:F

    return-void

    .line 697
    :cond_0
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_minScaleX:F

    .line 698
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_minScaleY:F

    return-void
.end method

.method protected updateRect(Lcom/metamoji/cm/RectEx;)V
    .locals 1

    .line 623
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 624
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectEqualToRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 629
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 630
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->saveRectToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/RectEx;)V

    .line 633
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->updateBounds()V

    .line 634
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->updateMinScale()V

    return-void
.end method

.method protected updateScale(FF)V
    .locals 4

    .line 656
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editWithVariationAlways()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleHeight:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    .line 662
    :cond_1
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleWidth:F

    .line 663
    iput p2, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleHeight:F

    .line 664
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 665
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget p2, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleWidth:F

    float-to-double v0, p2

    iget p2, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_scaleHeight:F

    float-to-double v2, p2

    invoke-static {p1, v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->saveScaleToModel(Lcom/metamoji/df/model/IModel;DD)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateTranslate(FF)V
    .locals 4

    .line 642
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editWithVariationAlways()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 645
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateY:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    .line 648
    :cond_1
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateX:F

    .line 649
    iput p2, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateY:F

    .line 650
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 651
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget p2, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateX:F

    float-to-double v0, p2

    iget p2, p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->m_translateY:F

    float-to-double v2, p2

    invoke-static {p1, v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->saveTranslateToModel(Lcom/metamoji/df/model/IModel;DD)V

    :cond_2
    :goto_0
    return-void
.end method
