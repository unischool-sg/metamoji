.class public final Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;
.super Ljava/lang/Object;
.source "UnSurveyBarChartAxisSetting.kt"

# interfaces
.implements Lcom/metamoji/ch/IChLinearScaleAxisSetting;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0018\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001cH\u0002R\u001a\u0010\u0007\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000bR\u001a\u0010\u000f\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\t\"\u0004\u0008\u0011\u0010\u000bR\u001a\u0010\u0012\u001a\u00020\u0013X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;",
        "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
        "_minValue",
        "",
        "_maxValue",
        "<init>",
        "(DD)V",
        "minValue",
        "getMinValue",
        "()D",
        "setMinValue",
        "(D)V",
        "maxValue",
        "getMaxValue",
        "setMaxValue",
        "tickSpacing",
        "getTickSpacing",
        "setTickSpacing",
        "numDecimal",
        "",
        "getNumDecimal",
        "()I",
        "setNumDecimal",
        "(I)V",
        "mMaxTicks",
        "niceNum",
        "range",
        "isRound",
        "",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private mMaxTicks:I

.field private maxValue:D

.field private minValue:D

.field private numDecimal:I

.field private tickSpacing:D


# direct methods
.method public constructor <init>(DD)V
    .locals 7

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 15
    iput v0, p0, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->mMaxTicks:I

    sub-double v0, p3, p1

    const/4 v2, 0x0

    .line 18
    invoke-direct {p0, v0, v1, v2}, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->niceNum(DZ)D

    move-result-wide v0

    .line 19
    iget v3, p0, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->mMaxTicks:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-double v5, v3

    div-double/2addr v0, v5

    invoke-direct {p0, v0, v1, v4}, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->niceNum(DZ)D

    move-result-wide v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    .line 21
    invoke-virtual {p0, v3, v4}, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->setTickSpacing(D)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->setTickSpacing(D)V

    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->getTickSpacing()D

    move-result-wide v0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->getTickSpacing()D

    move-result-wide v0

    mul-double/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->setMinValue(D)V

    .line 27
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->getTickSpacing()D

    move-result-wide p1

    div-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->getTickSpacing()D

    move-result-wide p3

    mul-double/2addr p1, p3

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->setMaxValue(D)V

    .line 29
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->getTickSpacing()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmpg-double p3, p1, p3

    if-gez p3, :cond_1

    .line 32
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    neg-double p1, p1

    double-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->setNumDecimal(I)V

    return-void

    .line 35
    :cond_1
    invoke-virtual {p0, v2}, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->setNumDecimal(I)V

    return-void
.end method

.method private final niceNum(DZ)D
    .locals 10

    .line 40
    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 41
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr p1, v4

    const/4 v4, 0x5

    const/16 v5, 0xa

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz p3, :cond_2

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    cmpg-double p3, p1, v8

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    cmpg-double p3, p1, v7

    if-gez p3, :cond_1

    goto :goto_1

    :cond_1
    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    cmpg-double p1, p1, v6

    if-gez p1, :cond_5

    goto :goto_2

    :cond_2
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double p3, p1, v8

    if-gtz p3, :cond_3

    :goto_0
    move v4, v7

    goto :goto_2

    :cond_3
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    cmpg-double p3, p1, v7

    if-gtz p3, :cond_4

    :goto_1
    move v4, v6

    goto :goto_2

    :cond_4
    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    cmpg-double p1, p1, v6

    if-gtz p1, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    int-to-double p1, v4

    .line 58
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public getMaxValue()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->maxValue:D

    return-wide v0
.end method

.method public getMinValue()D
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->minValue:D

    return-wide v0
.end method

.method public getNumDecimal()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->numDecimal:I

    return v0
.end method

.method public getTickSpacing()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->tickSpacing:D

    return-wide v0
.end method

.method public setMaxValue(D)V
    .locals 0

    .line 11
    iput-wide p1, p0, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->maxValue:D

    return-void
.end method

.method public setMinValue(D)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->minValue:D

    return-void
.end method

.method public setNumDecimal(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->numDecimal:I

    return-void
.end method

.method public setTickSpacing(D)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;->tickSpacing:D

    return-void
.end method
