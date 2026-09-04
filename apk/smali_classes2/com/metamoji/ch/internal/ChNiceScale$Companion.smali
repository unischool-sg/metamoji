.class public final Lcom/metamoji/ch/internal/ChNiceScale$Companion;
.super Ljava/lang/Object;
.source "ChNiceScale.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ch/internal/ChNiceScale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/ch/internal/ChNiceScale$Companion;",
        "",
        "<init>",
        "()V",
        "MAX_TICKS",
        "",
        "niceNum",
        "",
        "range",
        "isRound",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ch/internal/ChNiceScale$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$niceNum(Lcom/metamoji/ch/internal/ChNiceScale$Companion;DZ)D
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ch/internal/ChNiceScale$Companion;->niceNum(DZ)D

    move-result-wide p0

    return-wide p0
.end method

.method private final niceNum(DZ)D
    .locals 10

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 23
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

    .line 40
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr p1, v0

    return-wide p1
.end method
