.class Lcom/metamoji/df/controller/DfNoteController$9;
.super Ljava/lang/Object;
.source "DfNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/controller/DfNoteController;->createView(Lcom/metamoji/df/controller/ControllerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/controller/DfNoteController;

.field final synthetic val$context:Lcom/metamoji/df/controller/ControllerContext;


# direct methods
.method constructor <init>(Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 367
    iput-object p1, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    iput-object p2, p0, Lcom/metamoji/df/controller/DfNoteController$9;->val$context:Lcom/metamoji/df/controller/ControllerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v1}, Lcom/metamoji/df/controller/DfNoteController;->getZoom()F

    move-result v1

    .line 375
    iget-object v2, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    new-instance v3, Lcom/metamoji/df/sprite/Stage;

    invoke-direct {v3}, Lcom/metamoji/df/sprite/Stage;-><init>()V

    invoke-static {v2, v3}, Lcom/metamoji/df/controller/DfNoteController;->-$$Nest$fput_stage(Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/df/sprite/Stage;)V

    .line 376
    iget-object v2, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    invoke-static {v2}, Lcom/metamoji/df/controller/DfNoteController;->-$$Nest$fget_stage(Lcom/metamoji/df/controller/DfNoteController;)Lcom/metamoji/df/sprite/Stage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Stage;->setSprite(Lcom/metamoji/df/sprite/Sprite;)V

    .line 378
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    invoke-static {v0}, Lcom/metamoji/df/controller/DfNoteController;->-$$Nest$fget_stage(Lcom/metamoji/df/controller/DfNoteController;)Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->setZoom(F)V

    .line 379
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    invoke-static {v0}, Lcom/metamoji/df/controller/DfNoteController;->-$$Nest$fget_stage(Lcom/metamoji/df/controller/DfNoteController;)Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->setIgnoreDraw(Z)V

    .line 403
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    iget-object v2, p0, Lcom/metamoji/df/controller/DfNoteController$9;->val$context:Lcom/metamoji/df/controller/ControllerContext;

    invoke-virtual {v2}, Lcom/metamoji/df/controller/ControllerContext;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/df/controller/DfNoteController;->-$$Nest$fput_viewport(Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/df/sprite/Viewport;)V

    .line 404
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    invoke-static {v0}, Lcom/metamoji/df/controller/DfNoteController;->-$$Nest$fget_viewport(Lcom/metamoji/df/controller/DfNoteController;)Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Viewport;->setNumberOfTouchesPanGesture(I)V

    .line 421
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    invoke-static {v0}, Lcom/metamoji/df/controller/DfNoteController;->-$$Nest$fget_viewport(Lcom/metamoji/df/controller/DfNoteController;)Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setShowVerticalScrollIndicator(Z)V

    .line 422
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    invoke-static {v0}, Lcom/metamoji/df/controller/DfNoteController;->-$$Nest$fget_viewport(Lcom/metamoji/df/controller/DfNoteController;)Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setShowHorizontalScrollIndicator(Z)V

    .line 423
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    invoke-static {v0}, Lcom/metamoji/df/controller/DfNoteController;->-$$Nest$fget_viewport(Lcom/metamoji/df/controller/DfNoteController;)Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Viewport;->setMinZoomScale(F)V

    .line 424
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    invoke-static {v0}, Lcom/metamoji/df/controller/DfNoteController;->-$$Nest$fget_viewport(Lcom/metamoji/df/controller/DfNoteController;)Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {v0, v3}, Lcom/metamoji/df/sprite/Viewport;->setMaxZoomScale(F)V

    .line 425
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    invoke-static {v0}, Lcom/metamoji/df/controller/DfNoteController;->-$$Nest$fget_viewport(Lcom/metamoji/df/controller/DfNoteController;)Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Viewport;->setZoomScale(F)V

    .line 427
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    invoke-static {v0}, Lcom/metamoji/df/controller/DfNoteController;->-$$Nest$fget_viewport(Lcom/metamoji/df/controller/DfNoteController;)Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    const v2, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Viewport;->setDecelerationRate(F)V

    .line 428
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    invoke-static {v0}, Lcom/metamoji/df/controller/DfNoteController;->-$$Nest$fget_viewport(Lcom/metamoji/df/controller/DfNoteController;)Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setDirectionalLockEnabled(Z)V

    .line 430
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    invoke-static {v0}, Lcom/metamoji/df/controller/DfNoteController;->-$$Nest$fget_viewport(Lcom/metamoji/df/controller/DfNoteController;)Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->hide()V

    .line 433
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    invoke-static {v0}, Lcom/metamoji/df/controller/DfNoteController;->-$$Nest$fget_viewport(Lcom/metamoji/df/controller/DfNoteController;)Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/df/controller/DfNoteController$9;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    invoke-static {v1}, Lcom/metamoji/df/controller/DfNoteController;->-$$Nest$fget_stage(Lcom/metamoji/df/controller/DfNoteController;)Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setStage(Lcom/metamoji/df/sprite/Stage;)V

    return-void
.end method
