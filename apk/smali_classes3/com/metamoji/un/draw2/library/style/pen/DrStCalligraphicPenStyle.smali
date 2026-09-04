.class public Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;
.super Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
.source "DrStCalligraphicPenStyle.java"


# static fields
.field protected static final MODEL_PROPERTY_INK_COLORS:Ljava/lang/String; = "c"

.field protected static final MODEL_PROPERTY_INK_TYPE:Ljava/lang/String; = "t"

.field protected static final MODEL_PROPERTY_PEN_ANGLE:Ljava/lang/String; = "a"

.field protected static final MODEL_PROPERTY_PEN_RATE:Ljava/lang/String; = "r"


# instance fields
.field private m_inkColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

.field private m_penAngle:F

.field private m_penRate:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;-><init>()V

    return-void
.end method

.method public static checkCalligraphicPenStyleModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 185
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->checkPenStyleModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->getPenTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object p0

    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkEqualityOfInkColors(Ljava/util/List;)Z
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

    .line 272
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkColors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 276
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 277
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkColors:Ljava/util/List;

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

.method public static newCalligraphicPenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;
    .locals 1

    if-eqz p0, :cond_0

    .line 193
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->newEmptyCalligraphicPenStyleModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 194
    :goto_0
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;-><init>()V

    invoke-virtual {v0, p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->initWithModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    return-object p0
.end method

.method public static newEmptyCalligraphicPenStyleModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 172
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->newEmptyPenStyleModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 174
    const-string v0, "P"

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method private saveInkColors()V
    .locals 4

    .line 237
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "c"

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkColors:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/color/DrUtColorUtility;->checkEquality(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 241
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkColors:Ljava/util/List;

    .line 242
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/color/DrUtColorUtility;->hexColorStringsFromColors(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 241
    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveInkType()V
    .locals 3

    .line 224
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    const-string/jumbo v2, "t"

    if-eq v0, v1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private savePenAngle()V
    .locals 3

    .line 249
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_penAngle:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string v2, "a"

    if-eqz v1, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private savePenRate()V
    .locals 3

    .line 260
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_penRate:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const-string v2, "r"

    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private updateInkColors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkColors:Ljava/util/List;

    return-void
.end method

.method private updateInkType(Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    return-void
.end method

.method private updatePenAngle(F)V
    .locals 0

    .line 211
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_penAngle:F

    return-void
.end method

.method private updatePenRate(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    .line 220
    :cond_1
    :goto_1
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_penRate:F

    return-void
.end method


# virtual methods
.method protected cloneWithScale_(FLcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
    .locals 0

    .line 100
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->newCalligraphicPenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    move-result-object p1

    .line 101
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setInkType(Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;)V

    .line 102
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkColors:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setInkColors(Ljava/util/List;)V

    .line 103
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_penAngle:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setPenAngle(F)V

    .line 104
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_penRate:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setPenRate(F)V

    return-object p1
.end method

.method protected copyToPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;F)Z
    .locals 0

    .line 110
    instance-of p2, p1, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 114
    :cond_0
    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    .line 115
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setInkType(Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;)V

    .line 116
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkColors:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setInkColors(Ljava/util/List;)V

    .line 117
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_penAngle:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setPenAngle(F)V

    .line 118
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_penRate:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setPenRate(F)V

    const/4 p1, 0x0

    return p1
.end method

.method protected init_()Z
    .locals 9

    .line 40
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->init_()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 41
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 45
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    const/4 v3, 0x1

    .line 46
    new-array v4, v3, [Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 51
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v5, :cond_3

    .line 53
    const-string/jumbo v5, "t"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    invoke-static {v5, v0, v8}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    .line 56
    const-string v5, "c"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 58
    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/color/DrUtColorUtility;->colorsFromHexColorStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 59
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 60
    :cond_1
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 61
    new-array v1, v3, [Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v4, v1

    .line 66
    :cond_2
    const-string v1, "a"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v1, v6, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v6

    .line 69
    const-string v1, "r"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v1, v7, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v7

    .line 73
    :cond_3
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->updateInkType(Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;)V

    .line 74
    invoke-direct {p0, v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->updateInkColors(Ljava/util/List;)V

    .line 75
    invoke-direct {p0, v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->updatePenAngle(F)V

    .line 76
    invoke-direct {p0, v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->updatePenRate(F)V

    return v3
.end method

.method public inkColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkColors:Ljava/util/List;

    return-object v0
.end method

.method public inkType()Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    return-object v0
.end method

.method protected isEqualToPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 3

    .line 88
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->penType()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 91
    :cond_0
    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    .line 92
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->inkType()Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    if-ne v0, v1, :cond_1

    .line 93
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->inkColors()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->checkEqualityOfInkColors(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->penAngle()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_penAngle:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->penRate()F

    move-result p1

    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_penRate:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public penAngle()F
    .locals 1

    .line 149
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_penAngle:F

    return v0
.end method

.method public penRate()F
    .locals 1

    .line 157
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_penRate:F

    return v0
.end method

.method protected penType_()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;
    .locals 1

    .line 83
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    return-object v0
.end method

.method public setInkColors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->checkEqualityOfInkColors(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkColors:Ljava/util/List;

    .line 144
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->saveInkColors()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setInkType(Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    if-eq v0, p1, :cond_0

    .line 132
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    .line 133
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->saveInkType()V

    :cond_0
    return-void
.end method

.method public setPenAngle(F)V
    .locals 1

    .line 151
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_penAngle:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 152
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_penAngle:F

    .line 153
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->savePenAngle()V

    :cond_0
    return-void
.end method

.method public setPenRate(F)V
    .locals 1

    .line 159
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_penRate:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 160
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->m_penRate:F

    .line 161
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->savePenRate()V

    :cond_0
    return-void
.end method
