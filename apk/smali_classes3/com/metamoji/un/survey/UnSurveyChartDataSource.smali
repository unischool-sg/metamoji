.class public Lcom/metamoji/un/survey/UnSurveyChartDataSource;
.super Ljava/lang/Object;
.source "UnSurveyChartDataSource.kt"

# interfaces
.implements Lcom/metamoji/ch/IChDataSource;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\n\u0008\u0016\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000bJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\rH\u0016J\u0017\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0011\u001a\u00020\rH\u0016\u00a2\u0006\u0002\u0010\u0014J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\rH\u0016J\u0017\u0010\u0018\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0011\u001a\u00020\rH\u0016\u00a2\u0006\u0002\u0010\u0014J\u001f\u0010\u0019\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\rH\u0016\u00a2\u0006\u0002\u0010\u001cR\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0015\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/un/survey/UnSurveyChartDataSource;",
        "Lcom/metamoji/ch/IChDataSource;",
        "chartData",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "getChartData",
        "()Ljava/util/Map;",
        "result",
        "",
        "categoryCount",
        "",
        "getCategoryCount",
        "()I",
        "categoryTitle",
        "index",
        "categoryTitleAsNumber",
        "",
        "(I)Ljava/lang/Double;",
        "seriesCount",
        "getSeriesCount",
        "seriesTitle",
        "seriesTitleAsNumber",
        "data",
        "categoryIndex",
        "seriesIndex",
        "(II)Ljava/lang/Double;",
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

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/survey/UnSurveyChartDataSource;->chartData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public categoryTitle(I)Ljava/lang/String;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyChartDataSource;->result()Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    .line 20
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitResultData;->Title:Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitResultData;

    invoke-virtual {v0}, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitResultData;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public categoryTitleAsNumber(I)Ljava/lang/Double;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public data(II)Ljava/lang/Double;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyChartDataSource;->result()Ljava/util/List;

    move-result-object p2

    .line 41
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    .line 42
    sget-object p2, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitResultData;->Count:Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitResultData;

    invoke-virtual {p2}, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitResultData;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double p1, p1

    .line 44
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getCategoryCount()I
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyChartDataSource;->result()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getChartData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyChartDataSource;->chartData:Ljava/util/Map;

    return-object v0
.end method

.method public getSeriesCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
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

    .line 10
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyChartDataSource;->chartData:Ljava/util/Map;

    const-string/jumbo v1, "result"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public seriesTitle(I)Ljava/lang/String;
    .locals 0

    .line 31
    const-string p1, ""

    return-object p1
.end method

.method public seriesTitleAsNumber(I)Ljava/lang/Double;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
