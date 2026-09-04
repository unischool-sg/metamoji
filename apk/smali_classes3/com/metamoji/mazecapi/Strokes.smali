.class public Lcom/metamoji/mazecapi/Strokes;
.super Ljava/lang/Object;
.source "Strokes.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/metamoji/mazecapi/Stroke;",
        ">;"
    }
.end annotation


# instance fields
.field private _baseLine:F

.field private _outerBounds:Landroid/graphics/RectF;

.field private _strokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazecapi/Stroke;",
            ">;"
        }
    .end annotation
.end field

.field private _topLine:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecapi/Strokes;->_strokes:Ljava/util/List;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/metamoji/mazecapi/Strokes;->_outerBounds:Landroid/graphics/RectF;

    .line 26
    iput p1, p0, Lcom/metamoji/mazecapi/Strokes;->_topLine:F

    .line 27
    iput p2, p0, Lcom/metamoji/mazecapi/Strokes;->_baseLine:F

    return-void
.end method


# virtual methods
.method public addStroke(Lcom/metamoji/mazecapi/Stroke;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/mazecapi/Strokes;->_strokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBaseLine()F
    .locals 1

    .line 45
    iget v0, p0, Lcom/metamoji/mazecapi/Strokes;->_baseLine:F

    return v0
.end method

.method public getOuterBounds()Landroid/graphics/RectF;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/mazecapi/Strokes;->_outerBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getStrokeCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/metamoji/mazecapi/Strokes;->_strokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTopLine()F
    .locals 1

    .line 40
    iget v0, p0, Lcom/metamoji/mazecapi/Strokes;->_topLine:F

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/metamoji/mazecapi/Stroke;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/metamoji/mazecapi/Strokes;->_strokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setOuterBounds(Landroid/graphics/RectF;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/metamoji/mazecapi/Strokes;->_outerBounds:Landroid/graphics/RectF;

    return-void
.end method
