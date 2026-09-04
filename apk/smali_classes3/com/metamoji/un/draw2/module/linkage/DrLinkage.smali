.class public Lcom/metamoji/un/draw2/module/linkage/DrLinkage;
.super Ljava/lang/Object;
.source "DrLinkage.java"


# static fields
.field public static final MODEL_NAME_PREFIX_FOLLOWER_CRITERION:Ljava/lang/String; = "lf"

.field public static final MODEL_NAME_PREFIX_TARGET_CRITERION:Ljava/lang/String; = "lt"

.field public static final MODEL_PROPERTY_ANGLE_DIFFERENCE:Ljava/lang/String; = "lA"

.field public static final MODEL_PROPERTY_DISABLE_WHEN_EDITING_TOGETHER:Ljava/lang/String; = "lE"

.field public static final MODEL_PROPERTY_HEIGHT_DIFFERENCE:Ljava/lang/String; = "lH"

.field public static final MODEL_PROPERTY_HEIGHT_DIFFERENCE_RATIO:Ljava/lang/String; = "lHR"

.field public static final MODEL_PROPERTY_IGNORE_CONTENT_SCALE:Ljava/lang/String; = "lC"

.field public static final MODEL_PROPERTY_IGNORE_REVERSING:Ljava/lang/String; = "lR"

.field public static final MODEL_PROPERTY_IS_FIXED:Ljava/lang/String; = "lF"

.field public static final MODEL_PROPERTY_IS_PREFERRED:Ljava/lang/String; = "lP"

.field public static final MODEL_PROPERTY_IS_STRONG:Ljava/lang/String; = "lS"

.field public static final MODEL_PROPERTY_MINIMUM_HEIGHT_RATIO:Ljava/lang/String; = "lMH"

.field public static final MODEL_PROPERTY_MINIMUM_WIDTH_RATIO:Ljava/lang/String; = "lMW"

.field public static final MODEL_PROPERTY_TARGET_ID:Ljava/lang/String; = "lT"

.field public static final MODEL_PROPERTY_WIDTH_DIFFERENCE:Ljava/lang/String; = "lW"

.field public static final MODEL_PROPERTY_WIDTH_DIFFERENCE_RATIO:Ljava/lang/String; = "lWR"

.field public static final MODEL_PROPERTY_X_DIFFERENCE:Ljava/lang/String; = "lX"

.field public static final MODEL_PROPERTY_Y_DIFFERENCE:Ljava/lang/String; = "lY"


# instance fields
.field private m_angleDifference:D

.field private m_disableWhenEditingTogether:Z

.field private m_followerCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

.field private m_heightDifference:D

.field private m_heightDifferenceRatio:D

.field private m_ignoreContentScale:Z

.field private m_ignoreReversing:Z

.field private m_isFixed:Z

.field private m_isPreferred:Z

.field private m_isStrong:Z

.field private m_latestFollowerContentScale:F

.field private final m_latestFollowerCriterionSize:Lcom/metamoji/cm/SizeF;

.field private m_latestFollowerIsReversingX:Z

.field private m_latestFollowerIsReversingY:Z

.field private m_latestTargetContentScale:F

.field private m_latestTargetIsReversingX:Z

.field private m_latestTargetIsReversingY:Z

.field private m_minimumHeightRatio:D

.field private m_minimumWidthRatio:D

.field private m_targetCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

.field private m_targetId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_widthDifference:D

.field private m_widthDifferenceRatio:D

.field private m_xDifference:D

.field private m_yDifference:D


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestFollowerCriterionSize:Lcom/metamoji/cm/SizeF;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 73
    iput-wide v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_xDifference:D

    .line 74
    iput-wide v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_yDifference:D

    .line 75
    iput-wide v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_widthDifference:D

    .line 76
    iput-wide v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_heightDifference:D

    .line 77
    iput-wide v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_widthDifferenceRatio:D

    .line 78
    iput-wide v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_heightDifferenceRatio:D

    .line 79
    iput-wide v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_angleDifference:D

    .line 80
    iput-wide v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_minimumWidthRatio:D

    .line 81
    iput-wide v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_minimumHeightRatio:D

    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_ignoreContentScale:Z

    .line 83
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_ignoreReversing:Z

    .line 84
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_disableWhenEditingTogether:Z

    .line 85
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_isPreferred:Z

    .line 86
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_isStrong:Z

    const/4 v2, 0x1

    .line 87
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_isFixed:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 88
    iput v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestTargetContentScale:F

    .line 89
    iput v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestFollowerContentScale:F

    .line 90
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestTargetIsReversingX:Z

    .line 91
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestTargetIsReversingY:Z

    .line 92
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestFollowerIsReversingX:Z

    .line 93
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestFollowerIsReversingY:Z

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 94
    invoke-virtual {v0, v1, v1}, Lcom/metamoji/cm/SizeF;->set(FF)V

    return-void
.end method

.method public static checkModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 887
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 890
    :cond_0
    const-string v0, "lT"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->hasPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0
.end method

.method public static clearModel(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 823
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 828
    :cond_0
    const-string v0, "lT"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 831
    const-string v0, "lt"

    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->clearModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 834
    const-string v0, "lf"

    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->clearModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 837
    const-string v0, "lX"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 840
    const-string v0, "lY"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 843
    const-string v0, "lW"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 846
    const-string v0, "lH"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 849
    const-string v0, "lWR"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 852
    const-string v0, "lHR"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 855
    const-string v0, "lA"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 858
    const-string v0, "lMW"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 861
    const-string v0, "lMH"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 864
    const-string v0, "lC"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 867
    const-string v0, "lR"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 870
    const-string v0, "lE"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 873
    const-string v0, "lP"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 876
    const-string v0, "lS"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 879
    const-string v0, "lF"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static restoreFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/linkage/DrLinkage;
    .locals 29

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 687
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 692
    :cond_0
    const-string v3, "lT"

    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v2

    .line 698
    :cond_1
    const-string v4, "lt"

    invoke-static {v0, v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->restoreFromModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 700
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 705
    :cond_2
    const-string v6, "lf"

    invoke-static {v0, v6}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->restoreFromModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v0, 0x2

    .line 707
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 718
    :cond_3
    const-string v7, "lX"

    invoke-static {v7, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v7

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    if-eqz v7, :cond_4

    .line 719
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    move v7, v5

    goto :goto_0

    :cond_4
    move v7, v1

    move-wide v10, v8

    .line 725
    :goto_0
    const-string v12, "lY"

    invoke-static {v12, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 726
    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    move v7, v5

    goto :goto_1

    :cond_5
    move-wide v12, v8

    .line 732
    :goto_1
    const-string v14, "lW"

    invoke-static {v14, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 733
    invoke-virtual {v14}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    move v7, v5

    goto :goto_2

    :cond_6
    move-wide v14, v8

    .line 739
    :goto_2
    const-string v5, "lH"

    invoke-static {v5, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 740
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    move-wide/from16 v19, v17

    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    move-wide/from16 v19, v8

    .line 746
    :goto_3
    const-string v5, "lWR"

    invoke-static {v5, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 747
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    move-wide/from16 v21, v17

    const/4 v7, 0x1

    goto :goto_4

    :cond_8
    move-wide/from16 v21, v8

    .line 753
    :goto_4
    const-string v5, "lHR"

    invoke-static {v5, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 754
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    move-wide/from16 v23, v17

    const/4 v7, 0x1

    goto :goto_5

    :cond_9
    move-wide/from16 v23, v8

    .line 760
    :goto_5
    const-string v5, "lA"

    invoke-static {v5, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 761
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    move-wide/from16 v25, v17

    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    move v5, v7

    move-wide/from16 v25, v8

    :goto_6
    if-nez v5, :cond_b

    const/4 v0, 0x3

    .line 767
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 772
    :cond_b
    const-string v2, "lMW"

    invoke-static {v2, v8, v9, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v1

    .line 775
    const-string v7, "lMH"

    invoke-static {v7, v8, v9, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v7

    .line 778
    const-string v9, "lC"

    const/4 v5, 0x0

    invoke-static {v9, v5, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result v9

    move/from16 v16, v9

    .line 781
    const-string v9, "lR"

    invoke-static {v9, v5, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result v9

    move/from16 v17, v9

    .line 784
    const-string v9, "lE"

    invoke-static {v9, v5, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result v9

    move/from16 v18, v9

    .line 787
    const-string v9, "lP"

    invoke-static {v9, v5, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result v9

    move/from16 v27, v9

    .line 790
    const-string v9, "lS"

    invoke-static {v9, v5, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result v9

    move/from16 v28, v9

    .line 793
    const-string v9, "lF"

    invoke-static {v9, v5, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result v0

    .line 796
    new-instance v5, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    invoke-direct {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;-><init>()V

    .line 797
    invoke-virtual {v5, v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setTargetId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 798
    invoke-virtual {v5, v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setTargetCriterion(Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)V

    .line 799
    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setFollowerCriterion(Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)V

    .line 800
    invoke-virtual {v5, v10, v11}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setXDifference(D)V

    .line 801
    invoke-virtual {v5, v12, v13}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setYDifference(D)V

    .line 802
    invoke-virtual {v5, v14, v15}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setWidthDifference(D)V

    move-wide/from16 v3, v19

    .line 803
    invoke-virtual {v5, v3, v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setHeightDifference(D)V

    move-wide/from16 v3, v21

    .line 804
    invoke-virtual {v5, v3, v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setWidthDifferenceRatio(D)V

    move-wide/from16 v3, v23

    .line 805
    invoke-virtual {v5, v3, v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setHeightDifferenceRatio(D)V

    move-wide/from16 v3, v25

    .line 806
    invoke-virtual {v5, v3, v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setAngleDifference(D)V

    .line 807
    invoke-virtual {v5, v1, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setMinimumWidthRatio(D)V

    .line 808
    invoke-virtual {v5, v7, v8}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setMinimumHeightRatio(D)V

    move/from16 v1, v16

    .line 809
    invoke-virtual {v5, v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setIgnoreContentScale(Z)V

    move/from16 v1, v17

    .line 810
    invoke-virtual {v5, v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setIgnoreReversing(Z)V

    move/from16 v1, v18

    .line 811
    invoke-virtual {v5, v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setDisableWhenEditingTogether(Z)V

    move/from16 v1, v27

    .line 812
    invoke-virtual {v5, v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setIsPreferred(Z)V

    move/from16 v1, v28

    .line 813
    invoke-virtual {v5, v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setIsStrong(Z)V

    .line 814
    invoke-virtual {v5, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setIsFixed(Z)V

    return-object v5
.end method

.method public static saveDifferencesToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 624
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    .line 628
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 633
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->xDifference()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    const-string v1, "lX"

    if-nez v0, :cond_2

    .line 634
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->xDifference()D

    move-result-wide v2

    invoke-static {v1, v2, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 636
    :cond_2
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 640
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->yDifference()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    const-string v1, "lY"

    if-nez v0, :cond_3

    .line 641
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->yDifference()D

    move-result-wide v2

    invoke-static {v1, v2, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 643
    :cond_3
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 647
    :goto_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifference()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    const-string v1, "lW"

    if-nez v0, :cond_4

    .line 648
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifference()D

    move-result-wide v2

    invoke-static {v1, v2, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 650
    :cond_4
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 654
    :goto_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifference()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    const-string v1, "lH"

    if-nez v0, :cond_5

    .line 655
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifference()D

    move-result-wide v2

    invoke-static {v1, v2, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    goto :goto_3

    .line 657
    :cond_5
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 661
    :goto_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifferenceRatio()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    const-string v1, "lWR"

    if-nez v0, :cond_6

    .line 662
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifferenceRatio()D

    move-result-wide v2

    invoke-static {v1, v2, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    goto :goto_4

    .line 664
    :cond_6
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 668
    :goto_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifferenceRatio()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    const-string v1, "lHR"

    if-nez v0, :cond_7

    .line 669
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifferenceRatio()D

    move-result-wide v2

    invoke-static {v1, v2, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    goto :goto_5

    .line 671
    :cond_7
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 675
    :goto_5
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->angleDifference()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    const-string v1, "lA"

    if-nez v0, :cond_8

    .line 676
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->angleDifference()D

    move-result-wide v2

    invoke-static {v1, v2, v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    return-void

    .line 678
    :cond_8
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static saveTargetIdToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 605
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    .line 609
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 612
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 p0, 0x2

    .line 613
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 616
    :cond_2
    const-string v0, "lT"

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static saveToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 511
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 515
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 518
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 p0, 0x2

    .line 519
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 522
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 p0, 0x3

    .line 523
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 526
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 p0, 0x4

    .line 527
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 532
    :cond_4
    const-string v0, "lT"

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    .line 535
    const-string v0, "lt"

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->saveToModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)V

    .line 538
    const-string v0, "lf"

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->saveToModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)V

    .line 541
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->saveDifferencesToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 544
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumWidthRatio()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    const-string v2, "lMW"

    if-nez v0, :cond_5

    .line 545
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumWidthRatio()D

    move-result-wide v3

    invoke-static {v2, v3, v4, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 547
    :cond_5
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 551
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumHeightRatio()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    const-string v2, "lMH"

    if-nez v0, :cond_6

    .line 552
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumHeightRatio()D

    move-result-wide v3

    invoke-static {v2, v3, v4, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 554
    :cond_6
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 558
    :goto_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->ignoreContentScale()Z

    move-result v0

    const-string v2, "lC"

    if-eqz v0, :cond_7

    .line 559
    invoke-static {v2, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 561
    :cond_7
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 565
    :goto_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->ignoreReversing()Z

    move-result v0

    const-string v2, "lR"

    if-eqz v0, :cond_8

    .line 566
    invoke-static {v2, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    goto :goto_3

    .line 568
    :cond_8
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 572
    :goto_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->disableWhenEditingTogether()Z

    move-result v0

    const-string v2, "lE"

    if-eqz v0, :cond_9

    .line 573
    invoke-static {v2, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    goto :goto_4

    .line 575
    :cond_9
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 579
    :goto_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isPreferred()Z

    move-result v0

    const-string v2, "lP"

    if-eqz v0, :cond_a

    .line 580
    invoke-static {v2, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    goto :goto_5

    .line 582
    :cond_a
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 586
    :goto_5
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isStrong()Z

    move-result v0

    const-string v2, "lS"

    if-eqz v0, :cond_b

    .line 587
    invoke-static {v2, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    goto :goto_6

    .line 589
    :cond_b
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 593
    :goto_6
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isFixed()Z

    move-result p1

    const-string v0, "lF"

    if-eqz p1, :cond_c

    .line 594
    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 596
    :cond_c
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method


# virtual methods
.method public angleDifference()D
    .locals 2

    .line 223
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_angleDifference:D

    return-wide v0
.end method

.method public byAngle()Z
    .locals 6

    .line 436
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_targetCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_followerCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    if-nez v0, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$AngleType:[I

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_targetCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->angleType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    return v1

    .line 448
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$AngleType:[I

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_followerCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->angleType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    return v1

    .line 456
    :cond_2
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_angleDifference:D

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    xor-int/2addr v0, v4

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 437
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1
.end method

.method public byPosition()Z
    .locals 7

    .line 380
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_targetCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_followerCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    if-nez v0, :cond_0

    goto :goto_1

    .line 384
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$PositionType:[I

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_targetCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->positionType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    return v1

    .line 393
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$PositionType:[I

    iget-object v6, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_followerCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->positionType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->ordinal()I

    move-result v6

    aget v0, v0, v6

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    return v1

    .line 402
    :cond_2
    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_xDifference:D

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_yDifference:D

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v5

    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 381
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1
.end method

.method public bySize()Z
    .locals 6

    .line 409
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_targetCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_followerCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    if-nez v0, :cond_0

    goto :goto_1

    .line 413
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$SizeType:[I

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_targetCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->sizeType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    return v1

    .line 421
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$SizeType:[I

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_followerCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->sizeType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    return v1

    .line 429
    :cond_2
    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_widthDifference:D

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_heightDifference:D

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_widthDifferenceRatio:D

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_heightDifferenceRatio:D

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v4

    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 410
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1
.end method

.method public disableWhenEditingTogether()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_disableWhenEditingTogether:Z

    return v0
.end method

.method public followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_followerCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    return-object v0
.end method

.method public heightDifference()D
    .locals 2

    .line 170
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_heightDifference:D

    return-wide v0
.end method

.method public heightDifferenceRatio()D
    .locals 2

    .line 202
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_heightDifferenceRatio:D

    return-wide v0
.end method

.method public ignoreContentScale()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_ignoreContentScale:Z

    return v0
.end method

.method public ignoreReversing()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_ignoreReversing:Z

    return v0
.end method

.method public isEqualToLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 338
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    .line 342
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_targetId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-eqz v2, :cond_3

    if-eqz v3, :cond_2

    .line 339
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->isEqualToId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    return v0

    :cond_3
    if-eqz v3, :cond_4

    return v0

    .line 345
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v2

    .line 349
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_targetCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    if-eqz v2, :cond_6

    if-eqz v3, :cond_5

    .line 346
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->isEqualToCriterion(Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    return v0

    :cond_6
    if-eqz v3, :cond_7

    return v0

    .line 352
    :cond_7
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v2

    .line 356
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_followerCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    if-eqz v2, :cond_9

    if-eqz v3, :cond_8

    .line 353
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->isEqualToCriterion(Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    return v0

    :cond_9
    if-eqz v3, :cond_a

    return v0

    .line 359
    :cond_a
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->xDifference()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_xDifference:D

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->xDifference()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_xDifference:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1d

    .line 360
    :cond_c
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->yDifference()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_yDifference:D

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->yDifference()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_yDifference:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1d

    .line 361
    :cond_e
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifference()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_widthDifference:D

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifference()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_widthDifference:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1d

    .line 362
    :cond_10
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifference()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_heightDifference:D

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifference()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_heightDifference:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1d

    .line 363
    :cond_12
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifferenceRatio()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_widthDifferenceRatio:D

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_13
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifferenceRatio()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_widthDifferenceRatio:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1d

    .line 364
    :cond_14
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifferenceRatio()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_heightDifferenceRatio:D

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_15
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifferenceRatio()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_heightDifferenceRatio:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1d

    .line 365
    :cond_16
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->angleDifference()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_angleDifference:D

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_17
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->angleDifference()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_angleDifference:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1d

    .line 366
    :cond_18
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumWidthRatio()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_minimumWidthRatio:D

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_19
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumWidthRatio()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_minimumWidthRatio:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1d

    .line 367
    :cond_1a
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumHeightRatio()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_minimumHeightRatio:D

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1b
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumHeightRatio()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_minimumHeightRatio:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1d

    .line 368
    :cond_1c
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->ignoreContentScale()Z

    move-result v2

    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_ignoreContentScale:Z

    if-ne v2, v3, :cond_1d

    .line 369
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->ignoreReversing()Z

    move-result v2

    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_ignoreReversing:Z

    if-ne v2, v3, :cond_1d

    .line 370
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->disableWhenEditingTogether()Z

    move-result v2

    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_disableWhenEditingTogether:Z

    if-ne v2, v3, :cond_1d

    .line 371
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isPreferred()Z

    move-result v2

    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_isPreferred:Z

    if-ne v2, v3, :cond_1d

    .line 372
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isStrong()Z

    move-result v2

    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_isStrong:Z

    if-ne v2, v3, :cond_1d

    .line 373
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isFixed()Z

    move-result p1

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_isFixed:Z

    if-ne p1, v2, :cond_1d

    return v1

    :cond_1d
    return v0
.end method

.method public isFixed()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_isFixed:Z

    return v0
.end method

.method public isPreferred()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_isPreferred:Z

    return v0
.end method

.method public isStrong()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_isStrong:Z

    return v0
.end method

.method public latestFollowerContentScale()F
    .locals 1

    .line 469
    iget v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestFollowerContentScale:F

    return v0
.end method

.method public latestFollowerCriterionSize()Lcom/metamoji/cm/SizeF;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestFollowerCriterionSize:Lcom/metamoji/cm/SizeF;

    return-object v0
.end method

.method public latestFollowerIsReversingX()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestFollowerIsReversingX:Z

    return v0
.end method

.method public latestFollowerIsReversingY()Z
    .locals 1

    .line 489
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestFollowerIsReversingY:Z

    return v0
.end method

.method public latestTargetContentScale()F
    .locals 1

    .line 466
    iget v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestTargetContentScale:F

    return v0
.end method

.method public latestTargetIsReversingX()Z
    .locals 1

    .line 480
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestTargetIsReversingX:Z

    return v0
.end method

.method public latestTargetIsReversingY()Z
    .locals 1

    .line 483
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestTargetIsReversingY:Z

    return v0
.end method

.method public minimumHeightRatio()D
    .locals 2

    .line 254
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_minimumHeightRatio:D

    return-wide v0
.end method

.method public minimumWidthRatio()D
    .locals 2

    .line 243
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_minimumWidthRatio:D

    return-wide v0
.end method

.method public setAngleDifference(D)V
    .locals 1

    .line 226
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_angleDifference:D

    return-void

    .line 228
    :cond_0
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_angleDifference:D

    return-void

    :cond_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 231
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public setDisableWhenEditingTogether(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_disableWhenEditingTogether:Z

    return-void
.end method

.method public setFollowerCriterion(Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_followerCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    return-void
.end method

.method public setHeightDifference(D)V
    .locals 1

    .line 173
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 176
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 174
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_heightDifference:D

    return-void
.end method

.method public setHeightDifferenceRatio(D)V
    .locals 2

    .line 205
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 208
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 206
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_heightDifferenceRatio:D

    return-void
.end method

.method public setIgnoreContentScale(Z)V
    .locals 0

    .line 272
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_ignoreContentScale:Z

    return-void
.end method

.method public setIgnoreReversing(Z)V
    .locals 0

    .line 282
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_ignoreReversing:Z

    return-void
.end method

.method public setIsFixed(Z)V
    .locals 0

    .line 326
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_isFixed:Z

    return-void
.end method

.method public setIsPreferred(Z)V
    .locals 0

    .line 300
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_isPreferred:Z

    return-void
.end method

.method public setIsStrong(Z)V
    .locals 0

    .line 320
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_isStrong:Z

    return-void
.end method

.method public setLatestFollowerContentScale(F)V
    .locals 0

    .line 470
    iput p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestFollowerContentScale:F

    return-void
.end method

.method public setLatestFollowerCriterionSize(Lcom/metamoji/cm/SizeF;)V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestFollowerCriterionSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/SizeF;->set(Lcom/metamoji/cm/SizeF;)V

    return-void
.end method

.method public setLatestFollowerIsReversingX(Z)V
    .locals 0

    .line 487
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestFollowerIsReversingX:Z

    return-void
.end method

.method public setLatestFollowerIsReversingY(Z)V
    .locals 0

    .line 490
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestFollowerIsReversingY:Z

    return-void
.end method

.method public setLatestTargetContentScale(F)V
    .locals 0

    .line 467
    iput p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestTargetContentScale:F

    return-void
.end method

.method public setLatestTargetIsReversingX(Z)V
    .locals 0

    .line 481
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestTargetIsReversingX:Z

    return-void
.end method

.method public setLatestTargetIsReversingY(Z)V
    .locals 0

    .line 484
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_latestTargetIsReversingY:Z

    return-void
.end method

.method public setMinimumHeightRatio(D)V
    .locals 2

    .line 257
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 260
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 258
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_minimumHeightRatio:D

    return-void
.end method

.method public setMinimumWidthRatio(D)V
    .locals 2

    .line 246
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 249
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 247
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_minimumWidthRatio:D

    return-void
.end method

.method public setTargetCriterion(Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_targetCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    return-void
.end method

.method public setTargetId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_targetId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method public setWidthDifference(D)V
    .locals 1

    .line 162
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 165
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 163
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_widthDifference:D

    return-void
.end method

.method public setWidthDifferenceRatio(D)V
    .locals 2

    .line 194
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 197
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 195
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_widthDifferenceRatio:D

    return-void
.end method

.method public setXDifference(D)V
    .locals 1

    .line 131
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 134
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 132
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_xDifference:D

    return-void
.end method

.method public setYDifference(D)V
    .locals 1

    .line 142
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 145
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 143
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_yDifference:D

    return-void
.end method

.method public targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_targetCriterion:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    return-object v0
.end method

.method public targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_targetId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method public widthDifference()D
    .locals 2

    .line 159
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_widthDifference:D

    return-wide v0
.end method

.method public widthDifferenceRatio()D
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_widthDifferenceRatio:D

    return-wide v0
.end method

.method public xDifference()D
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_xDifference:D

    return-wide v0
.end method

.method public yDifference()D
    .locals 2

    .line 139
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->m_yDifference:D

    return-wide v0
.end method
