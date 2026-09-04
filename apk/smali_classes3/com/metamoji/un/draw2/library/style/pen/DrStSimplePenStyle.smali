.class public Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
.super Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
.source "DrStSimplePenStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;
    }
.end annotation


# static fields
.field protected static final LINE_CAP_BUTT:I = 0x2

.field protected static final LINE_CAP_ROUND:I = 0x0

.field protected static final LINE_CAP_SQUARE:I = 0x1

.field protected static final LINE_JOIN_BEVEL:I = 0x2

.field protected static final LINE_JOIN_MITER:I = 0x1

.field protected static final LINE_JOIN_ROUND:I = 0x0

.field protected static final MODEL_PROPERTY_FILL_ALPHA:Ljava/lang/String; = "fa"

.field protected static final MODEL_PROPERTY_FILL_COLORS:Ljava/lang/String; = "fc"

.field protected static final MODEL_PROPERTY_FILL_TYPE:Ljava/lang/String; = "ft"

.field protected static final MODEL_PROPERTY_LINE_CAP:Ljava/lang/String; = "c"

.field protected static final MODEL_PROPERTY_LINE_DASH:Ljava/lang/String; = "d"

.field protected static final MODEL_PROPERTY_LINE_JOIN:Ljava/lang/String; = "j"

.field protected static final MODEL_PROPERTY_MITER_LIMIT:Ljava/lang/String; = "m"


# instance fields
.field private m_fillAlpha:F

.field private m_fillColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_fillType:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

.field private m_lineCap:Lcom/metamoji/df/sprite/LineCap;

.field private m_lineDash:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private m_lineDashArray:[F

.field private m_lineJoin:Lcom/metamoji/df/sprite/LineJoin;

.field private m_miterLimit:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDashArray:[F

    return-void
.end method

.method public static checkEquality(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 433
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineJoin()Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineJoin()Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 434
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineDash()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->checkLineDashIsEqualToLineDash(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 435
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillType()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillType()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 436
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillColors()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->checkEqualityOfFillColors(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillAlpha()F

    move-result p0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillAlpha()F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method private checkEqualityOfFillColors(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 652
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 655
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 656
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/color/DrUtColorUtility;->checkEquality(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private checkLineDashIsEqualToLineDash(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;)Z"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 637
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    .line 640
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 641
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2

    :cond_4
    if-nez v0, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method public static checkSimplePenStyleModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 407
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->checkPenStyleModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->getPenTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object p0

    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private cloneLineDashWithLineWidth(F)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 681
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 684
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v0

    sub-float/2addr p1, v0

    .line 685
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 686
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 687
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    add-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private cloneLineDashWithScale(FZ)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 668
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 669
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 673
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 671
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 673
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private lineDashUpdated()V
    .locals 5

    .line 735
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDashArray:[F

    .line 738
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 739
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDashArray:[F

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    aput v2, v3, v1

    move v1, v4

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 742
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDashArray:[F

    return-void
.end method

.method public static newEmptySimplePenStyleModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 394
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->newEmptyPenStyleModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 396
    const-string v0, "P"

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 398
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method public static newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 1

    if-eqz p0, :cond_0

    .line 416
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newEmptySimplePenStyleModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 417
    :goto_0
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;-><init>()V

    invoke-virtual {v0, p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->initWithModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-object p0
.end method

.method private saveFillAlpha()V
    .locals 3

    .line 624
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 627
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillAlpha:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string v2, "fa"

    if-eqz v1, :cond_1

    .line 628
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 630
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveFillColors()V
    .locals 3

    .line 613
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "fc"

    if-lez v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/color/DrUtColorUtility;->hexColorStringsFromColors(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 619
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveFillType()V
    .locals 3

    .line 602
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillType:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    const-string v2, "ft"

    if-eq v0, v1, :cond_1

    .line 606
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillType:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 608
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveLineCap()V
    .locals 3

    .line 544
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 547
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$1;->$SwitchMap$com$metamoji$df$sprite$LineCap:[I

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineCap:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/LineCap;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "c"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 552
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    return-void

    .line 549
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveLineDash()V
    .locals 3

    .line 591
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    const-string v1, "d"

    if-eqz v0, :cond_1

    .line 595
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 597
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveLineJoin()V
    .locals 3

    .line 562
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 565
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$1;->$SwitchMap$com$metamoji$df$sprite$LineJoin:[I

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/LineJoin;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "j"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 574
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 570
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    return-void

    .line 567
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveMiterLimit()V
    .locals 3

    .line 580
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 583
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_miterLimit:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, v0, v1

    const-string v2, "m"

    if-eqz v1, :cond_1

    .line 584
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 586
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private updateFillAlpha(F)V
    .locals 2

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

    .line 538
    :cond_1
    :goto_1
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillAlpha:F

    return-void
.end method

.method private updateFillColors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    .line 526
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillType:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    if-eq p1, v0, :cond_1

    .line 527
    sget-object p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillType:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    .line 528
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->saveFillType()V

    :cond_1
    return-void
.end method

.method private updateFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V
    .locals 1

    .line 488
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    .line 515
    :cond_0
    sget-object p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->GRADATION_RIGHTTOP_LEFTBOTTOM:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillType:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    return-void

    .line 512
    :cond_1
    sget-object p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->GRADATION_LEFTTOP_RIGHTBOTTOM:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillType:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    return-void

    .line 509
    :cond_2
    sget-object p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->GRADATION_LEFT_RIGHT:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillType:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    return-void

    .line 506
    :cond_3
    sget-object p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->GRADATION_TOP_BOTTOM:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillType:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    return-void

    .line 503
    :cond_4
    sget-object p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillType:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    return-void

    .line 490
    :cond_5
    sget-object p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillType:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    .line 493
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 494
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 495
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->saveFillColors()V

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    .line 499
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillAlpha:F

    .line 500
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->saveFillAlpha()V

    return-void
.end method

.method private updateLineCap(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 455
    sget-object p1, Lcom/metamoji/df/sprite/LineCap;->ROUND:Lcom/metamoji/df/sprite/LineCap;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineCap:Lcom/metamoji/df/sprite/LineCap;

    return-void

    .line 451
    :cond_0
    sget-object p1, Lcom/metamoji/df/sprite/LineCap;->BUTT:Lcom/metamoji/df/sprite/LineCap;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineCap:Lcom/metamoji/df/sprite/LineCap;

    return-void

    .line 448
    :cond_1
    sget-object p1, Lcom/metamoji/df/sprite/LineCap;->SQUARE:Lcom/metamoji/df/sprite/LineCap;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineCap:Lcom/metamoji/df/sprite/LineCap;

    return-void
.end method

.method private updateLineDash(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    .line 484
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineDashUpdated()V

    return-void
.end method

.method private updateLineJoin(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 470
    sget-object p1, Lcom/metamoji/df/sprite/LineJoin;->ROUND:Lcom/metamoji/df/sprite/LineJoin;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    return-void

    .line 466
    :cond_0
    sget-object p1, Lcom/metamoji/df/sprite/LineJoin;->BEVEL:Lcom/metamoji/df/sprite/LineJoin;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    return-void

    .line 463
    :cond_1
    sget-object p1, Lcom/metamoji/df/sprite/LineJoin;->MITER:Lcom/metamoji/df/sprite/LineJoin;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    return-void
.end method

.method private updateMiterLimit(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 479
    :cond_0
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_miterLimit:F

    return-void
.end method


# virtual methods
.method public applyTo(Lcom/metamoji/df/sprite/Graphics;)V
    .locals 3

    .line 712
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->applyTo(Lcom/metamoji/df/sprite/Graphics;)V

    .line 713
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-super {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineCap:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 715
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    .line 716
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDashArray:[F

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setLineDash([F)V

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillAlpha:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 721
    new-instance v0, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 722
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillAlpha:F

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setFillAlpha(F)V

    :cond_1
    return-void
.end method

.method public applyTo(Lcom/metamoji/df/sprite/Path;)V
    .locals 3

    .line 696
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->applyTo(Lcom/metamoji/df/sprite/Path;)V

    .line 697
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-super {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineCap:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Path;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 699
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Path;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    .line 700
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDashArray:[F

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Path;->setLineDash([F)V

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillAlpha:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 705
    new-instance v0, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Path;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 706
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillAlpha:F

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Path;->setFillAlpha(F)V

    :cond_1
    return-void
.end method

.method protected cloneWithScale_(FLcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
    .locals 1

    .line 206
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object p2

    .line 207
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineCap:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {p2, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 208
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {p2, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneLineDashWithScale(FZ)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineDash(Ljava/util/List;)V

    .line 210
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillType:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    .line 211
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillColors(Ljava/util/List;)V

    .line 212
    iget p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillAlpha:F

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillAlpha(F)V

    return-object p2
.end method

.method protected copyToPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;F)Z
    .locals 2

    .line 218
    instance-of v0, p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 222
    :cond_0
    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 223
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineCap:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 224
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    const/4 v0, 0x0

    .line 225
    invoke-direct {p0, p2, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneLineDashWithScale(FZ)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineDash(Ljava/util/List;)V

    .line 226
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillType:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    .line 227
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillColors(Ljava/util/List;)V

    .line 228
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillAlpha:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillAlpha(F)V

    return v1
.end method

.method public fillAlpha()F
    .locals 1

    .line 302
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillAlpha:F

    return v0
.end method

.method public fillColor()Ljava/lang/Integer;
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public fillColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    return-object v0
.end method

.method public fillType()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillType:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    return-object v0
.end method

.method public getFillColorARGB()I
    .locals 3

    .line 727
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0xff

    if-le v0, v2, :cond_1

    move v0, v2

    .line 729
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    shl-int/lit8 v0, v0, 0x18

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public getLineDashScaleWithBaseDashInterval(FZ)F
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 366
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    if-eqz p2, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result p2

    sub-float/2addr v0, p2

    :cond_1
    div-float/2addr v0, p1

    return v0

    :cond_2
    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public gradientFillEndColor()Ljava/lang/Integer;
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public gradientFillStartColor()Ljava/lang/Integer;
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method protected init_()Z
    .locals 10

    .line 86
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->init_()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 87
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 94
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    .line 99
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 101
    const-string v3, "c"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v6

    invoke-static {v3, v2, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)I

    move-result v3

    .line 104
    const-string v6, "j"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v7

    invoke-static {v6, v2, v7}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)I

    move-result v6

    .line 107
    const-string v7, "d"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v7

    .line 110
    const-string v8, "ft"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    invoke-static {v8, v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    .line 113
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    const-string v9, "fc"

    invoke-static {v9, v8}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 115
    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/color/DrUtColorUtility;->colorsFromHexColorStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 116
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 117
    :cond_1
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_2
    move-object v1, v2

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->colorForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 123
    new-array v1, v4, [Ljava/lang/Integer;

    aput-object v8, v1, v2

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 124
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/color/DrUtColorUtility;->hexColorStringsFromColors(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    invoke-static {v9, v2, v8}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    .line 129
    :cond_4
    :goto_0
    const-string v2, "fa"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    invoke-static {v2, v5, v8}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v5

    move-object v2, v1

    move-object v1, v7

    goto :goto_1

    :cond_5
    move v3, v2

    move v6, v3

    move-object v2, v1

    .line 133
    :goto_1
    invoke-direct {p0, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->updateLineCap(I)V

    .line 134
    invoke-direct {p0, v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->updateLineJoin(I)V

    .line 135
    invoke-direct {p0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->updateLineDash(Ljava/util/List;)V

    .line 136
    invoke-direct {p0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->updateFillColors(Ljava/util/List;)V

    .line 137
    invoke-direct {p0, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->updateFillAlpha(F)V

    .line 138
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->updateFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    return v4
.end method

.method protected isEqualToPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 2

    .line 198
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->penType()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 201
    :cond_0
    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->checkEquality(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)Z

    move-result p1

    return p1
.end method

.method public lineCap()Lcom/metamoji/df/sprite/LineCap;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineCap:Lcom/metamoji/df/sprite/LineCap;

    return-object v0
.end method

.method public lineColor()Ljava/lang/Integer;
    .locals 2

    .line 189
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :cond_0
    return-object v0
.end method

.method public lineColorBlue()I
    .locals 2

    .line 177
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    return v0

    .line 181
    :cond_0
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColorBlue()I

    move-result v0

    return v0
.end method

.method public lineColorGreen()I
    .locals 2

    .line 165
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    return v0

    .line 169
    :cond_0
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColorGreen()I

    move-result v0

    return v0
.end method

.method public lineColorRed()I
    .locals 2

    .line 153
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    return v0

    .line 157
    :cond_0
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColorRed()I

    move-result v0

    return v0
.end method

.method public lineDash()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    return-object v0
.end method

.method public lineDashAsArray()[F
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDashArray:[F

    return-object v0
.end method

.method public lineDashAsFloatList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 272
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 273
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 274
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public lineJoin()Lcom/metamoji/df/sprite/LineJoin;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    return-object v0
.end method

.method public miterLimit()F
    .locals 1

    .line 254
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_miterLimit:F

    return v0
.end method

.method protected penType_()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;
    .locals 1

    .line 145
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    return-object v0
.end method

.method public setFillAlpha(F)V
    .locals 1

    .line 304
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 305
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->updateFillAlpha(F)V

    .line 306
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->saveFillAlpha()V

    :cond_0
    return-void
.end method

.method public setFillColors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 296
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->checkEqualityOfFillColors(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->updateFillColors(Ljava/util/List;)V

    .line 298
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->saveFillColors()V

    :cond_0
    return-void
.end method

.method public setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_fillType:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    if-eq v0, p1, :cond_0

    .line 287
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->updateFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    .line 288
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->saveFillType()V

    :cond_0
    return-void
.end method

.method public setLineCap(Lcom/metamoji/df/sprite/LineCap;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineCap:Lcom/metamoji/df/sprite/LineCap;

    if-eq v0, p1, :cond_0

    .line 241
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineCap:Lcom/metamoji/df/sprite/LineCap;

    .line 242
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->saveLineCap()V

    :cond_0
    return-void
.end method

.method public setLineDash(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 262
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->checkLineDashIsEqualToLineDash(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->updateLineDash(Ljava/util/List;)V

    .line 264
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->saveLineDash()V

    :cond_0
    return-void
.end method

.method public setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    if-eq v0, p1, :cond_0

    .line 249
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    .line 250
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->saveLineJoin()V

    :cond_0
    return-void
.end method

.method public setMiterLimit(F)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->updateMiterLimit(F)V

    .line 257
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->saveMiterLimit()V

    return-void
.end method

.method public updateLineDashWithLineWidth(F)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneLineDashWithLineWidth(F)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    .line 383
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineDashUpdated()V

    .line 384
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->saveLineDash()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateLineDashWithScale(FZ)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneLineDashWithScale(FZ)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->m_lineDash:Ljava/util/List;

    .line 350
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineDashUpdated()V

    .line 351
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->saveLineDash()V

    :cond_1
    :goto_0
    return-void
.end method
