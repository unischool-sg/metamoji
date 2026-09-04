.class public Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;
.super Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
.source "DrStArrowPenStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;,
        Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;
    }
.end annotation


# static fields
.field static final DrStArrowHeadDefaultRatio:F = 4.0f

.field private static final MODEL_PROPERTY_HEAD_POSITION:Ljava/lang/String; = "p"

.field private static final MODEL_PROPERTY_HEAD_RATIO:Ljava/lang/String; = "r"

.field private static final MODEL_PROPERTY_HEAD_TYPE:Ljava/lang/String; = "h"


# instance fields
.field private m_headPosition:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

.field private m_headRatio:F

.field private m_headType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;-><init>()V

    return-void
.end method

.method public static checkArrowPenStyleModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 277
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->checkPenStyleModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->getPenTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object p0

    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ARROW:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newArrowPenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;
    .locals 1

    if-eqz p0, :cond_0

    .line 286
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->newEmptyArrowPenStyleModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 287
    :goto_0
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;-><init>()V

    invoke-virtual {v0, p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->initWithModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    return-object p0
.end method

.method public static newEmptyArrowPenStyleModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 264
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->newEmptyPenStyleModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 266
    const-string v0, "P"

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ARROW:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 268
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method private saveHeadPosition()V
    .locals 3

    .line 341
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headPosition:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    const-string v2, "p"

    if-eq v0, v1, :cond_1

    .line 345
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headPosition:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveHeadRatio()V
    .locals 3

    .line 352
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headRatio:F

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v1, v0, v1

    const-string v2, "r"

    if-eqz v1, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 358
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveHeadType()V
    .locals 3

    .line 330
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    const-string v2, "h"

    if-eq v0, v1, :cond_1

    .line 334
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private updateHeadPosition(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;)V
    .locals 2

    .line 311
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 318
    sget-object p1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headPosition:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    return-void

    .line 315
    :cond_0
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headPosition:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    return-void
.end method

.method private updateHeadRatio(F)V
    .locals 0

    .line 324
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headRatio:F

    return-void
.end method

.method private updateHeadType(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;)V
    .locals 2

    .line 296
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 305
    sget-object p1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    return-void

    .line 302
    :cond_0
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    return-void
.end method


# virtual methods
.method protected cloneWithScale_(FLcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
    .locals 0

    .line 124
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->newArrowPenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object p2

    .line 125
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->copyToPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;F)Z

    return-object p2
.end method

.method protected copyToPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;F)Z
    .locals 1

    .line 131
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->copyToPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;F)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 134
    :cond_0
    instance-of p2, p1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    return v0

    .line 138
    :cond_1
    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 139
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadType(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;)V

    .line 140
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headPosition:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadPosition(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;)V

    .line 141
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headRatio:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadRatio(F)V

    return v0
.end method

.method public endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headPosition:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->intValue()I

    move-result v0

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->END:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->intValue()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    return-object v0

    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    return-object v0
.end method

.method public headFillAlpha()F
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineAlpha()F

    move-result v0

    return v0
.end method

.method public headFillColor()Ljava/lang/Integer;
    .locals 1

    .line 237
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public headFillColors()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 232
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public headFillType()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;
    .locals 1

    .line 227
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    return-object v0
.end method

.method public headLineAlpha()F
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineAlpha()F

    move-result v0

    return v0
.end method

.method public headLineCap()Lcom/metamoji/df/sprite/LineCap;
    .locals 1

    .line 206
    sget-object v0, Lcom/metamoji/df/sprite/LineCap;->ROUND:Lcom/metamoji/df/sprite/LineCap;

    return-object v0
.end method

.method public headLineColor()Ljava/lang/Integer;
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public headLineDash()Ljava/util/List;
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public headLineDashAsArray()[F
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public headLineJoin()Lcom/metamoji/df/sprite/LineJoin;
    .locals 1

    .line 210
    sget-object v0, Lcom/metamoji/df/sprite/LineJoin;->ROUND:Lcom/metamoji/df/sprite/LineJoin;

    return-object v0
.end method

.method public headLineWidth()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public headMiterLimit()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public headPosition()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headPosition:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    return-object v0
.end method

.method public headRatio()F
    .locals 1

    .line 177
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headRatio:F

    return v0
.end method

.method public headType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    return-object v0
.end method

.method protected init_()Z
    .locals 5

    .line 76
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->init_()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 81
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    .line 82
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    .line 86
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    const/high16 v3, 0x40800000    # 4.0f

    if-eqz v2, :cond_1

    .line 88
    const-string v2, "h"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    .line 91
    const-string v2, "p"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    .line 94
    const-string v2, "r"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v3

    .line 98
    :cond_1
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->updateHeadType(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;)V

    .line 99
    invoke-direct {p0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->updateHeadPosition(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;)V

    .line 100
    invoke-direct {p0, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->updateHeadRatio(F)V

    const/4 v0, 0x1

    return v0
.end method

.method protected isEqualToPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 3

    .line 112
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->penType()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ARROW:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 115
    :cond_0
    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 116
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->checkEquality(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    if-ne v0, v1, :cond_1

    .line 118
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headPosition()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headPosition:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    if-ne v0, v1, :cond_1

    .line 119
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headRatio()F

    move-result p1

    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headRatio:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method protected penType_()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;
    .locals 1

    .line 107
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ARROW:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    return-object v0
.end method

.method public setHeadPosition(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headPosition:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    if-eq v0, p1, :cond_0

    .line 168
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->updateHeadPosition(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;)V

    .line 169
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->saveHeadPosition()V

    :cond_0
    return-void
.end method

.method public setHeadRatio(F)V
    .locals 1

    .line 180
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->updateHeadRatio(F)V

    .line 182
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->saveHeadRatio()V

    :cond_0
    return-void
.end method

.method public setHeadType(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    if-eq v0, p1, :cond_0

    .line 155
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->updateHeadType(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;)V

    .line 156
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->saveHeadType()V

    :cond_0
    return-void
.end method

.method public startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headPosition:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->intValue()I

    move-result v0

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->START:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->intValue()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->m_headType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    return-object v0

    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    return-object v0
.end method
