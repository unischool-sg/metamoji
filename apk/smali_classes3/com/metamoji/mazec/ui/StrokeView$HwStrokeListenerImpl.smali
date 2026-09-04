.class Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;
.super Lcom/metamoji/mazec/ui/HwStrokeAdapter;
.source "StrokeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/StrokeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HwStrokeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/StrokeView;


# direct methods
.method private constructor <init>(Lcom/metamoji/mazec/ui/StrokeView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 371
    iput-object p1, p0, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/StrokeView;

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HwStrokeAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/mazec/ui/StrokeView;Lcom/metamoji/mazec/ui/StrokeView-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;-><init>(Lcom/metamoji/mazec/ui/StrokeView;)V

    return-void
.end method


# virtual methods
.method public notifyStrokeEnded(Lcom/metamoji/mazec/stroke/HwStroke;Landroid/graphics/RectF;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 387
    iget-object p2, p0, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/StrokeView;

    invoke-virtual {p2}, Lcom/metamoji/mazec/ui/StrokeView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    .line 388
    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/StrokeView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/StrokeView;->-$$Nest$fgetmModel(Lcom/metamoji/mazec/ui/StrokeView;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHeight()F

    move-result v0

    .line 389
    iget-object v1, p0, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/StrokeView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/StrokeView;->-$$Nest$fgetmModel(Lcom/metamoji/mazec/ui/StrokeView;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getTopLine()F

    move-result v1

    mul-float/2addr v1, p2

    div-float/2addr v1, v0

    .line 390
    iget-object v2, p0, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/StrokeView;

    invoke-static {v2}, Lcom/metamoji/mazec/ui/StrokeView;->-$$Nest$fgetmModel(Lcom/metamoji/mazec/ui/StrokeView;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getBaseLine()F

    move-result v2

    mul-float/2addr p2, v2

    div-float/2addr p2, v0

    .line 391
    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/StrokeView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/StrokeView;->-$$Nest$fgetmModel(Lcom/metamoji/mazec/ui/StrokeView;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->addStroke(Lcom/metamoji/mazec/stroke/HwStroke;FF)V

    .line 392
    iget-object p2, p0, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/StrokeView;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/metamoji/mazec/ui/StrokeView;->getAbsoluteLineWidth(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result p2

    .line 393
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->bounds()Landroid/graphics/RectF;

    move-result-object p1

    .line 394
    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/StrokeView;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p2, v2

    sub-float/2addr v1, p2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, p2

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    float-to-int v3, v3

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/metamoji/mazec/ui/StrokeView;->invalidate(IIII)V

    :cond_0
    return-void
.end method

.method public notifyStrokeUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;)V"
        }
    .end annotation

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    .line 399
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 400
    iget-object v2, p0, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/StrokeView;

    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/mazec/ui/StrokeView;->getAbsoluteLineWidth(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v2

    .line 401
    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStroke;->bounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 402
    iget-object v3, p0, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/StrokeView;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, v0

    sub-float/2addr v4, v2

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v2

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v2

    float-to-int v6, v6

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/metamoji/mazec/ui/StrokeView;->invalidate(IIII)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 406
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 407
    iget-object v1, p0, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/StrokeView;

    invoke-virtual {p2}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/mazec/ui/StrokeView;->getAbsoluteLineWidth(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v1

    .line 408
    invoke-virtual {p2}, Lcom/metamoji/mazec/stroke/HwStroke;->bounds()Landroid/graphics/RectF;

    move-result-object p2

    .line 409
    iget-object v2, p0, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/StrokeView;

    iget v3, p2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, v0

    sub-float/2addr v3, v1

    float-to-int v3, v3

    iget v4, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v1

    float-to-int v4, v4

    iget v5, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v1

    float-to-int v5, v5

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/metamoji/mazec/ui/StrokeView;->invalidate(IIII)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public notifyStroking(Landroid/graphics/RectF;)V
    .locals 5

    .line 374
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/StrokeView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/StrokeView;->-$$Nest$fgetmDrawingStroke(Lcom/metamoji/mazec/ui/StrokeView;)Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->getCurrentStroke()Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v1, p0, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/StrokeView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/StrokeView;->-$$Nest$fgetmModel(Lcom/metamoji/mazec/ui/StrokeView;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->lineWidthOfStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 383
    :goto_0
    iget-object v1, p0, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;->this$0:Lcom/metamoji/mazec/ui/StrokeView;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v0

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v0

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/metamoji/mazec/ui/StrokeView;->invalidate(IIII)V

    return-void
.end method
