.class public Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;
.super Ljava/lang/Object;
.source "DrLinkageCriterion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;,
        Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;,
        Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;
    }
.end annotation


# static fields
.field public static final MODEL_PROPERTY_ANGLE_TYPE:Ljava/lang/String; = "A"

.field public static final MODEL_PROPERTY_HANDLE_INDEX:Ljava/lang/String; = "I"

.field public static final MODEL_PROPERTY_HEIGHT:Ljava/lang/String; = "H"

.field public static final MODEL_PROPERTY_OTHER_HANDLE_INDEX:Ljava/lang/String; = "O"

.field public static final MODEL_PROPERTY_PARAMETER:Ljava/lang/String; = "M"

.field public static final MODEL_PROPERTY_POSITION_TYPE:Ljava/lang/String; = "P"

.field public static final MODEL_PROPERTY_SIZE_TYPE:Ljava/lang/String; = "S"

.field public static final MODEL_PROPERTY_WIDTH:Ljava/lang/String; = "W"

.field public static final MODEL_PROPERTY_X:Ljava/lang/String; = "X"

.field public static final MODEL_PROPERTY_Y:Ljava/lang/String; = "Y"


# instance fields
.field private m_angleType:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

.field private m_handleIndex:I

.field private m_height:D

.field private m_otherHandleIndex:I

.field private m_parameter:D

.field private m_positionType:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

.field private m_sizeType:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

.field private m_width:D

.field private m_x:D

.field private m_y:D


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setPositionType(Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;)V

    .line 65
    sget-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setSizeType(Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;)V

    .line 66
    sget-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setAngleType(Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setX(D)V

    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setY(D)V

    const/4 v2, -0x1

    .line 69
    invoke-virtual {p0, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setHandleIndex(I)V

    .line 70
    invoke-virtual {p0, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setOtherHandleIndex(I)V

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setParameter(D)V

    .line 72
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setWidth(D)V

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setHeight(D)V

    return-void
.end method

.method public static clearModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 425
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 428
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object p1, v0

    .line 433
    :cond_1
    const-string v0, "P"

    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 436
    const-string v0, "S"

    if-eqz p1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 439
    const-string v0, "A"

    if-eqz p1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 442
    const-string v0, "X"

    if-eqz p1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 445
    const-string v0, "Y"

    if-eqz p1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 448
    const-string v0, "I"

    if-eqz p1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 451
    const-string v0, "O"

    if-eqz p1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 454
    const-string v0, "M"

    if-eqz p1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 457
    const-string v0, "W"

    if-eqz p1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 460
    const-string v0, "H"

    if-eqz p1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static restoreFromModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 328
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    :cond_0
    if-eqz p1, :cond_1

    .line 331
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object/from16 v3, p1

    .line 337
    :goto_0
    const-string v4, "P"

    if-eqz v3, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    sget-object v5, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    invoke-static {v4, v5, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    .line 338
    sget-object v5, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    if-eq v4, v5, :cond_3

    const/4 v1, 0x1

    .line 343
    :cond_3
    const-string v5, "S"

    if-eqz v3, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    sget-object v7, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    invoke-static {v5, v7, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    .line 344
    sget-object v7, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    if-eq v5, v7, :cond_5

    const/4 v1, 0x1

    .line 349
    :cond_5
    const-string v7, "A"

    if-eqz v3, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_6
    sget-object v8, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    invoke-static {v7, v8, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    .line 350
    sget-object v8, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    if-eq v7, v8, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-nez v1, :cond_8

    return-object v2

    .line 360
    :cond_8
    const-string v8, "X"

    if-eqz v3, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_9
    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v8, v9, v10, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v11

    .line 361
    invoke-static {v11, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v1, 0x1

    .line 366
    :cond_a
    const-string v8, "Y"

    if-eqz v3, :cond_b

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_b
    invoke-static {v8, v9, v10, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v13

    .line 367
    invoke-static {v13, v14}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v1, 0x1

    .line 372
    :cond_c
    const-string v8, "I"

    if-eqz v3, :cond_d

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_d
    const/4 v15, -0x1

    invoke-static {v8, v15, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)I

    move-result v8

    if-ltz v8, :cond_e

    const/4 v1, 0x1

    :cond_e
    move-object/from16 v16, v2

    .line 378
    const-string v2, "O"

    if-eqz v3, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_f
    invoke-static {v2, v15, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)I

    move-result v2

    if-ltz v2, :cond_10

    const/4 v1, 0x1

    .line 384
    :cond_10
    const-string v6, "M"

    if-eqz v3, :cond_11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_11
    move/from16 v17, v1

    move v15, v2

    invoke-static {v6, v9, v10, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v1

    .line 385
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v6

    if-nez v6, :cond_12

    const/16 v17, 0x1

    .line 390
    :cond_12
    const-string v6, "W"

    if-eqz v3, :cond_13

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    :cond_13
    move-wide/from16 v18, v1

    invoke-static {v6, v9, v10, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v1

    .line 391
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v6

    if-nez v6, :cond_14

    const/16 v17, 0x1

    .line 396
    :cond_14
    const-string v6, "H"

    if-eqz v3, :cond_15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_15
    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v6, v9, v10, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v9

    .line 397
    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v6, 0x1

    goto :goto_1

    :cond_16
    move/from16 v6, v17

    :goto_1
    if-eqz v6, :cond_17

    .line 403
    new-instance v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;-><init>()V

    .line 404
    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setPositionType(Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;)V

    .line 405
    invoke-virtual {v0, v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setSizeType(Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;)V

    .line 406
    invoke-virtual {v0, v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setAngleType(Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;)V

    .line 407
    invoke-virtual {v0, v11, v12}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setX(D)V

    .line 408
    invoke-virtual {v0, v13, v14}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setY(D)V

    .line 409
    invoke-virtual {v0, v8}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setHandleIndex(I)V

    .line 410
    invoke-virtual {v0, v15}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setOtherHandleIndex(I)V

    move-wide/from16 v3, v18

    .line 411
    invoke-virtual {v0, v3, v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setParameter(D)V

    .line 412
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setWidth(D)V

    .line 413
    invoke-virtual {v0, v9, v10}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->setHeight(D)V

    return-object v0

    :cond_17
    return-object v16
.end method

.method public static saveToModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 229
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x1

    .line 233
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    move-object p1, v0

    .line 241
    :cond_2
    const-string v0, "P"

    const-string v1, "%s%s"

    if-eqz p1, :cond_3

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_3
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->positionType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    if-eq v2, v3, :cond_4

    .line 243
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->positionType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 245
    :cond_4
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 249
    :goto_0
    const-string v0, "S"

    if-eqz p1, :cond_5

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_5
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->sizeType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    if-eq v2, v3, :cond_6

    .line 251
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->sizeType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 253
    :cond_6
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 257
    :goto_1
    const-string v0, "A"

    if-eqz p1, :cond_7

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_7
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->angleType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    if-eq v2, v3, :cond_8

    .line 259
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->angleType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 261
    :cond_8
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 265
    :goto_2
    const-string v0, "X"

    if-eqz p1, :cond_9

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 266
    :cond_9
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->x()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_a

    .line 267
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->x()D

    move-result-wide v2

    invoke-static {v0, v2, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    goto :goto_3

    .line 269
    :cond_a
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 273
    :goto_3
    const-string v0, "Y"

    if-eqz p1, :cond_b

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 274
    :cond_b
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->y()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_c

    .line 275
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->y()D

    move-result-wide v2

    invoke-static {v0, v2, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    goto :goto_4

    .line 277
    :cond_c
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 281
    :goto_4
    const-string v0, "I"

    if-eqz p1, :cond_d

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 282
    :cond_d
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->handleIndex()I

    move-result v2

    if-ltz v2, :cond_e

    .line 283
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->handleIndex()I

    move-result v2

    invoke-static {v0, v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    goto :goto_5

    .line 285
    :cond_e
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 289
    :goto_5
    const-string v0, "O"

    if-eqz p1, :cond_f

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 290
    :cond_f
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->otherHandleIndex()I

    move-result v2

    if-ltz v2, :cond_10

    .line 291
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->otherHandleIndex()I

    move-result v2

    invoke-static {v0, v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    goto :goto_6

    .line 293
    :cond_10
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 297
    :goto_6
    const-string v0, "M"

    if-eqz p1, :cond_11

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 298
    :cond_11
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->parameter()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_12

    .line 299
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->parameter()D

    move-result-wide v2

    invoke-static {v0, v2, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    goto :goto_7

    .line 301
    :cond_12
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 305
    :goto_7
    const-string v0, "W"

    if-eqz p1, :cond_13

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 306
    :cond_13
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->width()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_14

    .line 307
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->width()D

    move-result-wide v2

    invoke-static {v0, v2, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    goto :goto_8

    .line 309
    :cond_14
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 313
    :goto_8
    const-string v0, "H"

    if-eqz p1, :cond_15

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 314
    :cond_15
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->height()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result p1

    if-nez p1, :cond_16

    .line 315
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->height()D

    move-result-wide p1

    invoke-static {v0, p1, p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    return-void

    .line 317
    :cond_16
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method


# virtual methods
.method public angleType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_angleType:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    return-object v0
.end method

.method public handleIndex()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_handleIndex:I

    return v0
.end method

.method public height()D
    .locals 2

    .line 196
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_height:D

    return-wide v0
.end method

.method public isEqualToCriterion(Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 209
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->positionType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->positionType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    move-result-object v3

    if-ne v2, v3, :cond_c

    .line 210
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->sizeType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->sizeType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    move-result-object v3

    if-ne v2, v3, :cond_c

    .line 211
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->angleType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->angleType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    move-result-object v3

    if-ne v2, v3, :cond_c

    .line 212
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->x()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->x()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->x()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->x()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_c

    .line 213
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->y()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->y()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->y()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->y()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_c

    .line 214
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->handleIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->handleIndex()I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 215
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->otherHandleIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->otherHandleIndex()I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 216
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->parameter()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->parameter()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->parameter()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->parameter()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_c

    .line 217
    :cond_7
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->width()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->width()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->width()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->width()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_c

    .line 218
    :cond_9
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->height()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->height()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->height()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->height()D

    move-result-wide v4

    cmpl-double p1, v2, v4

    if-nez p1, :cond_c

    :cond_b
    return v1

    :cond_c
    return v0
.end method

.method public otherHandleIndex()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_otherHandleIndex:I

    return v0
.end method

.method public parameter()D
    .locals 2

    .line 168
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_parameter:D

    return-wide v0
.end method

.method public positionType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_positionType:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    return-object v0
.end method

.method public setAngleType(Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_angleType:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    return-void
.end method

.method public setHandleIndex(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_handleIndex:I

    return-void
.end method

.method public setHeight(D)V
    .locals 0

    .line 197
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_height:D

    return-void
.end method

.method public setOtherHandleIndex(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_otherHandleIndex:I

    return-void
.end method

.method public setParameter(D)V
    .locals 0

    .line 169
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_parameter:D

    return-void
.end method

.method public setPositionType(Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_positionType:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    return-void
.end method

.method public setSizeType(Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_sizeType:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    return-void
.end method

.method public setWidth(D)V
    .locals 0

    .line 183
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_width:D

    return-void
.end method

.method public setX(D)V
    .locals 0

    .line 113
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_x:D

    return-void
.end method

.method public setY(D)V
    .locals 0

    .line 128
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_y:D

    return-void
.end method

.method public sizeType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_sizeType:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    return-object v0
.end method

.method public width()D
    .locals 2

    .line 182
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_width:D

    return-wide v0
.end method

.method public x()D
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_x:D

    return-wide v0
.end method

.method public y()D
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->m_y:D

    return-wide v0
.end method
