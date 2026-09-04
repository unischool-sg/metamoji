.class Lcom/metamoji/df/sprite/RenderAsVector;
.super Ljava/lang/Object;
.source "RenderAsVector.java"

# interfaces
.implements Lcom/metamoji/df/sprite/Renderer;


# instance fields
.field private owner:Lcom/metamoji/df/sprite/Layer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private paintAsVector(Lcom/metamoji/df/sprite/Viewport;Lcom/metamoji/df/sprite/CanvasContext;)V
    .locals 6

    .line 19
    invoke-virtual {p2}, Lcom/metamoji/df/sprite/CanvasContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 21
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Viewport;->getViewportMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 23
    invoke-virtual {p2}, Lcom/metamoji/df/sprite/CanvasContext;->getDirtyRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 24
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 25
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 26
    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 27
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    .line 29
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Viewport;->getViewportInverseMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 31
    invoke-direct {p0, p2}, Lcom/metamoji/df/sprite/RenderAsVector;->paintContent(Lcom/metamoji/df/sprite/CanvasContext;)V

    .line 33
    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 34
    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 35
    iput v4, v1, Landroid/graphics/RectF;->right:F

    .line 36
    iput v5, v1, Landroid/graphics/RectF;->bottom:F

    .line 37
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private paintContent(Lcom/metamoji/df/sprite/CanvasContext;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsVector;->owner:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Stage;->paint(Lcom/metamoji/df/sprite/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public paint(Lcom/metamoji/df/sprite/CanvasContext;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsVector;->owner:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0, v0, p1}, Lcom/metamoji/df/sprite/RenderAsVector;->paintAsVector(Lcom/metamoji/df/sprite/Viewport;Lcom/metamoji/df/sprite/CanvasContext;)V

    :cond_0
    return-void
.end method

.method public setOwner(Lcom/metamoji/df/sprite/Layer;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/metamoji/df/sprite/RenderAsVector;->owner:Lcom/metamoji/df/sprite/Layer;

    return-void
.end method
