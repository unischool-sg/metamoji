.class public final Lcom/metamoji/ch/internal/transformer/ChXYTransposeTransformer;
.super Ljava/lang/Object;
.source "ChXYTransposeTransformer.kt"

# interfaces
.implements Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/ch/internal/transformer/ChXYTransposeTransformer;",
        "Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;",
        "<init>",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;
    .locals 5

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/metamoji/ch/ChPoint;

    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    return-object v0
.end method

.method public rect(Lcom/metamoji/ch/ChRect;)Lcom/metamoji/ch/ChRect;
    .locals 10

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v1, Lcom/metamoji/ch/ChRect;

    .line 13
    invoke-virtual {p1}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v2

    .line 14
    invoke-virtual {p1}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v4

    .line 15
    invoke-virtual {p1}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v6

    .line 16
    invoke-virtual {p1}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v8

    .line 12
    invoke-direct/range {v1 .. v9}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    return-object v1
.end method
