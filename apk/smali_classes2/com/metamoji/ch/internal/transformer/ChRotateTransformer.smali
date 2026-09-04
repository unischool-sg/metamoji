.class public final Lcom/metamoji/ch/internal/transformer/ChRotateTransformer;
.super Ljava/lang/Object;
.source "ChRotateTransformer.kt"

# interfaces
.implements Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/ch/internal/transformer/ChRotateTransformer;",
        "Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;",
        "theta",
        "",
        "<init>",
        "(D)V",
        "point",
        "Lcom/metamoji/ch/ChPoint;",
        "rect",
        "Lcom/metamoji/ch/ChRect;",
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


# instance fields
.field private final theta:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/metamoji/ch/internal/transformer/ChRotateTransformer;->theta:D

    return-void
.end method


# virtual methods
.method public point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;
    .locals 9

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/metamoji/ch/ChPoint;

    .line 11
    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v1

    iget-wide v3, p0, Lcom/metamoji/ch/internal/transformer/ChRotateTransformer;->theta:D

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/metamoji/ch/internal/transformer/ChRotateTransformer;->theta:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    .line 12
    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/metamoji/ch/internal/transformer/ChRotateTransformer;->theta:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v5

    iget-wide v7, p0, Lcom/metamoji/ch/internal/transformer/ChRotateTransformer;->theta:D

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    return-object v0
.end method

.method public rect(Lcom/metamoji/ch/ChRect;)Lcom/metamoji/ch/ChRect;
    .locals 2

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance p1, Lkotlin/NotImplementedError;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method
