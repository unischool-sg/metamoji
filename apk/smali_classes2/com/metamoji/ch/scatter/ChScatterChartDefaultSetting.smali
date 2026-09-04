.class public Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting;
.super Ljava/lang/Object;
.source "IChScatterChartSetting.kt"

# interfaces
.implements Lcom/metamoji/ch/scatter/IChScatterChartSetting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting$Companion;,
        Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting$ScaleGridSettingMarginNarrow;,
        Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting$ScaleGridSettingMarginWide;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u0000 \u001f2\u00020\u0001:\u0003\u001f !B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007H\u0016R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0016R\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001a\u00a8\u0006\""
    }
    d2 = {
        "Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting;",
        "Lcom/metamoji/ch/scatter/IChScatterChartSetting;",
        "<init>",
        "()V",
        "isLineDraw",
        "",
        "seriesIndex",
        "",
        "lineColor",
        "lineWidth",
        "",
        "lineCap",
        "Lcom/metamoji/df/sprite/LineCap;",
        "lineJoin",
        "Lcom/metamoji/df/sprite/LineJoin;",
        "markerType",
        "Lcom/metamoji/ch/ChMarker;",
        "markerSize",
        "markerColor",
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
        "categoryScaleAxis",
        "getCategoryScaleAxis",
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
.field public static final Companion:Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting$Companion;

.field private static final sharedInstance:Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting;->Companion:Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting$Companion;

    .line 87
    new-instance v0, Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting;

    invoke-direct {v0}, Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting;-><init>()V

    sput-object v0, Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting;->sharedInstance:Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSharedInstance$cp()Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting;
    .locals 1

    .line 85
    sget-object v0, Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting;->sharedInstance:Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting;

    return-object v0
.end method


# virtual methods
.method public getCategoryScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;
    .locals 1

    .line 139
    new-instance v0, Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting$ScaleGridSettingMarginNarrow;

    invoke-direct {v0}, Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting$ScaleGridSettingMarginNarrow;-><init>()V

    check-cast v0, Lcom/metamoji/ch/IChScaleGridSetting;

    return-object v0
.end method

.method public getValueScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;
    .locals 1

    .line 133
    new-instance v0, Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting$ScaleGridSettingMarginWide;

    invoke-direct {v0}, Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting$ScaleGridSettingMarginWide;-><init>()V

    check-cast v0, Lcom/metamoji/ch/IChScaleGridSetting;

    return-object v0
.end method

.method public isLineDraw(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public lineCap(I)Lcom/metamoji/df/sprite/LineCap;
    .locals 0

    .line 103
    sget-object p1, Lcom/metamoji/df/sprite/LineCap;->ROUND:Lcom/metamoji/df/sprite/LineCap;

    return-object p1
.end method

.method public lineColor(I)I
    .locals 1

    .line 95
    sget-object v0, Lcom/metamoji/ch/ChAutoColor;->INSTANCE:Lcom/metamoji/ch/ChAutoColor;

    invoke-virtual {v0, p1}, Lcom/metamoji/ch/ChAutoColor;->color(I)I

    move-result p1

    return p1
.end method

.method public lineJoin(I)Lcom/metamoji/df/sprite/LineJoin;
    .locals 0

    .line 107
    sget-object p1, Lcom/metamoji/df/sprite/LineJoin;->ROUND:Lcom/metamoji/df/sprite/LineJoin;

    return-object p1
.end method

.method public lineWidth(I)D
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    return-wide v0
.end method

.method public markerColor(I)I
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lcom/metamoji/ch/scatter/ChScatterChartDefaultSetting;->lineColor(I)I

    move-result p1

    return p1
.end method

.method public markerSize(I)D
    .locals 2

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    return-wide v0
.end method

.method public markerType(I)Lcom/metamoji/ch/ChMarker;
    .locals 0

    .line 111
    sget-object p1, Lcom/metamoji/ch/ChMarker;->CIRCLE:Lcom/metamoji/ch/ChMarker;

    return-object p1
.end method
