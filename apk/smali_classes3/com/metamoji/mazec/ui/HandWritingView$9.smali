.class Lcom/metamoji/mazec/ui/HandWritingView$9;
.super Lcom/metamoji/mazec/MazecEventAdapter;
.source "HandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/HandWritingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/HandWritingView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/HandWritingView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 441
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-direct {p0}, Lcom/metamoji/mazec/MazecEventAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundColorChanged(Lcom/metamoji/mazec/MazecIms;I)V
    .locals 0

    .line 448
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-virtual {p2, p1}, Lcom/metamoji/mazec/ui/HandWritingView;->adjustBackgroundColor(Lcom/metamoji/mazec/MazecIms;)V

    return-void
.end method

.method public onContentsCleared(Lcom/metamoji/mazec/MazecIms;)V
    .locals 0

    .line 443
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$mclear(Lcom/metamoji/mazec/ui/HandWritingView;)V

    .line 444
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidate()V

    return-void
.end method

.method public onEvent(ILjava/lang/Object;)V
    .locals 0

    const/16 p2, 0x18

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1a

    if-eq p1, p2, :cond_0

    return-void

    .line 525
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$madjustStrokesRelatedVars(Lcom/metamoji/mazec/ui/HandWritingView;)V

    return-void

    .line 512
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$madjustStrokesRelatedVars(Lcom/metamoji/mazec/ui/HandWritingView;)V

    .line 514
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmCandidateSelectors(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 516
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$mupdateCandidatesButtonRects(Lcom/metamoji/mazec/ui/HandWritingView;)V

    .line 517
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$mupdateStrokesBlockWithRecogResult(Lcom/metamoji/mazec/ui/HandWritingView;)V

    .line 519
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidate()V

    return-void
.end method

.method public onInputLineColorChanged(Lcom/metamoji/mazec/MazecIms;I)V
    .locals 0

    .line 471
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmDrawingStroke(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->cloneMutable()Lcom/metamoji/mazec/stroke/MutableStrokeStyle;

    move-result-object p1

    .line 472
    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;->setLineColor(I)V

    .line 473
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmDrawingStroke(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->setStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)V

    return-void
.end method

.method public onInputLineWidthTypeChanged(Lcom/metamoji/mazec/MazecIms;I)V
    .locals 0

    .line 465
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmDrawingStroke(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->cloneMutable()Lcom/metamoji/mazec/stroke/MutableStrokeStyle;

    move-result-object p1

    .line 466
    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;->setLineWidthType(I)V

    .line 467
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmDrawingStroke(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->setStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)V

    return-void
.end method

.method public onLanguageChanged(Lcom/metamoji/mazec/MazecIms;Ljava/lang/String;Z)V
    .locals 0

    .line 477
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1, p2, p3}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$mupdateLangRelatedSettings(Lcom/metamoji/mazec/ui/HandWritingView;Ljava/lang/String;Z)V

    .line 478
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidate()V

    return-void
.end method

.method public onRecognitionResultUpdated(Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)V
    .locals 2

    .line 452
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 453
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmHwResultReflecter(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 455
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmCandidateSelectors(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 460
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    if-lez p2, :cond_0

    .line 457
    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmHwResultReflecter(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 460
    :cond_0
    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmHwResultReflecter(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStrokeUpdated(Lcom/metamoji/mazec/MazecIms;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/MazecIms;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;)V"
        }
    .end annotation

    .line 482
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmIgnoreStrokeUpdate(Lcom/metamoji/mazec/ui/HandWritingView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 485
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 486
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmHwResultReflecter(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 488
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmCandidateSelectors(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 489
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmStrokeDrawers(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/mazec/stroke/StrokeDrawer;

    .line 490
    invoke-virtual {p3}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->clearPathCache()V

    goto :goto_0

    .line 493
    :cond_1
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmViewData(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object p3

    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmViewMapMatrix(Lcom/metamoji/mazec/ui/HandWritingView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes(Landroid/graphics/Matrix;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fputmStrokes(Lcom/metamoji/mazec/ui/HandWritingView;Lcom/metamoji/mazec/stroke/HwStrokes;)V

    .line 495
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmHandwriteStrokeBlockDetecter(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 497
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmHandwriteStrokeBlockDetecter(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 500
    :cond_2
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidate()V

    .line 501
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$mupdateViewWidth(Lcom/metamoji/mazec/ui/HandWritingView;)V

    .line 502
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$9;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    iget-object p1, p1, Lcom/metamoji/mazec/ui/HandWritingView;->mStrokeBlocks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
