.class public final Lcom/metamoji/un/survey/UnSurveyPieChartSetting;
.super Lcom/metamoji/ch/pie/ChPieChartDefaultSetting;
.source "UnSurveyPieChartSetting.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\tJ\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bJ\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0016J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u000bH\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u000bH\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\r\u001a\u00020\u000bH\u0016R\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0014\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/metamoji/un/survey/UnSurveyPieChartSetting;",
        "Lcom/metamoji/ch/pie/ChPieChartDefaultSetting;",
        "chartData",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "result",
        "",
        "totalCount",
        "",
        "categoryIndexToIndex",
        "categoryIndex",
        "lineColor",
        "fillColor",
        "lineWidth",
        "",
        "donutHoleRatio",
        "getDonutHoleRatio",
        "()D",
        "chartWidthRatio",
        "getChartWidthRatio",
        "dataLabel",
        "Lcom/metamoji/ch/pie/IChPieDataLabelSetting;",
        "valueLabel",
        "Lcom/metamoji/ch/IChDecimalLabelSetting;",
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
.field private final chartData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "chartData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/metamoji/ch/pie/ChPieChartDefaultSetting;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/survey/UnSurveyPieChartSetting;->chartData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final categoryIndexToIndex(I)I
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyPieChartSetting;->result()Ljava/util/List;

    move-result-object v0

    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    .line 26
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitResultData;->Index:Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitResultData;

    invoke-virtual {v0}, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitResultData;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public dataLabel(I)Lcom/metamoji/ch/pie/IChPieDataLabelSetting;
    .locals 2

    .line 50
    sget-object p1, Lcom/metamoji/un/survey/UnSurveyChartUtil;->Companion:Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;

    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyPieChartSetting;->result()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyPieChartSetting;->totalCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->pieChartFontSize(Ljava/util/List;I)D

    move-result-wide v0

    .line 51
    new-instance p1, Lcom/metamoji/un/survey/UnSurveyPieChartDataLabelSetting;

    invoke-direct {p1, v0, v1}, Lcom/metamoji/un/survey/UnSurveyPieChartDataLabelSetting;-><init>(D)V

    check-cast p1, Lcom/metamoji/ch/pie/IChPieDataLabelSetting;

    return-object p1
.end method

.method public fillColor(I)I
    .locals 1

    .line 34
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/UnSurveyPieChartSetting;->categoryIndexToIndex(I)I

    move-result p1

    .line 35
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyChartAutoColor;->INSTANCE:Lcom/metamoji/un/survey/UnSurveyChartAutoColor;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/survey/UnSurveyChartAutoColor;->color(I)I

    move-result p1

    return p1
.end method

.method public getChartWidthRatio()D
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    return-wide v0
.end method

.method public getDonutHoleRatio()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public lineColor(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public lineWidth(I)D
    .locals 2

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    return-wide v0
.end method

.method public final result()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyPieChartSetting;->chartData:Ljava/util/Map;

    const-string/jumbo v1, "result"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final totalCount()I
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyPieChartSetting;->chartData:Ljava/util/Map;

    const-string/jumbo v1, "totalCount"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public valueLabel(I)Lcom/metamoji/ch/IChDecimalLabelSetting;
    .locals 4

    .line 55
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/UnSurveyPieChartSetting;->fillColor(I)I

    move-result p1

    .line 56
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyChartUtil;->Companion:Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->chooseTextColor(I)I

    move-result p1

    .line 57
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyChartUtil;->Companion:Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;

    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyPieChartSetting;->result()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyPieChartSetting;->totalCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->pieChartFontSize(Ljava/util/List;I)D

    move-result-wide v0

    .line 58
    new-instance v2, Lcom/metamoji/un/survey/UnSurveyPieChartDecimalLabelSetting;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, v0, v1}, Lcom/metamoji/un/survey/UnSurveyPieChartDecimalLabelSetting;-><init>(IID)V

    check-cast v2, Lcom/metamoji/ch/IChDecimalLabelSetting;

    return-object v2
.end method
