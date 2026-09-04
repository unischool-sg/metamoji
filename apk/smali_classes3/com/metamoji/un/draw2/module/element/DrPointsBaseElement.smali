.class public Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;
.super Lcom/metamoji/un/draw2/module/element/DrElement;
.source "DrPointsBaseElement.java"


# static fields
.field protected static final MODEL_PROPERTY_POINTS:Ljava/lang/String; = "P"

.field protected static final MODEL_PROPERTY_PRE_EDIT_TRANSFORM_A:Ljava/lang/String; = "PA"

.field protected static final MODEL_PROPERTY_PRE_EDIT_TRANSFORM_B:Ljava/lang/String; = "PB"

.field protected static final MODEL_PROPERTY_PRE_EDIT_TRANSFORM_C:Ljava/lang/String; = "PC"

.field protected static final MODEL_PROPERTY_PRE_EDIT_TRANSFORM_D:Ljava/lang/String; = "PD"

.field protected static final MODEL_PROPERTY_PRE_EDIT_TRANSFORM_TX:Ljava/lang/String; = "PX"

.field protected static final MODEL_PROPERTY_PRE_EDIT_TRANSFORM_TY:Ljava/lang/String; = "PY"

.field protected static final MODEL_PROPERTY_TRANSFORM_A:Ljava/lang/String; = "TA"

.field protected static final MODEL_PROPERTY_TRANSFORM_B:Ljava/lang/String; = "TB"

.field protected static final MODEL_PROPERTY_TRANSFORM_C:Ljava/lang/String; = "TC"

.field protected static final MODEL_PROPERTY_TRANSFORM_D:Ljava/lang/String; = "TD"

.field protected static final MODEL_PROPERTY_TRANSFORM_TX:Ljava/lang/String; = "TX"

.field protected static final MODEL_PROPERTY_TRANSFORM_TY:Ljava/lang/String; = "TY"


# instance fields
.field private m_points:Lcom/metamoji/cm/PointArray;

.field private final m_transform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_transform:Landroid/graphics/Matrix;

    return-void
.end method

.method protected static checkPointsBaseElementModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 475
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->checkElementModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->getBaseTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object p0

    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->POINTS:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static checkPreEditTransformFromModel(Lcom/metamoji/df/model/IModel;Landroid/graphics/Matrix;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    .line 668
    :cond_0
    const-string v0, "PA"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v2

    .line 669
    const-string v0, "PB"

    const/4 v3, 0x0

    invoke-static {v0, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    .line 670
    const-string v4, "PC"

    invoke-static {v4, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v4

    .line 671
    const-string v5, "PD"

    invoke-static {v5, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v5

    .line 672
    const-string v1, "PX"

    invoke-static {v1, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v6

    .line 673
    const-string v1, "PY"

    invoke-static {v1, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v7

    move v3, v0

    .line 674
    invoke-static/range {v2 .. v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMake(FFFFFF)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method static checkTransformFromModel(Lcom/metamoji/df/model/IModel;Landroid/graphics/Matrix;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    .line 649
    :cond_0
    const-string v0, "TA"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v2

    .line 650
    const-string v0, "TB"

    const/4 v3, 0x0

    invoke-static {v0, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    .line 651
    const-string v4, "TC"

    invoke-static {v4, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v4

    .line 652
    const-string v5, "TD"

    invoke-static {v5, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v5

    .line 653
    const-string v1, "TX"

    invoke-static {v1, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v6

    .line 654
    const-string v1, "TY"

    invoke-static {v1, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v7

    move v3, v0

    .line 655
    invoke-static/range {v2 .. v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMake(FFFFFF)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method static getPointsFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/cm/PointArray;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 488
    :cond_0
    const-string v0, "P"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->pointArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    return-object p0
.end method

.method static getPreEditTransformFromModel(Lcom/metamoji/df/model/IModel;)Landroid/graphics/Matrix;
    .locals 1

    if-nez p0, :cond_0

    .line 502
    sget-object p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    return-object p0

    .line 504
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 505
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->checkPreEditTransformFromModel(Lcom/metamoji/df/model/IModel;Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public static getTransformFromModel(Lcom/metamoji/df/model/IModel;)Landroid/graphics/Matrix;
    .locals 1

    if-nez p0, :cond_0

    .line 493
    sget-object p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    return-object p0

    .line 495
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 496
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->checkTransformFromModel(Lcom/metamoji/df/model/IModel;Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method protected static newEmptyPointsBaseElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 515
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->newEmptyElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 517
    const-string v0, "B"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->POINTS:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 519
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method public static preEditWithContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;Lcom/metamoji/df/model/IModel;)V
    .locals 5

    .line 528
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->checkPointsBaseElementModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 529
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p0, :cond_1

    .line 533
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 536
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 541
    :cond_2
    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

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

    .line 562
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 557
    :cond_3
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->getIsRotatableFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    .line 549
    :cond_4
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->getIsResizableFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 552
    :cond_5
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->getIsReversibleFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->isReverse()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 543
    :cond_6
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->getIsMovableFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_0
    return-void

    .line 567
    :cond_7
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->getPreEditTransformFromModel(Lcom/metamoji/df/model/IModel;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->savePreEditTransformToModel(Lcom/metamoji/df/model/IModel;Landroid/graphics/Matrix;)V

    .line 570
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_8

    .line 571
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result v1

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->applyPreEditAngleInDegreesToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 573
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    .line 574
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result p0

    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->applyPreEditContentScaleToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 578
    :cond_9
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->applyWasPreEditedToModel(Lcom/metamoji/df/model/IModel;Z)V

    return-void
.end method

.method static savePointsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/PointArray;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 681
    :cond_0
    const-string v0, "P"

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    if-lez v1, :cond_1

    .line 682
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPointArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/cm/PointArray;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 684
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method static savePreEditTransformToModel(Lcom/metamoji/df/model/IModel;Landroid/graphics/Matrix;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    .line 738
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v0

    const-string v1, "PY"

    const-string v2, "PX"

    const-string v3, "PD"

    const-string v4, "PC"

    const-string v5, "PB"

    const-string v6, "PA"

    if-eqz v0, :cond_1

    .line 739
    invoke-static {v6, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 740
    invoke-static {v5, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 741
    invoke-static {v4, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 742
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 743
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 744
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 748
    :cond_1
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;

    invoke-direct {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;-><init>(Landroid/graphics/Matrix;)V

    .line 749
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->a:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v7

    if-eqz p1, :cond_2

    .line 750
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->a:F

    invoke-static {v6, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 752
    :cond_2
    invoke-static {v6, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 754
    :goto_0
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->b:F

    const/4 v6, 0x0

    cmpl-float p1, p1, v6

    if-eqz p1, :cond_3

    .line 755
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->b:F

    invoke-static {v5, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 757
    :cond_3
    invoke-static {v5, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 759
    :goto_1
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->c:F

    cmpl-float p1, p1, v6

    if-eqz p1, :cond_4

    .line 760
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->c:F

    invoke-static {v4, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 762
    :cond_4
    invoke-static {v4, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 764
    :goto_2
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->d:F

    cmpl-float p1, p1, v7

    if-eqz p1, :cond_5

    .line 765
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->d:F

    invoke-static {v3, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_3

    .line 767
    :cond_5
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 769
    :goto_3
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->tx:F

    cmpl-float p1, p1, v6

    if-eqz p1, :cond_6

    .line 770
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->tx:F

    invoke-static {v2, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_4

    .line 772
    :cond_6
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 774
    :goto_4
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->ty:F

    cmpl-float p1, p1, v6

    if-eqz p1, :cond_7

    .line 775
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->ty:F

    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 777
    :cond_7
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method static saveTransformToModel(Lcom/metamoji/df/model/IModel;Landroid/graphics/Matrix;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    .line 692
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v0

    const-string v1, "TY"

    const-string v2, "TX"

    const-string v3, "TD"

    const-string v4, "TC"

    const-string v5, "TB"

    const-string v6, "TA"

    if-eqz v0, :cond_1

    .line 693
    invoke-static {v6, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 694
    invoke-static {v5, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 695
    invoke-static {v4, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 696
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 697
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 698
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 701
    :cond_1
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;

    invoke-direct {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;-><init>(Landroid/graphics/Matrix;)V

    .line 702
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->a:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v7

    if-eqz p1, :cond_2

    .line 703
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->a:F

    invoke-static {v6, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 705
    :cond_2
    invoke-static {v6, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 707
    :goto_0
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->b:F

    const/4 v6, 0x0

    cmpl-float p1, p1, v6

    if-eqz p1, :cond_3

    .line 708
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->b:F

    invoke-static {v5, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 710
    :cond_3
    invoke-static {v5, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 712
    :goto_1
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->c:F

    cmpl-float p1, p1, v6

    if-eqz p1, :cond_4

    .line 713
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->c:F

    invoke-static {v4, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 715
    :cond_4
    invoke-static {v4, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 717
    :goto_2
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->d:F

    cmpl-float p1, p1, v7

    if-eqz p1, :cond_5

    .line 718
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->d:F

    invoke-static {v3, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_3

    .line 720
    :cond_5
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 722
    :goto_3
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->tx:F

    cmpl-float p1, p1, v6

    if-eqz p1, :cond_6

    .line 723
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->tx:F

    invoke-static {v2, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_4

    .line 725
    :cond_6
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 727
    :goto_4
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->ty:F

    cmpl-float p1, p1, v6

    if-eqz p1, :cond_7

    .line 728
    iget p1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->ty:F

    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 730
    :cond_7
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method


# virtual methods
.method protected applyPoints_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method applyTransform(Landroid/graphics/Matrix;)V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->applyTransform(Landroid/graphics/Matrix;Lcom/metamoji/cm/PointArray;)V

    .line 589
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->savePointsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/PointArray;)V

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editWithVariationAlways()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->updateTransform(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public applyVariationWithTransform(Landroid/graphics/Matrix;FF)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gtz v1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 118
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->angleInDegrees()F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->updateAngleInDegrees(F)V

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->contentScale()F

    move-result v0

    mul-float/2addr v0, p3

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->updateContentScale(F)V

    .line 133
    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 134
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->applyTransform(Landroid/graphics/Matrix;)V

    .line 138
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->applyVariationWithTransform_(Landroid/graphics/Matrix;FF)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->isActive()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 139
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->updateCovers()V

    .line 140
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->repaint_()V

    :cond_4
    return-void
.end method

.method protected applyVariationWithTransform_(Landroid/graphics/Matrix;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected baseType_()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;
    .locals 1

    .line 293
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->POINTS:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    return-object v0
.end method

.method protected bounds_()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Lcom/metamoji/cm/PointArray;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method public clearVariation()V
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->updateTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected coverAtIndex_(I)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 323
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->coverAtIndex_(I)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected coverCount_()I
    .locals 1

    .line 318
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->coverCount_()I

    move-result v0

    return v0
.end method

.method protected createVariation_()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 2

    .line 426
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTransform(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method protected destroy_()V
    .locals 1

    const/4 v0, 0x0

    .line 433
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_points:Lcom/metamoji/cm/PointArray;

    .line 434
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->destroy_()V

    return-void
.end method

.method protected editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z
    .locals 3

    .line 367
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

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

    .line 377
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->applyTransform(Landroid/graphics/Matrix;)V

    :cond_1
    :goto_0
    return v2
.end method

.method protected initWithEditContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_transform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 226
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 229
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->getPointsFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/cm/PointArray;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_points:Lcom/metamoji/cm/PointArray;

    .line 234
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editWithVariationAlways()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->checkTransformFromModel(Lcom/metamoji/df/model/IModel;Landroid/graphics/Matrix;)V

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->wasPreEdited()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->getPreEditTransformFromModel(Lcom/metamoji/df/model/IModel;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 241
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->savePreEditTransformToModel(Lcom/metamoji/df/model/IModel;Landroid/graphics/Matrix;)V

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_points:Lcom/metamoji/cm/PointArray;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_3

    .line 249
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 251
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    .line 255
    :cond_2
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_points:Lcom/metamoji/cm/PointArray;

    .line 258
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 262
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 264
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->applyTransform(Landroid/graphics/Matrix;Lcom/metamoji/cm/PointArray;)V

    .line 265
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 266
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->savePointsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/PointArray;)V

    .line 270
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editWithVariationAlways()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 271
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->updateTransform(Landroid/graphics/Matrix;)V

    .line 276
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->preEditAngleInDegrees()F

    move-result v1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result v3

    add-float/2addr v1, v3

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result v1

    .line 277
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->preEditContentScale()F

    move-result v3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result p1

    mul-float/2addr v3, p1

    .line 278
    :cond_7
    invoke-virtual {p0, v0, v1, v3}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->initWithTransform_(Landroid/graphics/Matrix;FF)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 279
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p1

    :cond_8
    const/4 p1, 0x1

    return p1
.end method

.method protected initWithTransform_(Landroid/graphics/Matrix;FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public inversion()Landroid/graphics/Matrix;
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->inversionOfTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method protected isErasable_()Z
    .locals 1

    .line 358
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isErasable_()Z

    move-result v0

    return v0
.end method

.method protected isMovable_()Z
    .locals 1

    .line 338
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isMovable_()Z

    move-result v0

    return v0
.end method

.method protected isResizable_()Z
    .locals 1

    .line 343
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isResizable_()Z

    move-result v0

    return v0
.end method

.method protected isReversible_()Z
    .locals 1

    .line 348
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isReversible_()Z

    move-result v0

    return v0
.end method

.method protected isRotatable_()Z
    .locals 1

    .line 353
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isRotatable_()Z

    move-result v0

    return v0
.end method

.method protected isSelectable_()Z
    .locals 1

    .line 333
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isSelectable_()Z

    move-result v0

    return v0
.end method

.method protected minScaleX_()F
    .locals 1

    .line 308
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->minScaleX_()F

    move-result v0

    return v0
.end method

.method protected minScaleY_()F
    .locals 1

    .line 313
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->minScaleY_()F

    move-result v0

    return v0
.end method

.method protected minScale_()F
    .locals 2

    .line 303
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->minScaleX_()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->minScaleY_()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public pathBounds()Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->pathBounds_()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method protected pathBounds_()Lcom/metamoji/cm/RectEx;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public points()Lcom/metamoji/cm/PointArray;
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_points:Lcom/metamoji/cm/PointArray;

    return-object v0
.end method

.method protected repaintHighlightAlways_()Z
    .locals 1

    .line 328
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->repaintHighlightAlways_()Z

    move-result v0

    return v0
.end method

.method protected samplePointAtIndex_(I)Landroid/graphics/PointF;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->samplePointAtIndex_(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected samplePointCount_()I
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method saveTransform()V
    .locals 6

    .line 600
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 603
    :cond_0
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_transform:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;-><init>(Landroid/graphics/Matrix;)V

    .line 604
    iget v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    const-string v3, "TA"

    if-eqz v1, :cond_1

    .line 605
    iget v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->a:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 607
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 609
    :goto_0
    iget v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->b:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    const-string v4, "TB"

    if-eqz v1, :cond_2

    .line 610
    iget v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->b:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 612
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 614
    :goto_1
    iget v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->c:F

    cmpl-float v1, v1, v3

    const-string v4, "TC"

    if-eqz v1, :cond_3

    .line 615
    iget v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->c:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 617
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 619
    :goto_2
    iget v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->d:F

    cmpl-float v1, v1, v2

    const-string v2, "TD"

    if-eqz v1, :cond_4

    .line 620
    iget v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->d:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_3

    .line 622
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 624
    :goto_3
    iget v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->tx:F

    cmpl-float v1, v1, v3

    const-string v2, "TX"

    if-eqz v1, :cond_5

    .line 625
    iget v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->tx:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_4

    .line 627
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 629
    :goto_4
    iget v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->ty:F

    cmpl-float v1, v1, v3

    const-string v2, "TY"

    if-eqz v1, :cond_6

    .line 630
    iget v0, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->ty:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 632
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public setPoints(Lcom/metamoji/cm/PointArray;)V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 72
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->updatePoints(Lcom/metamoji/cm/PointArray;)V

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->applyPoints_()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->isActive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->updateCovers()V

    .line 75
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->repaint_()V

    :cond_1
    return-void
.end method

.method public transform()Landroid/graphics/Matrix;
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_transform:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected type_()Lcom/metamoji/un/draw2/module/element/DrElementType;
    .locals 1

    .line 288
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->type_()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v0

    return-object v0
.end method

.method public updatePoints(Lcom/metamoji/cm/PointArray;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 192
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_points:Lcom/metamoji/cm/PointArray;

    .line 197
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->savePointsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/PointArray;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 193
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method protected updateTransform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editWithVariationAlways()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformEqualToTransform(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->m_transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 214
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->saveTransform()V

    :cond_2
    :goto_0
    return-void
.end method
