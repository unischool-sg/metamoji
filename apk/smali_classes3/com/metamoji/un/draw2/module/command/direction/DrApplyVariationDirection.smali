.class public Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;
.super Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
.source "DrApplyVariationDirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;
    }
.end annotation


# static fields
.field private static final MODEL_PROPERTY_BASE_TYPE:Ljava/lang/String; = "t"

.field private static final MODEL_PROPERTY_ELEMENT_ID:Ljava/lang/String; = "i"

.field private static final MODEL_PROPERTY_VARIATION:Ljava/lang/String; = "v"

.field private static final MODEL_TYPE_INTERNAL:Ljava/lang/String; = "i"


# instance fields
.field private m_internalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;",
            ">;"
        }
    .end annotation
.end field

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_updatedElementIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;-><init>()V

    return-void
.end method

.method public static applyResizeVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 429
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    const/4 v10, 0x1

    if-nez p1, :cond_1

    .line 433
    invoke-static {v10, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x2

    if-nez p2, :cond_2

    .line 437
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 440
    :cond_2
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v10, :cond_4

    if-eq v0, v2, :cond_3

    return v1

    .line 448
    :cond_3
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 449
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateX()F

    move-result v2

    .line 450
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateY()F

    move-result v3

    .line 451
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleWidth()F

    move-result v4

    .line 452
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleHeight()F

    move-result v5

    .line 453
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingX()Z

    move-result v6

    .line 454
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingY()Z

    move-result v7

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, p2

    .line 448
    invoke-virtual/range {v0 .. v9}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->applyVariationToRectBaseElement(Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;FFFFZZFF)V

    return v10

    .line 442
    :cond_4
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    .line 443
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 442
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->applyVariationToPointsBaseElement(Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;Landroid/graphics/Matrix;FF)V

    return v10
.end method

.method public static applyRotateVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 501
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    const/4 v10, 0x1

    if-nez p1, :cond_1

    .line 505
    invoke-static {v10, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x2

    if-nez p2, :cond_2

    .line 509
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 512
    :cond_2
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v10, :cond_4

    if-eq v0, v2, :cond_3

    return v1

    .line 520
    :cond_3
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 521
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateX()F

    move-result v2

    .line 522
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateY()F

    move-result v3

    .line 527
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->angleInDegrees()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    .line 520
    invoke-virtual/range {v0 .. v9}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->applyVariationToRectBaseElement(Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;FFFFZZFF)V

    return v10

    .line 514
    :cond_4
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    .line 515
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    .line 516
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->angleInDegrees()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 514
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->applyVariationToPointsBaseElement(Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;Landroid/graphics/Matrix;FF)V

    return v10
.end method

.method public static applyScaleVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 465
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    const/4 v10, 0x1

    if-nez p1, :cond_1

    .line 469
    invoke-static {v10, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x2

    if-nez p2, :cond_2

    .line 473
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 476
    :cond_2
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v10, :cond_4

    if-eq v0, v2, :cond_3

    return v1

    .line 484
    :cond_3
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 485
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateX()F

    move-result v2

    .line 486
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateY()F

    move-result v3

    .line 487
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleWidth()F

    move-result v4

    .line 488
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleHeight()F

    move-result v5

    .line 489
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingX()Z

    move-result v6

    .line 490
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingY()Z

    move-result v7

    const/4 v8, 0x0

    .line 492
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->contentScale()F

    move-result v9

    move-object v0, p2

    .line 484
    invoke-virtual/range {v0 .. v9}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->applyVariationToRectBaseElement(Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;FFFFZZFF)V

    return v10

    .line 478
    :cond_4
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    .line 479
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    const/4 v3, 0x0

    .line 481
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->contentScale()F

    move-result v4

    .line 478
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->applyVariationToPointsBaseElement(Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;Landroid/graphics/Matrix;FF)V

    return v10
.end method

.method public static applyTranslateVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 393
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    const/4 v10, 0x1

    if-nez p1, :cond_1

    .line 397
    invoke-static {v10, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x2

    if-nez p2, :cond_2

    .line 401
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 404
    :cond_2
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v10, :cond_4

    if-eq v0, v2, :cond_3

    return v1

    .line 412
    :cond_3
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 413
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateX()F

    move-result v2

    .line 414
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateY()F

    move-result v3

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    .line 412
    invoke-virtual/range {v0 .. v9}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->applyVariationToRectBaseElement(Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;FFFFZZFF)V

    return v10

    .line 406
    :cond_4
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    .line 407
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 406
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->applyVariationToPointsBaseElement(Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;Landroid/graphics/Matrix;FF)V

    return v10
.end method

.method public static applyVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 357
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    const/4 v10, 0x1

    if-nez p1, :cond_1

    .line 361
    invoke-static {v10, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x2

    if-nez p2, :cond_2

    .line 365
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 368
    :cond_2
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v10, :cond_4

    if-eq v0, v2, :cond_3

    return v1

    .line 376
    :cond_3
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 377
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateX()F

    move-result v2

    .line 378
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateY()F

    move-result v3

    .line 379
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleWidth()F

    move-result v4

    .line 380
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleHeight()F

    move-result v5

    .line 381
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingX()Z

    move-result v6

    .line 382
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingY()Z

    move-result v7

    .line 383
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->angleInDegrees()F

    move-result v8

    .line 384
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->contentScale()F

    move-result v9

    move-object v0, p2

    .line 376
    invoke-virtual/range {v0 .. v9}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->applyVariationToRectBaseElement(Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;FFFFZZFF)V

    return v10

    .line 370
    :cond_4
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    .line 371
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    .line 372
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->angleInDegrees()F

    move-result v3

    .line 373
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->contentScale()F

    move-result v4

    .line 370
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->applyVariationToPointsBaseElement(Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;Landroid/graphics/Matrix;FF)V

    return v10
.end method


# virtual methods
.method public applyVariationToPointsBaseElement(Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;Landroid/graphics/Matrix;FF)V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 125
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 129
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 132
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 133
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 138
    :cond_2
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTransform(Landroid/graphics/Matrix;)V

    .line 140
    invoke-virtual {v0, p3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setAngleInDegrees(F)V

    .line 141
    invoke-virtual {v0, p4}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setContentScale(F)V

    .line 144
    new-instance p2, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;

    invoke-direct {p2, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection-IA;)V

    .line 145
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 146
    sget-object p1, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->POINTS:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->setBaseType(Lcom/metamoji/un/draw2/module/element/DrElementBaseType;)V

    .line 147
    invoke-virtual {p2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->setVariation(Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V

    .line 150
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public applyVariationToRectBaseElement(Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;FFFFZZFF)V
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 166
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 170
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 173
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 174
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 179
    :cond_2
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initRectTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateX(F)V

    .line 181
    invoke-virtual {v0, p3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateY(F)V

    .line 182
    invoke-virtual {v0, p4}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleWidth(F)V

    .line 183
    invoke-virtual {v0, p5}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleHeight(F)V

    .line 184
    invoke-virtual {v0, p6}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setIsReversingX(Z)V

    .line 185
    invoke-virtual {v0, p7}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setIsReversingY(Z)V

    .line 186
    invoke-virtual {v0, p8}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setAngleInDegrees(F)V

    .line 187
    invoke-virtual {v0, p9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setContentScale(F)V

    .line 190
    new-instance p2, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;

    invoke-direct {p2, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection-IA;)V

    .line 191
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 192
    sget-object p1, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->setBaseType(Lcom/metamoji/un/draw2/module/element/DrElementBaseType;)V

    .line 193
    invoke-virtual {p2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->setVariation(Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V

    .line 196
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected canSave_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected destroy_()V
    .locals 2

    const/4 v0, 0x0

    .line 341
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 342
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->m_internalMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 344
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->m_internalMap:Ljava/util/HashMap;

    .line 346
    :cond_0
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method protected executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 23

    move-object/from16 v0, p0

    .line 233
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    goto/16 :goto_5

    :cond_0
    return-object v2

    .line 238
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v1

    sget-object v3, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->UNDO:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_3

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v1

    sget-object v3, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->REVERSE:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v5

    .line 241
    :goto_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 244
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v6

    .line 245
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v7

    .line 246
    iget-object v8, v0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;

    .line 248
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v10

    if-nez v10, :cond_5

    .line 250
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-static {v9}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    .line 255
    :cond_5
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v11

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v12

    if-eq v11, v12, :cond_6

    .line 256
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-static {v9}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    .line 261
    :cond_6
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->variation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v11

    if-eqz v1, :cond_7

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->getInverse()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v11

    .line 264
    :cond_7
    sget-object v12, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v13

    aget v12, v12, v13

    if-eq v12, v5, :cond_9

    const/4 v13, 0x2

    if-eq v12, v13, :cond_8

    .line 285
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-static {v9}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    .line 273
    :cond_8
    move-object v14, v10

    check-cast v14, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 274
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateX()F

    move-result v15

    .line 275
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateY()F

    move-result v16

    .line 276
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleWidth()F

    move-result v17

    .line 277
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleHeight()F

    move-result v18

    .line 278
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingX()Z

    move-result v19

    .line 279
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingY()Z

    move-result v20

    .line 280
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->angleInDegrees()F

    move-result v21

    .line 281
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->contentScale()F

    move-result v22

    .line 274
    invoke-virtual/range {v14 .. v22}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->applyVariationWithTranslate(FFFFZZFF)V

    goto :goto_3

    .line 266
    :cond_9
    move-object v9, v10

    check-cast v9, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    .line 267
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object v12

    .line 268
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->angleInDegrees()F

    move-result v13

    .line 269
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->contentScale()F

    move-result v11

    .line 267
    invoke-virtual {v9, v12, v13, v11}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->applyVariationWithTransform(Landroid/graphics/Matrix;FF)V

    .line 290
    :goto_3
    invoke-virtual {v7, v10}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 291
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v11

    if-nez v11, :cond_a

    .line 292
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_a
    iget-object v9, v0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->m_updatedElementIds:Ljava/util/HashSet;

    if-eqz v9, :cond_4

    .line 297
    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 302
    :cond_b
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 303
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 304
    invoke-virtual {v7, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    goto :goto_4

    .line 306
    :cond_c
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    :cond_d
    if-eqz p1, :cond_e

    :goto_5
    return-object v0

    :cond_e
    return-object v2
.end method

.method protected hasReverse_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected init_()Z
    .locals 1

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->m_internalMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    return v0
.end method

.method protected restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    .line 314
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 315
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 317
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection-IA;)V

    .line 318
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->restoreFromModel(Lcom/metamoji/df/model/IModel;)V

    .line 319
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 320
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 322
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 324
    :goto_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected saveToModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;

    .line 332
    const-string v2, "i"

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 333
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->saveToModel(Lcom/metamoji/df/model/IModel;)V

    .line 334
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setUpdatedElementIds(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method protected type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 218
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->APPLY_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    return-object v0
.end method

.method public updatedElementIds()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-object v0
.end method
