.class public abstract Lcom/metamoji/un/draw2/module/element/DrElement;
.super Ljava/lang/Object;
.source "DrElement.java"


# static fields
.field protected static final MODEL_PROPERTY_ANGLE:Ljava/lang/String; = "A"

.field protected static final MODEL_PROPERTY_BASE_TYPE:Ljava/lang/String; = "B"

.field protected static final MODEL_PROPERTY_BOUNDS_HEIGHT:Ljava/lang/String; = "BH"

.field protected static final MODEL_PROPERTY_BOUNDS_WIDTH:Ljava/lang/String; = "BW"

.field protected static final MODEL_PROPERTY_BOUNDS_X:Ljava/lang/String; = "BX"

.field protected static final MODEL_PROPERTY_BOUNDS_Y:Ljava/lang/String; = "BY"

.field protected static final MODEL_PROPERTY_CONTENT_SCALE:Ljava/lang/String; = "C"

.field protected static final MODEL_PROPERTY_ID:Ljava/lang/String; = "I"

.field protected static final MODEL_PROPERTY_IS_ERASABLE:Ljava/lang/String; = "E?"

.field protected static final MODEL_PROPERTY_IS_MOVABLE:Ljava/lang/String; = "M?"

.field protected static final MODEL_PROPERTY_IS_RESIZABLE:Ljava/lang/String; = "R?"

.field protected static final MODEL_PROPERTY_IS_REVERSIBLE:Ljava/lang/String; = "V?"

.field protected static final MODEL_PROPERTY_IS_ROTATABLE:Ljava/lang/String; = "O?"

.field protected static final MODEL_PROPERTY_IS_SELECTABLE:Ljava/lang/String; = "S?"

.field protected static final MODEL_PROPERTY_PRE_EDIT_ANGLE:Ljava/lang/String; = "PR"

.field protected static final MODEL_PROPERTY_PRE_EDIT_CONTENT_SCALE:Ljava/lang/String; = "PS"

.field protected static final MODEL_PROPERTY_TYPE:Ljava/lang/String; = "T"

.field protected static final MODEL_PROPERTY_WAS_PRE_EDITED:Ljava/lang/String; = "PE"

.field public static final MODEL_TYPE:Ljava/lang/String; = "E"


# instance fields
.field private m_angleInDegrees:F

.field private m_angleInRadians:F

.field private m_contentScale:F

.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

.field private m_externalProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_highlightBaseColor:Ljava/lang/Integer;

.field private m_information:Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

.field private m_isActive:Z

.field private m_isDeallocating:Z

.field private m_isDestroyed:Z

.field private m_isEditing:Z

.field private m_isErasable:Z

.field private m_isExtraHandleable:Z

.field private m_isInitializing:Z

.field private m_isMovable:Z

.field private m_isResizable:Z

.field private m_isReversible:Z

.field private m_isRotatable:Z

.field private m_isSelectable:Z

.field private m_linkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_preEditAngleInDegrees:F

.field private m_preEditContentScale:F

.field private m_sprite:Lcom/metamoji/df/sprite/Sprite;

.field private m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_wasPreEdited:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetm_sprite(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/df/sprite/Sprite;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyAngleInDegrees(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 1813
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInDegrees:F

    add-float/2addr v0, p1

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInDegrees:F

    .line 1814
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->radianFromDegree(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInRadians:F

    .line 1815
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInDegrees:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveAngleInDegreesToModel(Lcom/metamoji/df/model/IModel;F)V

    return-void
.end method

.method private applyAngleInRadians(F)V
    .locals 0

    .line 1819
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->applyAngleInDegrees(F)V

    return-void
.end method

.method private applyContentScale(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 1826
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_contentScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_contentScale:F

    .line 1827
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveContentScaleToModel(Lcom/metamoji/df/model/IModel;F)V

    return-void
.end method

.method protected static applyPreEditAngleInDegreesToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1743
    :cond_1
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->checkPreEditAngleInDegreesFromModel(Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1745
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    add-float/2addr p1, v0

    .line 1747
    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result p1

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->savePreEditAngleToModel(Lcom/metamoji/df/model/IModel;F)V

    return-void
.end method

.method protected static applyPreEditAngleInRadiansToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 0

    .line 1751
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p1

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->applyPreEditAngleInDegreesToModel(Lcom/metamoji/df/model/IModel;F)V

    return-void
.end method

.method protected static applyPreEditContentScaleToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 1759
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 1765
    :cond_2
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->checkPreEditContentScaleFromModel(Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1767
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    mul-float/2addr p1, v0

    .line 1769
    :cond_3
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->savePreEditContentScaleToModel(Lcom/metamoji/df/model/IModel;F)V

    return-void
.end method

.method protected static applyWasPreEditedToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1733
    :cond_0
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveWasPreEditedToModel(Lcom/metamoji/df/model/IModel;Z)V

    return-void
.end method

.method public static checkAngleInDegreesFromModel(Lcom/metamoji/df/model/IModel;F)F
    .locals 1

    if-nez p0, :cond_0

    return p1

    .line 1538
    :cond_0
    const-string v0, "A"

    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    return p0
.end method

.method public static checkAngleInRadiansFromModel(Lcom/metamoji/df/model/IModel;F)F
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    .line 1545
    :cond_0
    const-string v0, "A"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1546
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->radianFromDegree(F)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method public static checkContentScaleFromModel(Lcom/metamoji/df/model/IModel;F)F
    .locals 1

    if-nez p0, :cond_0

    return p1

    .line 1553
    :cond_0
    const-string v0, "C"

    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    return p0
.end method

.method public static checkElementModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 1510
    const-string v0, "E"

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->type(Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected static checkNecessityOfForwardCompatibilityOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 1783
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 1787
    :cond_0
    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 1796
    :cond_1
    check-cast p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->arrowType()Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->intValue()I

    move-result p0

    sget-object v1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->intValue()I

    move-result v1

    if-le p0, v1, :cond_3

    return v3

    .line 1790
    :cond_2
    check-cast p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->shapeType()Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->intValue()I

    move-result p0

    sget-object v1, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->BALLOON_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->intValue()I

    move-result v1

    if-le p0, v1, :cond_3

    return v3

    :cond_3
    :goto_0
    return v0
.end method

.method public static checkPreEditAngleInDegreesFromModel(Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1609
    :cond_0
    const-string v0, "PR"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static checkPreEditAngleInRadiansFromModel(Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1616
    :cond_0
    const-string v1, "PR"

    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1617
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->radianFromDegree(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static checkPreEditContentScaleFromModel(Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1624
    :cond_0
    const-string v0, "PS"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static getBaseTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/DrElementBaseType;
    .locals 2

    if-nez p0, :cond_0

    .line 1522
    sget-object p0, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->NONE:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    return-object p0

    .line 1524
    :cond_0
    const-string v0, "B"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->NONE:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    return-object p0
.end method

.method public static getBoundsFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/cm/RectEx;
    .locals 4

    if-nez p0, :cond_0

    .line 1629
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0

    .line 1635
    :cond_0
    const-string v0, "BX"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "BY"

    .line 1636
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "BW"

    .line 1637
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "BH"

    .line 1638
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1639
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0

    .line 1641
    :cond_1
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0
.end method

.method public static getIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1531
    :cond_0
    const-string v0, "I"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method public static getIsErasableFromModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1595
    :cond_0
    const-string v1, "E?"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0
.end method

.method public static getIsMovableFromModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1567
    :cond_0
    const-string v1, "M?"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0
.end method

.method public static getIsResizableFromModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1574
    :cond_0
    const-string v1, "R?"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0
.end method

.method public static getIsReversibleFromModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1581
    :cond_0
    const-string v1, "V?"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0
.end method

.method public static getIsRotatableFromModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1588
    :cond_0
    const-string v1, "O?"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0
.end method

.method public static getIsSelectableFromModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1560
    :cond_0
    const-string v1, "S?"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0
.end method

.method public static getTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/DrElementType;
    .locals 2

    if-nez p0, :cond_0

    .line 1515
    sget-object p0, Lcom/metamoji/un/draw2/module/element/DrElementType;->NONE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    return-object p0

    .line 1517
    :cond_0
    const-string v0, "T"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/DrElementType;

    return-object p0
.end method

.method public static getWasPreEditedFromModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1602
    :cond_0
    const-string v1, "PE"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0
.end method

.method protected static newEmptyElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 1646
    const-string v0, "E"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1648
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static restoreElementFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;
    .locals 7

    .line 1654
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->checkElementModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 1655
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1659
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->getTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 1700
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$arrow$DrArrowType:[I

    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->getArrowTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    .line 1708
    new-instance v0, Lcom/metamoji/un/draw2/module/element/arrow/DrUnknownArrowElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrUnknownArrowElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrUnknownArrowElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    return-object p0

    .line 1704
    :cond_2
    new-instance v0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    return-object p0

    .line 1702
    :cond_3
    new-instance v0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    return-object p0

    .line 1677
    :cond_4
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$shape$DrShapeType:[I

    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->getShapeTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1695
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->getIsSegmentalFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1696
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrUnknownShapeElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrUnknownShapeElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrUnknownShapeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    return-object p0

    .line 1691
    :pswitch_0
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    return-object p0

    .line 1689
    :pswitch_1
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    return-object p0

    .line 1687
    :pswitch_2
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    return-object p0

    .line 1685
    :pswitch_3
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    return-object p0

    .line 1683
    :pswitch_4
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    return-object p0

    .line 1681
    :pswitch_5
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    return-object p0

    .line 1679
    :pswitch_6
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    return-object p0

    .line 1675
    :cond_5
    new-instance v0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    return-object p0

    .line 1661
    :cond_6
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$stroke$DrStrokeType:[I

    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->getStrokeTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->ordinal()I

    move-result v6

    aget v0, v0, v6

    if-eq v0, v5, :cond_c

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_9

    .line 1712
    :cond_7
    :goto_0
    sget-object p1, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->getBaseTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v5, :cond_8

    if-eq p0, v4, :cond_8

    .line 1720
    invoke-static {v5, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_8
    return-object v1

    .line 1669
    :cond_9
    new-instance v0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    return-object p0

    .line 1667
    :cond_a
    new-instance v0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    return-object p0

    .line 1665
    :cond_b
    new-instance v0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    return-object p0

    .line 1663
    :cond_c
    new-instance v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static saveAngleInDegreesToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 1837
    const-string v1, "A"

    if-eqz v0, :cond_1

    .line 1838
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1840
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveAngleInRadiansToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1848
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p1

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveAngleInDegreesToModel(Lcom/metamoji/df/model/IModel;F)V

    return-void
.end method

.method private static saveBoundsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/RectEx;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 1965
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    const-string v1, "BH"

    const-string v2, "BW"

    const-string v3, "BY"

    const-string v4, "BX"

    if-nez v0, :cond_1

    .line 1966
    iget v0, p1, Lcom/metamoji/cm/RectEx;->x:F

    invoke-static {v4, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    .line 1967
    iget v0, p1, Lcom/metamoji/cm/RectEx;->y:F

    invoke-static {v3, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    .line 1968
    iget v0, p1, Lcom/metamoji/cm/RectEx;->width:F

    invoke-static {v2, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    .line 1969
    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1971
    :cond_1
    invoke-static {v4, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1972
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1973
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1974
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveContentScaleToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    .line 1855
    const-string v1, "C"

    if-eqz v0, :cond_1

    .line 1856
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1858
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveIsErasableToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1921
    :cond_0
    const-string v0, "E?"

    if-eqz p1, :cond_1

    .line 1922
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1924
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveIsMovableToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1877
    :cond_0
    const-string v0, "M?"

    if-eqz p1, :cond_1

    .line 1878
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1880
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveIsResizableToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1888
    :cond_0
    const-string v0, "R?"

    if-eqz p1, :cond_1

    .line 1889
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1891
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveIsReversibleToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1899
    :cond_0
    const-string v0, "V?"

    if-eqz p1, :cond_1

    .line 1900
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1902
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveIsRotatableToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1910
    :cond_0
    const-string v0, "O?"

    if-eqz p1, :cond_1

    .line 1911
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1913
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveIsSelectableToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1866
    :cond_0
    const-string v0, "S?"

    if-eqz p1, :cond_1

    .line 1867
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1869
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePreEditAngleToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 1943
    const-string v1, "PR"

    if-eqz v0, :cond_1

    .line 1944
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1946
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePreEditContentScaleToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    .line 1954
    const-string v1, "PS"

    if-eqz v0, :cond_1

    .line 1955
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1957
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveWasPreEditedToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1932
    :cond_0
    const-string v0, "PE"

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1933
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1935
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method


# virtual methods
.method activate()V
    .locals 4

    .line 1116
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1117
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1120
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isActive:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 1121
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1124
    :cond_1
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isActive:Z

    .line 1125
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->activate_()V

    .line 1126
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->updateCovers()V

    .line 1127
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->repaint_()V

    .line 1128
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_linkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1129
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->registerFollower(Lcom/metamoji/un/draw2/module/element/DrElement;Z)V

    :cond_2
    return-void
.end method

.method protected activate_()V
    .locals 0

    return-void
.end method

.method public angleInDegrees()F
    .locals 2

    .line 397
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 398
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 401
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInDegrees:F

    return v0
.end method

.method public angleInRadians()F
    .locals 2

    .line 406
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 407
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 410
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInRadians:F

    return v0
.end method

.method public baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;
    .locals 2

    .line 325
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 326
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 327
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->NONE:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    return-object v0

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType_()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v0

    return-object v0
.end method

.method protected baseType_()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;
    .locals 1

    .line 1380
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->NONE:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    return-object v0
.end method

.method public bounds()Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 379
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 380
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds_()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method protected bounds_()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 1384
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method public clearAngle()V
    .locals 2

    .line 981
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 982
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 985
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->updateAngleInDegrees(F)V

    return-void
.end method

.method public clearContentScale()V
    .locals 2

    .line 989
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 990
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 993
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->updateContentScale(F)V

    return-void
.end method

.method public contentScale()F
    .locals 2

    .line 415
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 416
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 419
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_contentScale:F

    return v0
.end method

.method public context()Lcom/metamoji/un/draw2/module/DrModuleContext;
    .locals 2

    .line 307
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 308
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    return-object v0
.end method

.method public coverAtIndex(I)Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 724
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 725
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 726
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1

    .line 728
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->coverCount_()I

    move-result v0

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    .line 730
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 731
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1

    .line 733
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->coverAtIndex_(I)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected coverAtIndex_(I)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 1404
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method public coverCount()I
    .locals 2

    .line 451
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 452
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->coverCount_()I

    move-result v0

    return v0
.end method

.method protected coverCount_()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 2

    .line 965
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 966
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 969
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->createVariation_()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 971
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInDegrees:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setAngleInDegrees(F)V

    .line 972
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_contentScale:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setContentScale(F)V

    :cond_1
    return-object v0
.end method

.method protected createVariation_()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method deactivate()V
    .locals 3

    .line 1134
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1135
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1138
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isActive:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1139
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1142
    :cond_1
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isActive:Z

    .line 1143
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->deactivate_()V

    .line 1144
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->updateCovers()V

    .line 1145
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_linkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1146
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->unregisterFollower(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    :cond_2
    return-void
.end method

.method protected deactivate_()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1086
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 1089
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->destroy_()V

    const/4 v0, 0x0

    .line 1090
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 1091
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    .line 1092
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    .line 1093
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1094
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_linkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    .line 1095
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_information:Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    .line 1096
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_highlightBaseColor:Ljava/lang/Integer;

    .line 1097
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_externalProperties:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 1098
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    return-void
.end method

.method protected destroy_()V
    .locals 0

    return-void
.end method

.method public displayBounds()Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 388
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 389
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds_()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method public distanceToPoint(Landroid/graphics/PointF;)F
    .locals 5

    .line 888
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 889
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 892
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->coverCount_()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 895
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->distanceToPoint_(Landroid/graphics/PointF;I)F

    move-result v3

    cmpg-float v4, v3, v2

    if-gez v4, :cond_1

    move v2, v3

    :cond_1
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public distanceToPoint(Landroid/graphics/PointF;I)F
    .locals 3

    .line 907
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 908
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 911
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->coverCount_()I

    move-result v0

    if-lt p2, v0, :cond_1

    const/4 p1, 0x1

    .line 912
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 915
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->distanceToPoint_(Landroid/graphics/PointF;I)F

    move-result p1

    return p1
.end method

.method protected distanceToPoint_(Landroid/graphics/PointF;I)F
    .locals 0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    return p1
.end method

.method public distanceToSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 5

    .line 919
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 920
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 923
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->coverCount_()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 926
    invoke-virtual {p0, p1, p2, v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->distanceToSegment_(Landroid/graphics/PointF;Landroid/graphics/PointF;I)F

    move-result v3

    cmpg-float v4, v3, v2

    if-gez v4, :cond_1

    move v2, v3

    :cond_1
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public distanceToSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;I)F
    .locals 3

    .line 938
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 939
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 942
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->coverCount_()I

    move-result v0

    if-lt p3, v0, :cond_1

    const/4 p1, 0x1

    .line 943
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 946
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/DrElement;->distanceToSegment_(Landroid/graphics/PointF;Landroid/graphics/PointF;I)F

    move-result p1

    return p1
.end method

.method protected distanceToSegment_(Landroid/graphics/PointF;Landroid/graphics/PointF;I)F
    .locals 0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    return p1
.end method

.method public editWithContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V
    .locals 7

    .line 740
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 741
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 745
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 750
    :cond_1
    sget-object v3, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x2

    if-eq v3, v0, :cond_9

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq v3, v4, :cond_7

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_2

    goto :goto_0

    .line 779
    :cond_2
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isRotatable:Z

    if-nez v3, :cond_3

    const/4 p1, 0x7

    .line 780
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 783
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->applyAngleInDegrees(F)V

    goto :goto_0

    .line 768
    :cond_4
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isResizable:Z

    if-nez v3, :cond_5

    const/4 p1, 0x5

    .line 769
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 772
    :cond_5
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isReversible:Z

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->isReverse()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 p1, 0x6

    .line 773
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 776
    :cond_6
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->applyContentScale(F)V

    goto :goto_0

    .line 758
    :cond_7
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isResizable:Z

    if-nez v3, :cond_8

    .line 759
    invoke-static {v6, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 762
    :cond_8
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isReversible:Z

    if-nez v3, :cond_a

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->isReverse()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 763
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 752
    :cond_9
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isMovable:Z

    if-nez v3, :cond_a

    .line 753
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 792
    :cond_a
    :goto_0
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isEditing:Z

    .line 795
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isActive:Z

    if-eqz p1, :cond_b

    .line 796
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->updateCovers()V

    .line 797
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->repaint_()V

    .line 801
    :cond_b
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isEditing:Z

    return-void
.end method

.method protected editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    .line 288
    :try_start_0
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDeallocating:Z

    .line 289
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDeallocating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 295
    throw v0
.end method

.method public getBoundsResizeVariationWithResize(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 2

    .line 867
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 868
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 872
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    return-object v1

    .line 878
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->getBoundsResizeVariationWithResize_(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p1

    return-object p1
.end method

.method public getBoundsResizeVariationWithResizeX(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 2

    .line 837
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 838
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 842
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    return-object v1

    .line 848
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->getBoundsResizeVariationWithResizeX_(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p1

    return-object p1
.end method

.method protected getBoundsResizeVariationWithResizeX_(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBoundsResizeVariationWithResizeY(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 2

    .line 852
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 853
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 857
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    return-object v1

    .line 863
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->getBoundsResizeVariationWithResizeY_(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p1

    return-object p1
.end method

.method protected getBoundsResizeVariationWithResizeY_(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getBoundsResizeVariationWithResize_(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getExternalPropertyForName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1042
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1043
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 1047
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1050
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_externalProperties:Ljava/util/HashMap;

    if-nez v0, :cond_2

    return-object v1

    .line 1053
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public highlightBaseColor()Ljava/lang/Integer;
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_highlightBaseColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public highlightWithContext(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V
    .locals 2

    .line 809
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 810
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 814
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 819
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->process()Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->ADD:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    if-ne v0, v1, :cond_3

    .line 821
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_highlightBaseColor:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->type_()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v0, v1, :cond_3

    .line 822
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getHighlightBaseColorForElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_highlightBaseColor:Ljava/lang/Integer;

    .line 827
    :cond_3
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    return-void
.end method

.method protected highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V
    .locals 0

    return-void
.end method

.method public information()Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_information:Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    return-object v0
.end method

.method protected initWithEditContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">(",
            "Lcom/metamoji/df/model/IModel;",
            "Lcom/metamoji/un/draw2/module/DrModuleContext;",
            "Lcom/metamoji/un/draw2/module/element/DrEditContext;",
            ")TT;"
        }
    .end annotation

    .line 106
    iput-object p2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 107
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    .line 108
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->newSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 p1, 0x0

    .line 109
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isActive:Z

    const/4 p2, 0x1

    .line 110
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isInitializing:Z

    .line 111
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isEditing:Z

    .line 112
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    .line 113
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDeallocating:Z

    .line 114
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_wasPreEdited:Z

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_preEditAngleInDegrees:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 116
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_preEditContentScale:F

    .line 118
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInDegrees:F

    .line 119
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInRadians:F

    .line 120
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_contentScale:F

    .line 121
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isSelectable_()Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isSelectable:Z

    .line 122
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isMovable_()Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isMovable:Z

    .line 123
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isResizable_()Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isResizable:Z

    .line 124
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isReversible_()Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isReversible:Z

    .line 125
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isRotatable_()Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isRotatable:Z

    .line 126
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isErasable_()Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isErasable:Z

    .line 133
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v2, :cond_10

    .line 135
    iget v3, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInDegrees:F

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->checkAngleInDegreesFromModel(Lcom/metamoji/df/model/IModel;F)F

    move-result v2

    iput v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInDegrees:F

    .line 136
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->radianFromDegree(F)F

    move-result v2

    iput v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInRadians:F

    .line 139
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    iget v3, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_contentScale:F

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->checkContentScaleFromModel(Lcom/metamoji/df/model/IModel;F)F

    move-result v2

    iput v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_contentScale:F

    .line 142
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->getIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 145
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->restoreFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_linkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    .line 148
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->getIsSelectableFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isSelectable:Z

    goto :goto_0

    .line 151
    :cond_0
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isSelectable:Z

    if-nez v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveIsSelectableToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 155
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->getIsMovableFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 156
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isMovable:Z

    goto :goto_1

    .line 158
    :cond_2
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isMovable:Z

    if-nez v2, :cond_3

    .line 159
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveIsMovableToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 162
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->getIsResizableFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 163
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isResizable:Z

    goto :goto_2

    .line 165
    :cond_4
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isResizable:Z

    if-nez v2, :cond_5

    .line 166
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveIsResizableToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 169
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->getIsReversibleFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 170
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isReversible:Z

    goto :goto_3

    .line 172
    :cond_6
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isReversible:Z

    if-nez v2, :cond_7

    .line 173
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveIsReversibleToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 176
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->getIsRotatableFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 177
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isRotatable:Z

    goto :goto_4

    .line 179
    :cond_8
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isRotatable:Z

    if-nez v2, :cond_9

    .line 180
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveIsRotatableToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 183
    :cond_9
    :goto_4
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->getIsErasableFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 184
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isErasable:Z

    goto :goto_5

    .line 186
    :cond_a
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isErasable:Z

    if-nez v2, :cond_b

    .line 187
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveIsErasableToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 192
    :cond_b
    :goto_5
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->restoreFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_information:Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    .line 195
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->getWasPreEditedFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_wasPreEdited:Z

    if-eqz v2, :cond_10

    .line 198
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->checkPreEditAngleInDegreesFromModel(Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 199
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_preEditAngleInDegrees:F

    .line 200
    :cond_c
    iget v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_preEditAngleInDegrees:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_d

    .line 201
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->savePreEditAngleToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 202
    iget v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_preEditAngleInDegrees:F

    goto :goto_6

    :cond_d
    move v2, v0

    .line 207
    :goto_6
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->checkPreEditContentScaleFromModel(Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 208
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_preEditContentScale:F

    .line 209
    :cond_e
    iget v3, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_preEditContentScale:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_f

    .line 210
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->savePreEditContentScaleToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 211
    iget v3, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_preEditContentScale:F

    goto :goto_7

    :cond_f
    move v3, v1

    .line 216
    :goto_7
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveWasPreEditedToModel(Lcom/metamoji/df/model/IModel;Z)V

    goto :goto_8

    :cond_10
    move v2, v0

    move v3, v1

    :goto_8
    const/4 v4, 0x0

    if-eqz p3, :cond_19

    .line 222
    sget-object v5, Lcom/metamoji/un/draw2/module/element/DrElement$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, p2, :cond_18

    const/4 p2, 0x2

    if-eq v5, p2, :cond_16

    const/4 p2, 0x3

    if-eq v5, p2, :cond_13

    const/4 p2, 0x4

    if-eq v5, p2, :cond_11

    goto :goto_a

    .line 248
    :cond_11
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isRotatable:Z

    if-nez p2, :cond_12

    move-object p3, v4

    :cond_12
    if-eqz p3, :cond_19

    .line 252
    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result p2

    add-float/2addr v2, p2

    goto :goto_a

    .line 237
    :cond_13
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isResizable:Z

    if-nez p2, :cond_14

    move-object p3, v4

    .line 240
    :cond_14
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isReversible:Z

    if-nez p2, :cond_15

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->isReverse()Z

    move-result p2

    if-eqz p2, :cond_15

    move-object p3, v4

    :cond_15
    if-eqz p3, :cond_19

    .line 244
    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result p2

    mul-float/2addr v3, p2

    goto :goto_a

    .line 229
    :cond_16
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isResizable:Z

    if-nez p2, :cond_17

    move-object p3, v4

    .line 232
    :cond_17
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isReversible:Z

    if-nez p2, :cond_19

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->isReverse()Z

    move-result p2

    if-eqz p2, :cond_19

    goto :goto_9

    .line 224
    :cond_18
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isMovable:Z

    if-nez p2, :cond_19

    :goto_9
    move-object p3, v4

    :cond_19
    :goto_a
    cmpl-float p2, v2, v0

    if-eqz p2, :cond_1a

    .line 262
    invoke-direct {p0, v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->applyAngleInDegrees(F)V

    :cond_1a
    cmpl-float p2, v3, v1

    if-eqz p2, :cond_1b

    .line 265
    invoke-direct {p0, v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->applyContentScale(F)V

    .line 269
    :cond_1b
    invoke-virtual {p0, p3}, Lcom/metamoji/un/draw2/module/element/DrElement;->initWithEditContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z

    move-result p2

    if-nez p2, :cond_1c

    .line 270
    invoke-static {p1, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 274
    :cond_1c
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isInitializing:Z

    .line 275
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_wasPreEdited:Z

    .line 276
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_preEditAngleInDegrees:F

    .line 277
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_preEditContentScale:F

    return-object p0
.end method

.method public isActive()Z
    .locals 2

    .line 352
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 353
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 356
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isActive:Z

    return v0
.end method

.method protected isDeallocating()Z
    .locals 1

    .line 1365
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDeallocating:Z

    return v0
.end method

.method protected isDestroyed()Z
    .locals 1

    .line 1355
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    return v0
.end method

.method public isEditing()Z
    .locals 2

    .line 370
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 371
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 374
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isEditing:Z

    return v0
.end method

.method public isErasable()Z
    .locals 2

    .line 647
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 648
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 651
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isErasable:Z

    return v0
.end method

.method protected isErasable_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInitializing()Z
    .locals 2

    .line 361
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 362
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 365
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isInitializing:Z

    return v0
.end method

.method public isMovable()Z
    .locals 2

    .line 571
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 572
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 575
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isMovable:Z

    return v0
.end method

.method protected isMovable_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isResizable()Z
    .locals 2

    .line 590
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 591
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 594
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isResizable:Z

    return v0
.end method

.method protected isResizable_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReversible()Z
    .locals 2

    .line 609
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 610
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 613
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isReversible:Z

    return v0
.end method

.method protected isReversible_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRotatable()Z
    .locals 2

    .line 628
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 629
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 632
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isRotatable:Z

    return v0
.end method

.method protected isRotatable_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSelectable()Z
    .locals 2

    .line 552
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 553
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 556
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isSelectable:Z

    return v0
.end method

.method protected isSelectable_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 2

    .line 530
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 531
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->visible(Lcom/metamoji/df/sprite/Sprite;)Z

    move-result v0

    return v0
.end method

.method public linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_linkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    return-object v0
.end method

.method public minScale()F
    .locals 2

    .line 424
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 425
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->minScale_()F

    move-result v0

    return v0
.end method

.method public minScaleX()F
    .locals 2

    .line 433
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 434
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->minScaleX_()F

    move-result v0

    return v0
.end method

.method protected minScaleX_()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public minScaleY()F
    .locals 2

    .line 442
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 443
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->minScaleY_()F

    move-result v0

    return v0
.end method

.method protected minScaleY_()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected minScale_()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public model()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 334
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 335
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public noFocusing()Z
    .locals 1

    .line 494
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->noFocusing_()Z

    move-result v0

    return v0
.end method

.method protected noFocusing_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public noResizing()Z
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->noResizing_()Z

    move-result v0

    return v0
.end method

.method public noResizingX()Z
    .locals 1

    .line 482
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->noResizingX_()Z

    move-result v0

    return v0
.end method

.method protected noResizingX_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public noResizingY()Z
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->noResizingY_()Z

    move-result v0

    return v0
.end method

.method protected noResizingY_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected noResizing_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public noRotating()Z
    .locals 1

    .line 490
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->noRotating_()Z

    move-result v0

    return v0
.end method

.method protected noRotating_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method preEditAngleInDegrees()F
    .locals 1

    .line 1345
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_preEditAngleInDegrees:F

    return v0
.end method

.method preEditContentScale()F
    .locals 1

    .line 1348
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_preEditContentScale:F

    return v0
.end method

.method public removeAllExternalProperties()V
    .locals 2

    .line 1075
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1076
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1079
    :cond_0
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_externalProperties:Ljava/util/HashMap;

    return-void
.end method

.method public removeExternalPropertyForName(Ljava/lang/String;)V
    .locals 2

    .line 1057
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1058
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 1062
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1065
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_externalProperties:Ljava/util/HashMap;

    if-nez v0, :cond_2

    goto :goto_0

    .line 1068
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_externalProperties:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 1070
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_externalProperties:Ljava/util/HashMap;

    :cond_3
    :goto_0
    return-void
.end method

.method public repaintHighlightAlways()Z
    .locals 2

    .line 469
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 470
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->repaintHighlightAlways_()Z

    move-result v0

    return v0
.end method

.method protected repaintHighlightAlways_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected repaint_()V
    .locals 0

    return-void
.end method

.method public resaveLinkage()V
    .locals 2

    .line 1000
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1001
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    if-nez v0, :cond_1

    return-void

    .line 1007
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_linkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    if-eqz v1, :cond_2

    .line 1008
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->saveToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    return-void

    .line 1010
    :cond_2
    invoke-static {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->clearModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public samplePointAtIndex(I)Landroid/graphics/PointF;
    .locals 1

    .line 954
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 955
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 956
    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 958
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->samplePointAtIndex_(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected samplePointAtIndex_(I)Landroid/graphics/PointF;
    .locals 1

    .line 1487
    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public samplePointCount()I
    .locals 2

    .line 460
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 461
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->samplePointCount_()I

    move-result v0

    return v0
.end method

.method protected samplePointCount_()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setExternalPropertyForName(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1020
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1021
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 1025
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1028
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_externalProperties:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 1029
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_externalProperties:Ljava/util/HashMap;

    .line 1034
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_externalProperties:Ljava/util/HashMap;

    if-eqz p2, :cond_3

    .line 1032
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1034
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_externalProperties:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 1036
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_externalProperties:Ljava/util/HashMap;

    :cond_4
    return-void
.end method

.method public setHighlightBaseColor(Ljava/lang/Integer;)V
    .locals 0

    .line 718
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_highlightBaseColor:Ljava/lang/Integer;

    return-void
.end method

.method public setInformation(Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;)V
    .locals 2

    .line 697
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 698
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_information:Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    goto :goto_0

    .line 704
    :cond_1
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_information:Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    .line 705
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 709
    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->saveToModel(Lcom/metamoji/df/model/IModel;Z)V

    return-void

    .line 711
    :cond_3
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->removeAllPropertiesFromModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public setIsErasable(Z)V
    .locals 1

    .line 654
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 655
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 658
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isErasable_()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 661
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->updateIsErasable(Z)V

    return-void
.end method

.method public setIsMovable(Z)V
    .locals 1

    .line 578
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 579
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isMovable_()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 585
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->updateIsMovable(Z)V

    return-void
.end method

.method public setIsResizable(Z)V
    .locals 1

    .line 597
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 598
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 601
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isResizable_()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 604
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->updateIsResizable(Z)V

    return-void
.end method

.method public setIsReversible(Z)V
    .locals 1

    .line 616
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 617
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isReversible_()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 623
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->updateIsReversible(Z)V

    return-void
.end method

.method public setIsRotatable(Z)V
    .locals 1

    .line 635
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 636
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isRotatable_()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 642
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->updateIsRotatable(Z)V

    return-void
.end method

.method public setIsSelectable(Z)V
    .locals 1

    .line 559
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 560
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isSelectable_()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 566
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->updateIsSelectable(Z)V

    return-void
.end method

.method public setIsVisible(Z)V
    .locals 1

    .line 537
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 538
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 542
    :cond_0
    new-instance v0, Lcom/metamoji/un/draw2/module/element/DrElement$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement$1;-><init>(Lcom/metamoji/un/draw2/module/element/DrElement;Z)V

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V
    .locals 1

    .line 669
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 670
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_linkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    .line 674
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isEqualToLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_linkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    return-void

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    .line 681
    :cond_2
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_linkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    .line 682
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    if-nez v0, :cond_3

    :goto_0
    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 686
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->saveToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    return-void

    .line 688
    :cond_4
    invoke-static {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->clearModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 2

    .line 513
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 514
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 517
    :cond_0
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 518
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    if-nez v0, :cond_1

    return-void

    .line 521
    :cond_1
    const-string v1, "I"

    if-eqz p1, :cond_2

    .line 522
    invoke-static {v1, p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 524
    :cond_2
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public sprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 2

    .line 343
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 344
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public type()Lcom/metamoji/un/draw2/module/element/DrElementType;
    .locals 2

    .line 316
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 317
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 318
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->NONE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    return-object v0

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->type_()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v0

    return-object v0
.end method

.method protected type_()Lcom/metamoji/un/draw2/module/element/DrElementType;
    .locals 1

    .line 1376
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->NONE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    return-object v0
.end method

.method public uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 2

    .line 506
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 507
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method protected updateAngleInDegrees(F)V
    .locals 1

    .line 1160
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result p1

    .line 1161
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInDegrees:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1164
    :cond_0
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInDegrees:F

    .line 1165
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->radianFromDegree(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInRadians:F

    .line 1166
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_1

    .line 1167
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInDegrees:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveAngleInDegreesToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateAngleInRadians(F)V
    .locals 1

    .line 1172
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p1

    .line 1173
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInDegrees:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1176
    :cond_0
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInDegrees:F

    .line 1177
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->radianFromDegree(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInRadians:F

    .line 1178
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_1

    .line 1179
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_angleInDegrees:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveAngleInDegreesToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateBounds()V
    .locals 2

    .line 1330
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    .line 1331
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds_()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveBoundsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/RectEx;)V

    :cond_0
    return-void
.end method

.method protected updateContentScale(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1189
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1192
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_contentScale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 1195
    :cond_1
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_contentScale:F

    .line 1196
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_2

    .line 1197
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveContentScaleToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateCovers()V
    .locals 6

    .line 1279
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 1283
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-nez v1, :cond_1

    goto :goto_3

    .line 1288
    :cond_1
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isActive:Z

    if-nez v2, :cond_2

    .line 1289
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->removeBlocksWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void

    .line 1294
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->coverCount_()I

    move-result v1

    .line 1297
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->blockCountWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    if-lez v2, :cond_4

    if-eqz v4, :cond_4

    .line 1304
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->removeBlocksWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    :cond_4
    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    if-ge v3, v1, :cond_7

    if-eqz v4, :cond_6

    .line 1315
    invoke-virtual {p0, v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->coverAtIndex_(I)Lcom/metamoji/cm/RectEx;

    move-result-object v2

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v0, v2, v5}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->addBlock(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_2

    .line 1318
    :cond_6
    invoke-virtual {p0, v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->coverAtIndex_(I)Lcom/metamoji/cm/RectEx;

    move-result-object v2

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v0, v2, v3, v5}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->updateBlock(Lcom/metamoji/cm/RectEx;ILcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    return-void
.end method

.method protected updateIsErasable(Z)V
    .locals 1

    .line 1264
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isErasable:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1267
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isErasable:Z

    .line 1268
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1271
    :cond_1
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveIsErasableToModel(Lcom/metamoji/df/model/IModel;Z)V

    return-void
.end method

.method protected updateIsMovable(Z)V
    .locals 1

    .line 1220
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isMovable:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1223
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isMovable:Z

    .line 1224
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1227
    :cond_1
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveIsMovableToModel(Lcom/metamoji/df/model/IModel;Z)V

    return-void
.end method

.method protected updateIsResizable(Z)V
    .locals 1

    .line 1231
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isResizable:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1234
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isResizable:Z

    .line 1235
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1238
    :cond_1
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveIsResizableToModel(Lcom/metamoji/df/model/IModel;Z)V

    return-void
.end method

.method protected updateIsReversible(Z)V
    .locals 1

    .line 1242
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isReversible:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1245
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isReversible:Z

    .line 1246
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1249
    :cond_1
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveIsReversibleToModel(Lcom/metamoji/df/model/IModel;Z)V

    return-void
.end method

.method protected updateIsRotatable(Z)V
    .locals 1

    .line 1253
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isRotatable:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1256
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isRotatable:Z

    .line 1257
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1260
    :cond_1
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveIsRotatableToModel(Lcom/metamoji/df/model/IModel;Z)V

    return-void
.end method

.method protected updateIsSelectable(Z)V
    .locals 1

    .line 1209
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isSelectable:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1212
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_isSelectable:Z

    .line 1213
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_model:Lcom/metamoji/df/model/IModel;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1216
    :cond_1
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->saveIsSelectableToModel(Lcom/metamoji/df/model/IModel;Z)V

    return-void
.end method

.method wasPreEdited()Z
    .locals 1

    .line 1342
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement;->m_wasPreEdited:Z

    return v0
.end method
