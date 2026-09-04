.class public Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;
.super Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;
.source "DrLineArrowElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;
    }
.end annotation


# static fields
.field private static final ADSORPTION_MARGIN:F = 15.0f

.field private static final EXCLUSION_RADIUS:F = 15.0f

.field private static final MODEL_PROPERTY_END_HEAD_MOVABILITY:Ljava/lang/String; = "v"

.field private static final MODEL_PROPERTY_START_HEAD_MOVABILITY:Ljava/lang/String; = "m"

.field private static final VARIATION_KEY_NORMALIZED_END_POINT_X:Ljava/lang/String; = "ex"

.field private static final VARIATION_KEY_NORMALIZED_END_POINT_Y:Ljava/lang/String; = "ey"

.field private static final VARIATION_KEY_NORMALIZED_START_POINT_X:Ljava/lang/String; = "sx"

.field private static final VARIATION_KEY_NORMALIZED_START_POINT_Y:Ljava/lang/String; = "sy"


# instance fields
.field private m_endHeadMovability:Z

.field private m_startHeadMovability:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;-><init>()V

    return-void
.end method

.method private constructWithStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;ZZ)V
    .locals 0

    .line 779
    iput-boolean p3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_startHeadMovability:Z

    .line 780
    iput-boolean p4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_endHeadMovability:Z

    .line 783
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 784
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    iget-boolean p4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_startHeadMovability:Z

    invoke-static {p3, p4}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->saveStartHeadMovabilityToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 785
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    iget-boolean p4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_endHeadMovability:Z

    invoke-static {p3, p4}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->saveEndHeadMovabilityToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 789
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->addLinePathWithStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 792
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->updatePaths()V

    .line 795
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->updateExtraHandles()V

    return-void
.end method

.method private static endPointFromVariation(Ljava/util/Map;Landroid/graphics/Matrix;)Landroid/graphics/PointF;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Landroid/graphics/Matrix;",
            ")",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 864
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero()Landroid/graphics/PointF;

    move-result-object v0

    .line 865
    const-string v1, "ex"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 867
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 869
    :cond_0
    const-string v1, "ey"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 871
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    iput p0, v0, Landroid/graphics/PointF;->y:F

    .line 873
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private static handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 816
    sget-object p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;->END_HEAD:Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    .line 809
    sget-object p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;->START_HEAD:Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;

    return-object p0

    :cond_2
    if-eqz p2, :cond_3

    .line 811
    sget-object p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;->END_HEAD:Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;

    return-object p0

    .line 822
    :cond_3
    :goto_0
    sget-object p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;->NONE:Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;

    return-object p0
.end method

.method public static newEmptyLineArrowElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 723
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->newEmptyArrowElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 725
    const-string v0, "a"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 727
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method public static newLineArrowElementWithStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;ZZLcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;
    .locals 2

    .line 745
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    .line 751
    invoke-static {p5}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->newEmptyLineArrowElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 754
    :cond_1
    new-instance p5, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;

    invoke-direct {p5}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;-><init>()V

    invoke-virtual {p5, v1, p6, p7}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p5

    check-cast p5, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;

    .line 757
    invoke-virtual {p5, p4}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;)V

    .line 760
    invoke-direct {p5, p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->constructWithStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;ZZ)V

    if-eqz p7, :cond_2

    .line 764
    invoke-virtual {p5, p7}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->editWithContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    :cond_2
    return-object p5

    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 746
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1
.end method

.method private static saveEndHeadMovabilityToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 892
    :cond_0
    const-string/jumbo v0, "v"

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 893
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 895
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveStartHeadMovabilityToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 881
    :cond_0
    const-string v0, "m"

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 882
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 884
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static startPointFromVariation(Ljava/util/Map;Landroid/graphics/Matrix;)Landroid/graphics/PointF;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Landroid/graphics/Matrix;",
            ")",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 851
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero()Landroid/graphics/PointF;

    move-result-object v0

    .line 852
    const-string/jumbo v1, "sx"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 854
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 856
    :cond_0
    const-string/jumbo v1, "sy"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 858
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    iput p0, v0, Landroid/graphics/PointF;->y:F

    .line 860
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private static variationFromStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Matrix;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/Matrix;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 829
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->inversionOfTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p2

    .line 831
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p0

    .line 832
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 834
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 835
    iget v0, p0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 836
    iget v0, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v2, "sx"

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    :cond_1
    iget v0, p0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 839
    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string/jumbo v0, "sy"

    invoke-virtual {p2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    :cond_2
    iget p0, p1, Landroid/graphics/PointF;->x:F

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_3

    .line 842
    iget p0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v0, "ex"

    invoke-virtual {p2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    :cond_3
    iget p0, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_4

    .line 845
    iget p0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string p1, "ey"

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object p2
.end method


# virtual methods
.method protected adjustLineWidthWithExtraHandlePoint_(Landroid/graphics/PointF;IF)F
    .locals 3

    .line 675
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->pathCount()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 681
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_startHeadMovability:Z

    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_endHeadMovability:Z

    invoke-static {p2, v0, v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;->ordinal()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 691
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p3

    .line 687
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object p2

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    goto :goto_0

    .line 684
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object p2

    .line 697
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v0

    .line 699
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v1

    .line 696
    invoke-static {p1, v0, p2, v1, p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)F

    move-result p1

    return p1

    :cond_3
    :goto_1
    return p3
.end method

.method protected adjustLineWidthWithTransform_(Landroid/graphics/Matrix;FF)F
    .locals 4

    .line 648
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->pathCount()I

    move-result v0

    if-nez v0, :cond_0

    return p3

    .line 653
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    const/4 v2, 0x0

    .line 654
    invoke-virtual {p0, v2, v0, v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p1, 0x0

    .line 655
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p3

    .line 660
    :cond_1
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 661
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    mul-float/2addr p3, p2

    .line 660
    invoke-static {v0, p1, p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result p1

    return p1
.end method

.method protected applyExtraHandlePoint_(Landroid/graphics/PointF;I)Z
    .locals 11

    .line 530
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->pathCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 535
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 536
    invoke-virtual {p0, v1, v0, v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 537
    invoke-static {v1, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 542
    :cond_1
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_startHeadMovability:Z

    iget-boolean v5, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_endHeadMovability:Z

    invoke-static {p2, v3, v5}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;

    move-result-object p2

    .line 548
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;->ordinal()I

    move-result p2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_3

    const/4 v5, 0x2

    if-eq p2, v5, :cond_2

    .line 558
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 554
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object p2

    move-object v6, p1

    move-object v4, p2

    goto :goto_0

    .line 551
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object p2

    move-object v4, p1

    move-object v6, p2

    .line 563
    :goto_0
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    .line 565
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v5

    .line 567
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v7

    .line 568
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v8

    .line 564
    invoke-static/range {v4 .. v10}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->checkPointsForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/4 p1, 0x5

    .line 573
    invoke-static {v9, v0, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 574
    invoke-static {v10, v2, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    return v1

    .line 575
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, v9, v10}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->resetLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    return v3

    :cond_6
    :goto_2
    return v1
.end method

.method protected applyPaths_()Z
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->pathCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 174
    :cond_0
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->applyPaths_()Z

    .line 177
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_startHeadMovability:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_endHeadMovability:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected applyTransform_(Landroid/graphics/Matrix;F)Z
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->pathCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 153
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->applyTransform_(Landroid/graphics/Matrix;F)Z

    .line 156
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_startHeadMovability:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_endHeadMovability:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected arrowAngle_()F
    .locals 1

    .line 135
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->arrowAngle_()F

    move-result v0

    return v0
.end method

.method protected arrowType_()Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;
    .locals 1

    .line 124
    sget-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    return-object v0
.end method

.method protected cancelEvaluationOfExtraHandleAtIndex_(I)V
    .locals 0

    .line 505
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->cancelEvaluationOfExtraHandleAtIndex_(I)V

    return-void
.end method

.method protected checkEqualityOfExtraHandleVariations_(Ljava/util/Map;Ljava/util/Map;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)Z"
        }
    .end annotation

    .line 404
    sget-object p3, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    invoke-static {p1, p3}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->startPointFromVariation(Ljava/util/Map;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p3

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    .line 405
    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->startPointFromVariation(Ljava/util/Map;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    const/4 v1, 0x5

    .line 404
    invoke-static {p3, v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    .line 407
    invoke-static {p1, p3}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->endPointFromVariation(Ljava/util/Map;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    sget-object p3, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    .line 408
    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->endPointFromVariation(Ljava/util/Map;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p2

    .line 407
    invoke-static {p1, p2, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected checkMovementOfExtraHandleAtIndex_(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 0

    .line 423
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->pathCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x5

    .line 426
    invoke-static {p2, p3, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected destroy_()V
    .locals 0

    .line 711
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->destroy_()V

    return-void
.end method

.method protected editExtraHandleWithVariationAlways_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public endHeadMovability()Z
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_endHeadMovability:Z

    return v0
.end method

.method protected evaluateExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/PointF;
    .locals 6

    .line 437
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->pathCount()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 444
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_startHeadMovability:Z

    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_endHeadMovability:Z

    invoke-static {p2, v0, v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;->ordinal()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 454
    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p1

    .line 450
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object p2

    .line 451
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object v0

    goto :goto_0

    .line 446
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object p2

    .line 447
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v0

    .line 459
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    div-float v1, v2, v1

    .line 460
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v3

    div-float/2addr v2, v3

    .line 462
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 465
    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 466
    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v3, v1

    if-gez v5, :cond_4

    cmpg-float p2, v3, v4

    if-gez p2, :cond_3

    .line 469
    iget p2, v0, Landroid/graphics/PointF;->x:F

    iput p2, p1, Landroid/graphics/PointF;->x:F

    goto :goto_1

    .line 471
    :cond_3
    iget p2, v0, Landroid/graphics/PointF;->y:F

    iput p2, p1, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_4
    cmpg-float v5, v4, v1

    if-gez v5, :cond_6

    cmpg-float p2, v4, v3

    if-gez p2, :cond_5

    .line 475
    iget p2, v0, Landroid/graphics/PointF;->y:F

    iput p2, p1, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 477
    :cond_5
    iget p2, v0, Landroid/graphics/PointF;->x:F

    iput p2, p1, Landroid/graphics/PointF;->x:F

    goto :goto_1

    .line 481
    :cond_6
    invoke-static {v0, p2, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getFootOfPerpendicularLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 482
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v3

    cmpg-float v1, v3, v1

    if-gez v1, :cond_7

    move-object p1, p2

    .line 488
    :cond_7
    :goto_1
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_8

    .line 489
    iget p2, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr p2, v1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    .line 491
    invoke-static {p2, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p2

    invoke-static {p2, v0, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    float-to-double p1, p1

    .line 489
    invoke-static {v0, v2, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnCircleWithCenterInDegrees(Landroid/graphics/PointF;FD)Landroid/graphics/PointF;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method protected extraHandleCount_()I
    .locals 2

    .line 188
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->pathCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 192
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_startHeadMovability:Z

    .line 195
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_endHeadMovability:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method protected extraHandleEnablementAtIndex_(I)Z
    .locals 3

    .line 274
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->pathCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 279
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_startHeadMovability:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_endHeadMovability:Z

    invoke-static {p1, v0, v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    .line 287
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 285
    :cond_1
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_endHeadMovability:Z

    return p1

    .line 283
    :cond_2
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_startHeadMovability:Z

    return p1
.end method

.method protected extraHandlePointAtIndex_(I)Landroid/graphics/PointF;
    .locals 3

    .line 209
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->pathCount()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    .line 210
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 214
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_startHeadMovability:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_endHeadMovability:Z

    invoke-static {p1, v0, v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 222
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 223
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandlePointAtIndex_(ILjava/util/Map;)Landroid/graphics/PointF;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->pathCount()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    const/4 v3, 0x0

    .line 241
    invoke-virtual {p0, v3, v0, v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 242
    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 243
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 247
    :cond_1
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_startHeadMovability:Z

    iget-boolean v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_endHeadMovability:Z

    invoke-static {p1, v3, v4}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;->ordinal()I

    move-result p1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    .line 261
    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 262
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 257
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->transform()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->endPointFromVariation(Ljava/util/Map;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 258
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object p2

    .line 259
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->adjustedLineWidth()F

    move-result v1

    .line 256
    invoke-static {v0, p1, p2, v1}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->headTipFromStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 252
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->transform()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->startPointFromVariation(Ljava/util/Map;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 253
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object p2

    .line 254
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->adjustedLineWidth()F

    move-result v0

    .line 251
    invoke-static {v2, p1, p2, v0}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->headTipFromStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 236
    :cond_4
    :goto_0
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandleVariationAtIndex_(I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->pathCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 306
    :cond_0
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    const/4 v2, 0x0

    .line 307
    invoke-virtual {p0, v2, p1, v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 308
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->variationFromStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Matrix;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandleVariationAtIndex_(ILandroid/graphics/PointF;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->pathCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_startHeadMovability:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_endHeadMovability:Z

    invoke-static {p1, v0, v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    .line 341
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object p1

    move-object v0, p1

    move-object v2, p2

    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object p1

    move-object v2, p1

    move-object v0, p2

    .line 346
    :goto_0
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 348
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v1

    .line 350
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v3

    .line 351
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v4

    .line 347
    invoke-static/range {v0 .. v6}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->checkPointsForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 356
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->transform()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {v5, v6, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->variationFromStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Matrix;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method protected highlightPathWithExtraHandlePoint_(Landroid/graphics/PointF;ILandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 7

    .line 595
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->pathCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 601
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_startHeadMovability:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_endHeadMovability:Z

    invoke-static {p2, v0, v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement$DrLineArrowHandleType;->ordinal()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x0

    .line 611
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 607
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object p2

    move-object v2, p1

    move-object v0, p2

    goto :goto_0

    .line 604
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object p2

    move-object v0, p1

    move-object v2, p2

    .line 616
    :goto_0
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 618
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v1

    .line 620
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v3

    .line 621
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v4

    .line 617
    invoke-static/range {v0 .. v6}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->checkPointsForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 626
    invoke-virtual {p3, v6}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 627
    invoke-virtual {p4, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 628
    invoke-virtual {p5, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 629
    invoke-virtual {p6, v6}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 632
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 633
    iget p2, v5, Landroid/graphics/PointF;->x:F

    iget p3, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 634
    iget p2, v6, Landroid/graphics/PointF;->x:F

    iget p3, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    return-object p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method protected initWithTransform_(Landroid/graphics/Matrix;F)Z
    .locals 2

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_startHeadMovability:Z

    .line 100
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_endHeadMovability:Z

    .line 103
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->pathCount()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 110
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_startHeadMovability:Z

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "m"

    invoke-static {v1, p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_startHeadMovability:Z

    .line 111
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_endHeadMovability:Z

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "v"

    invoke-static {v1, p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_endHeadMovability:Z

    :cond_1
    return p2
.end method

.method protected setExtraHandleVariation_(Ljava/util/Map;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)Z"
        }
    .end annotation

    .line 369
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->pathCount()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 374
    :cond_0
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 375
    invoke-virtual {p0, v0, p2, v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    .line 376
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->startPointFromVariation(Ljava/util/Map;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    .line 382
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->transform()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->endPointFromVariation(Ljava/util/Map;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    const/4 v3, 0x5

    .line 385
    invoke-static {v2, p2, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 386
    invoke-static {p1, v1, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    return v0

    .line 387
    :cond_3
    :goto_0
    invoke-virtual {p0, v0, v2, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->resetLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public startHeadMovability()Z
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 75
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->m_startHeadMovability:Z

    return v0
.end method
