.class public final Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;
.super Ljava/lang/Object;
.source "ChOffsetTransformer.kt"

# interfaces
.implements Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;",
        "Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;",
        "offsetX",
        "",
        "offsetY",
        "<init>",
        "(DD)V",
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
.field private final offsetX:D

.field private final offsetY:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;->offsetX:D

    iput-wide p3, p0, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;->offsetY:D

    return-void
.end method


# virtual methods
.method public point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;
    .locals 7

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/metamoji/ch/ChPoint;

    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v1

    iget-wide v3, p0, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;->offsetX:D

    add-double/2addr v1, v3

    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;->offsetY:D

    add-double/2addr v3, v5

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
    invoke-virtual {p1}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;->offsetX:D

    add-double/2addr v2, v4

    .line 14
    invoke-virtual {p1}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;->offsetY:D

    add-double/2addr v4, v6

    .line 15
    invoke-virtual {p1}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v6

    .line 16
    invoke-virtual {p1}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v8

    .line 12
    invoke-direct/range {v1 .. v9}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    return-object v1
.end method
