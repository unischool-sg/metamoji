.class public Lcom/metamoji/ch/line/ChLineChartDefaultSetting;
.super Ljava/lang/Object;
.source "IChLineChartSetting.kt"

# interfaces
.implements Lcom/metamoji/ch/line/IChLineChartSetting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ch/line/ChLineChartDefaultSetting$Companion;,
        Lcom/metamoji/ch/line/ChLineChartDefaultSetting$ScaleGridSettingMarginNarrow;,
        Lcom/metamoji/ch/line/ChLineChartDefaultSetting$ScaleGridSettingMarginWide;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 \u001b2\u00020\u0001:\u0003\u001b\u001c\u001dB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016R\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0014\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/metamoji/ch/line/ChLineChartDefaultSetting;",
        "Lcom/metamoji/ch/line/IChLineChartSetting;",
        "<init>",
        "()V",
        "lineColor",
        "",
        "seriesIndex",
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
.field public static final Companion:Lcom/metamoji/ch/line/ChLineChartDefaultSetting$Companion;

.field private static final sharedInstance:Lcom/metamoji/ch/line/ChLineChartDefaultSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ch/line/ChLineChartDefaultSetting$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ch/line/ChLineChartDefaultSetting$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ch/line/ChLineChartDefaultSetting;->Companion:Lcom/metamoji/ch/line/ChLineChartDefaultSetting$Companion;

    .line 72
    new-instance v0, Lcom/metamoji/ch/line/ChLineChartDefaultSetting;

    invoke-direct {v0}, Lcom/metamoji/ch/line/ChLineChartDefaultSetting;-><init>()V

    sput-object v0, Lcom/metamoji/ch/line/ChLineChartDefaultSetting;->sharedInstance:Lcom/metamoji/ch/line/ChLineChartDefaultSetting;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSharedInstance$cp()Lcom/metamoji/ch/line/ChLineChartDefaultSetting;
    .locals 1

    .line 69
    sget-object v0, Lcom/metamoji/ch/line/ChLineChartDefaultSetting;->sharedInstance:Lcom/metamoji/ch/line/ChLineChartDefaultSetting;

    return-object v0
.end method


# virtual methods
.method public getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;
    .locals 1

    .line 120
    new-instance v0, Lcom/metamoji/ch/line/ChLineChartDefaultSetting$ScaleGridSettingMarginNarrow;

    invoke-direct {v0}, Lcom/metamoji/ch/line/ChLineChartDefaultSetting$ScaleGridSettingMarginNarrow;-><init>()V

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

    .line 114
    new-instance v0, Lcom/metamoji/ch/line/ChLineChartDefaultSetting$ScaleGridSettingMarginWide;

    invoke-direct {v0}, Lcom/metamoji/ch/line/ChLineChartDefaultSetting$ScaleGridSettingMarginWide;-><init>()V

    check-cast v0, Lcom/metamoji/ch/IChScaleGridSetting;

    return-object v0
.end method

.method public lineCap(I)Lcom/metamoji/df/sprite/LineCap;
    .locals 0

    .line 84
    sget-object p1, Lcom/metamoji/df/sprite/LineCap;->ROUND:Lcom/metamoji/df/sprite/LineCap;

    return-object p1
.end method

.method public lineColor(I)I
    .locals 1

    .line 76
    sget-object v0, Lcom/metamoji/ch/ChAutoColor;->INSTANCE:Lcom/metamoji/ch/ChAutoColor;

    invoke-virtual {v0, p1}, Lcom/metamoji/ch/ChAutoColor;->color(I)I

    move-result p1

    return p1
.end method

.method public lineJoin(I)Lcom/metamoji/df/sprite/LineJoin;
    .locals 0

    .line 88
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

    .line 100
    invoke-virtual {p0, p1}, Lcom/metamoji/ch/line/ChLineChartDefaultSetting;->lineColor(I)I

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

    .line 92
    sget-object p1, Lcom/metamoji/ch/ChMarker;->NONE:Lcom/metamoji/ch/ChMarker;

    return-object p1
.end method
