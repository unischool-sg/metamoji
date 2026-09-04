.class public Lcom/metamoji/ch/pie/ChPieChartDefaultSetting;
.super Ljava/lang/Object;
.source "IChPieChartSetting.kt"

# interfaces
.implements Lcom/metamoji/ch/pie/IChPieChartSetting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ch/pie/ChPieChartDefaultSetting$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0006\u001a\u00020\u0005H\u0016R\u0014\u0010\n\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000f\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/ch/pie/ChPieChartDefaultSetting;",
        "Lcom/metamoji/ch/pie/IChPieChartSetting;",
        "<init>",
        "()V",
        "lineColor",
        "",
        "categoryIndex",
        "lineWidth",
        "",
        "fillColor",
        "valueSelectSeries",
        "getValueSelectSeries",
        "()I",
        "donutHoleRatio",
        "getDonutHoleRatio",
        "()D",
        "piePopoutRatio",
        "chartWidthRatio",
        "getChartWidthRatio",
        "valueLabel",
        "Lcom/metamoji/ch/IChDecimalLabelSetting;",
        "dataLabel",
        "Lcom/metamoji/ch/pie/IChPieDataLabelSetting;",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/ch/pie/ChPieChartDefaultSetting$Companion;

.field private static final sharedInstance:Lcom/metamoji/ch/pie/ChPieChartDefaultSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ch/pie/ChPieChartDefaultSetting$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ch/pie/ChPieChartDefaultSetting$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ch/pie/ChPieChartDefaultSetting;->Companion:Lcom/metamoji/ch/pie/ChPieChartDefaultSetting$Companion;

    .line 72
    new-instance v0, Lcom/metamoji/ch/pie/ChPieChartDefaultSetting;

    invoke-direct {v0}, Lcom/metamoji/ch/pie/ChPieChartDefaultSetting;-><init>()V

    sput-object v0, Lcom/metamoji/ch/pie/ChPieChartDefaultSetting;->sharedInstance:Lcom/metamoji/ch/pie/ChPieChartDefaultSetting;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSharedInstance$cp()Lcom/metamoji/ch/pie/ChPieChartDefaultSetting;
    .locals 1

    .line 70
    sget-object v0, Lcom/metamoji/ch/pie/ChPieChartDefaultSetting;->sharedInstance:Lcom/metamoji/ch/pie/ChPieChartDefaultSetting;

    return-object v0
.end method


# virtual methods
.method public dataLabel(I)Lcom/metamoji/ch/pie/IChPieDataLabelSetting;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public fillColor(I)I
    .locals 1

    .line 84
    sget-object v0, Lcom/metamoji/ch/ChAutoColor;->INSTANCE:Lcom/metamoji/ch/ChAutoColor;

    invoke-virtual {v0, p1}, Lcom/metamoji/ch/ChAutoColor;->color(I)I

    move-result p1

    return p1
.end method

.method public getChartWidthRatio()D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public getDonutHoleRatio()D
    .locals 2

    const-wide v0, 0x3fe6666666666666L    # 0.7

    return-wide v0
.end method

.method public getValueSelectSeries()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lineColor(I)I
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/metamoji/ch/pie/ChPieChartDefaultSetting;->fillColor(I)I

    move-result p1

    return p1
.end method

.method public lineWidth(I)D
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    return-wide v0
.end method

.method public piePopoutRatio(I)D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public valueLabel(I)Lcom/metamoji/ch/IChDecimalLabelSetting;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
