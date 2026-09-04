.class public Lcom/metamoji/ch/bar/ChBarChartDefaultSetting;
.super Ljava/lang/Object;
.source "IChBarChartSetting.kt"

# interfaces
.implements Lcom/metamoji/ch/bar/IChBarChartSetting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ch/bar/ChBarChartDefaultSetting$Companion;,
        Lcom/metamoji/ch/bar/ChBarChartDefaultSetting$ScaleGridSettingMarginNarrow;,
        Lcom/metamoji/ch/bar/ChBarChartDefaultSetting$ScaleGridSettingMarginWide;,
        Lcom/metamoji/ch/bar/ChBarChartDefaultSetting$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 \u00192\u00020\u0001:\u0003\u0019\u001a\u001bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J\u0018\u0010\u000c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0012\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/metamoji/ch/bar/ChBarChartDefaultSetting;",
        "Lcom/metamoji/ch/bar/IChBarChartSetting;",
        "<init>",
        "()V",
        "orientation",
        "Lcom/metamoji/ch/bar/ChBarChartOrientation;",
        "getOrientation",
        "()Lcom/metamoji/ch/bar/ChBarChartOrientation;",
        "fillColor",
        "",
        "seriesIndex",
        "categoryIndex",
        "lineColor",
        "lineWidth",
        "",
        "valueScaleGrid",
        "Lcom/metamoji/ch/IChScaleGridSetting;",
        "getValueScaleGrid",
        "()Lcom/metamoji/ch/IChScaleGridSetting;",
        "valueScaleAxis",
        "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
        "getValueScaleAxis",
        "()Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
        "categoryScaleGrid",
        "getCategoryScaleGrid",
        "Companion",
        "ScaleGridSettingMarginWide",
        "ScaleGridSettingMarginNarrow",
        "chart"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/ch/bar/ChBarChartDefaultSetting$Companion;

.field private static final sharedInstance:Lcom/metamoji/ch/bar/ChBarChartDefaultSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting;->Companion:Lcom/metamoji/ch/bar/ChBarChartDefaultSetting$Companion;

    .line 73
    new-instance v0, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting;

    invoke-direct {v0}, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting;-><init>()V

    sput-object v0, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting;->sharedInstance:Lcom/metamoji/ch/bar/ChBarChartDefaultSetting;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSharedInstance$cp()Lcom/metamoji/ch/bar/ChBarChartDefaultSetting;
    .locals 1

    .line 71
    sget-object v0, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting;->sharedInstance:Lcom/metamoji/ch/bar/ChBarChartDefaultSetting;

    return-object v0
.end method


# virtual methods
.method public fillColor(II)I
    .locals 0

    .line 80
    sget-object p2, Lcom/metamoji/ch/ChAutoColor;->INSTANCE:Lcom/metamoji/ch/ChAutoColor;

    invoke-virtual {p2, p1}, Lcom/metamoji/ch/ChAutoColor;->color(I)I

    move-result p1

    return p1
.end method

.method public getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting;->getOrientation()Lcom/metamoji/ch/bar/ChBarChartOrientation;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/ch/bar/ChBarChartOrientation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 113
    new-instance v0, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting$ScaleGridSettingMarginWide;

    invoke-direct {v0}, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting$ScaleGridSettingMarginWide;-><init>()V

    check-cast v0, Lcom/metamoji/ch/IChScaleGridSetting;

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 112
    :cond_1
    new-instance v0, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting$ScaleGridSettingMarginNarrow;

    invoke-direct {v0}, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting$ScaleGridSettingMarginNarrow;-><init>()V

    check-cast v0, Lcom/metamoji/ch/IChScaleGridSetting;

    return-object v0
.end method

.method public getOrientation()Lcom/metamoji/ch/bar/ChBarChartOrientation;
    .locals 1

    .line 77
    sget-object v0, Lcom/metamoji/ch/bar/ChBarChartOrientation;->VERTICAL:Lcom/metamoji/ch/bar/ChBarChartOrientation;

    return-object v0
.end method

.method public getValueScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting;->getOrientation()Lcom/metamoji/ch/bar/ChBarChartOrientation;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/ch/bar/ChBarChartOrientation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 104
    new-instance v0, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting$ScaleGridSettingMarginNarrow;

    invoke-direct {v0}, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting$ScaleGridSettingMarginNarrow;-><init>()V

    check-cast v0, Lcom/metamoji/ch/IChScaleGridSetting;

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 103
    :cond_1
    new-instance v0, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting$ScaleGridSettingMarginWide;

    invoke-direct {v0}, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting$ScaleGridSettingMarginWide;-><init>()V

    check-cast v0, Lcom/metamoji/ch/IChScaleGridSetting;

    return-object v0
.end method

.method public lineColor(II)I
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ch/bar/ChBarChartDefaultSetting;->fillColor(II)I

    move-result p1

    return p1
.end method

.method public lineWidth(II)D
    .locals 0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    return-wide p1
.end method
