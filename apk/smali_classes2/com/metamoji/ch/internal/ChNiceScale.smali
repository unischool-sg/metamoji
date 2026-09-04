.class public final Lcom/metamoji/ch/internal/ChNiceScale;
.super Ljava/lang/Object;
.source "ChNiceScale.kt"

# interfaces
.implements Lcom/metamoji/ch/IChLinearScaleAxisSetting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ch/internal/ChNiceScale$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0014\u0010\n\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008R\u0014\u0010\u000c\u001a\u00020\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/ch/internal/ChNiceScale;",
        "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
        "minValue",
        "",
        "maxValue",
        "<init>",
        "(DD)V",
        "getMinValue",
        "()D",
        "getMaxValue",
        "tickSpacing",
        "getTickSpacing",
        "numDecimal",
        "",
        "getNumDecimal",
        "()I",
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
.field public static final Companion:Lcom/metamoji/ch/internal/ChNiceScale$Companion;

.field private static final MAX_TICKS:I = 0xa


# instance fields
.field private final maxValue:D

.field private final minValue:D

.field private final numDecimal:I

.field private final tickSpacing:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ch/internal/ChNiceScale$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ch/internal/ChNiceScale$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ch/internal/ChNiceScale;->Companion:Lcom/metamoji/ch/internal/ChNiceScale$Companion;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/metamoji/ch/internal/ChNiceScale;->Companion:Lcom/metamoji/ch/internal/ChNiceScale$Companion;

    sub-double v1, p3, p1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/ch/internal/ChNiceScale$Companion;->access$niceNum(Lcom/metamoji/ch/internal/ChNiceScale$Companion;DZ)D

    move-result-wide v1

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    div-double/2addr v1, v4

    const/4 v4, 0x1

    .line 51
    invoke-static {v0, v1, v2, v4}, Lcom/metamoji/ch/internal/ChNiceScale$Companion;->access$niceNum(Lcom/metamoji/ch/internal/ChNiceScale$Companion;DZ)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/ch/internal/ChNiceScale;->tickSpacing:D

    .line 52
    invoke-virtual {p0}, Lcom/metamoji/ch/internal/ChNiceScale;->getTickSpacing()D

    move-result-wide v0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    invoke-virtual {p0}, Lcom/metamoji/ch/internal/ChNiceScale;->getTickSpacing()D

    move-result-wide v0

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lcom/metamoji/ch/internal/ChNiceScale;->minValue:D

    .line 53
    invoke-virtual {p0}, Lcom/metamoji/ch/internal/ChNiceScale;->getTickSpacing()D

    move-result-wide p1

    div-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    invoke-virtual {p0}, Lcom/metamoji/ch/internal/ChNiceScale;->getTickSpacing()D

    move-result-wide p3

    mul-double/2addr p1, p3

    iput-wide p1, p0, Lcom/metamoji/ch/internal/ChNiceScale;->maxValue:D

    .line 55
    invoke-virtual {p0}, Lcom/metamoji/ch/internal/ChNiceScale;->getTickSpacing()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmpg-double p3, p1, p3

    if-gez p3, :cond_0

    .line 58
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    neg-double p1, p1

    double-to-int p1, p1

    iput p1, p0, Lcom/metamoji/ch/internal/ChNiceScale;->numDecimal:I

    return-void

    .line 61
    :cond_0
    iput v3, p0, Lcom/metamoji/ch/internal/ChNiceScale;->numDecimal:I

    return-void
.end method


# virtual methods
.method public getMaxValue()D
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/metamoji/ch/internal/ChNiceScale;->maxValue:D

    return-wide v0
.end method

.method public getMinValue()D
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/metamoji/ch/internal/ChNiceScale;->minValue:D

    return-wide v0
.end method

.method public getNumDecimal()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/metamoji/ch/internal/ChNiceScale;->numDecimal:I

    return v0
.end method

.method public getTickSpacing()D
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/metamoji/ch/internal/ChNiceScale;->tickSpacing:D

    return-wide v0
.end method
