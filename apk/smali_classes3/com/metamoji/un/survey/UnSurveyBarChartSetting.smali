.class public Lcom/metamoji/un/survey/UnSurveyBarChartSetting;
.super Lcom/metamoji/ch/bar/ChBarChartDefaultSetting;
.source "UnSurveyBarChartSetting.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartLabelDefaultSetting;,
        Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSetting;,
        Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSettingMarginNarrow;,
        Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSettingMarginWide;,
        Lcom/metamoji/un/survey/UnSurveyBarChartSetting$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0016\u0018\u00002\u00020\u0001:\u0004#$%&B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014J\u0018\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0016R\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\u0016\u0010\u0019\u001a\u0004\u0018\u00010\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u001e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0014\u0010!\u001a\u00020\u001e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010 \u00a8\u0006\'"
    }
    d2 = {
        "Lcom/metamoji/un/survey/UnSurveyBarChartSetting;",
        "Lcom/metamoji/ch/bar/ChBarChartDefaultSetting;",
        "chartData",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "mMaxValue",
        "",
        "getMMaxValue",
        "()D",
        "setMMaxValue",
        "(D)V",
        "mMinValue",
        "getMMinValue",
        "setMMinValue",
        "result",
        "",
        "totalCount",
        "",
        "categoryIndexToIndex",
        "categoryIndex",
        "fillColor",
        "seriesIndex",
        "valueScaleAxis",
        "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
        "getValueScaleAxis",
        "()Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
        "valueScaleGrid",
        "Lcom/metamoji/ch/IChScaleGridSetting;",
        "getValueScaleGrid",
        "()Lcom/metamoji/ch/IChScaleGridSetting;",
        "categoryScaleGrid",
        "getCategoryScaleGrid",
        "BarChartLabelDefaultSetting",
        "BarChartScaleGridSetting",
        "BarChartScaleGridSettingMarginWide",
        "BarChartScaleGridSettingMarginNarrow",
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

.field private mMaxValue:D

.field private mMinValue:D


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
    invoke-direct {p0}, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;->chartData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final categoryIndexToIndex(I)I
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;->result()Ljava/util/List;

    move-result-object v0

    .line 26
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<*>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    .line 27
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

.method public fillColor(II)I
    .locals 0

    .line 41
    invoke-virtual {p0, p2}, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;->categoryIndexToIndex(I)I

    move-result p1

    .line 42
    sget-object p2, Lcom/metamoji/un/survey/UnSurveyChartAutoColor;->INSTANCE:Lcom/metamoji/un/survey/UnSurveyChartAutoColor;

    invoke-virtual {p2, p1}, Lcom/metamoji/un/survey/UnSurveyChartAutoColor;->color(I)I

    move-result p1

    return p1
.end method

.method public getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;->getOrientation()Lcom/metamoji/ch/bar/ChBarChartOrientation;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/ch/bar/ChBarChartOrientation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 73
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSettingMarginWide;

    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;->result()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSettingMarginWide;-><init>(I)V

    check-cast v0, Lcom/metamoji/ch/IChScaleGridSetting;

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 72
    :cond_1
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSettingMarginNarrow;

    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;->result()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSettingMarginNarrow;-><init>(I)V

    check-cast v0, Lcom/metamoji/ch/IChScaleGridSetting;

    return-object v0
.end method

.method public final getMMaxValue()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;->mMaxValue:D

    return-wide v0
.end method

.method public final getMMinValue()D
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;->mMinValue:D

    return-wide v0
.end method

.method public getValueScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;
    .locals 5

    .line 47
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;

    iget-wide v1, p0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;->mMinValue:D

    iget-wide v3, p0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;->mMaxValue:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/metamoji/un/survey/UnSurveyBarChartAxisSetting;-><init>(DD)V

    check-cast v0, Lcom/metamoji/ch/IChLinearScaleAxisSetting;

    return-object v0
.end method

.method public getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;
    .locals 3

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;->getOrientation()Lcom/metamoji/ch/bar/ChBarChartOrientation;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/ch/bar/ChBarChartOrientation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 67
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSettingMarginNarrow;

    invoke-direct {v0, v1}, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSettingMarginNarrow;-><init>(I)V

    check-cast v0, Lcom/metamoji/ch/IChScaleGridSetting;

    return-object v0

    .line 65
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 66
    :cond_1
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSettingMarginWide;

    invoke-direct {v0, v1}, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSettingMarginWide;-><init>(I)V

    check-cast v0, Lcom/metamoji/ch/IChScaleGridSetting;

    return-object v0
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

    .line 15
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;->chartData:Ljava/util/Map;

    const-string/jumbo v1, "result"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final setMMaxValue(D)V
    .locals 0

    .line 9
    iput-wide p1, p0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;->mMaxValue:D

    return-void
.end method

.method public final setMMinValue(D)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;->mMinValue:D

    return-void
.end method

.method public final totalCount()I
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;->chartData:Ljava/util/Map;

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
