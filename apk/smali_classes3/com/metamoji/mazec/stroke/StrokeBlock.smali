.class public Lcom/metamoji/mazec/stroke/StrokeBlock;
.super Ljava/lang/Object;
.source "StrokeBlock.java"


# instance fields
.field public innerBounds:Landroid/graphics/RectF;

.field public outerBounds:Landroid/graphics/RectF;

.field public strokeOrders:[J


# direct methods
.method public constructor <init>(FFFFFFFF[J)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeBlock;->innerBounds:Landroid/graphics/RectF;

    .line 8
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeBlock;->outerBounds:Landroid/graphics/RectF;

    .line 9
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeBlock;->strokeOrders:[J

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeBlock;->innerBounds:Landroid/graphics/RectF;

    .line 25
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p5, p6, p7, p8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeBlock;->outerBounds:Landroid/graphics/RectF;

    .line 27
    array-length p1, p9

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeBlock;->strokeOrders:[J

    const/4 p2, 0x0

    .line 28
    array-length p3, p9

    invoke-static {p9, p2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
