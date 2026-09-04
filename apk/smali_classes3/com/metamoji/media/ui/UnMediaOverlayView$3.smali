.class Lcom/metamoji/media/ui/UnMediaOverlayView$3;
.super Ljava/lang/Object;
.source "UnMediaOverlayView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/UnMediaOverlayView;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/ui/UnMediaOverlayView;

.field final synthetic val$playerBarVisibilityFinal:I

.field final synthetic val$recorderBarVisibilityFinal:I


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/UnMediaOverlayView;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaOverlayView$3;->this$0:Lcom/metamoji/media/ui/UnMediaOverlayView;

    iput p2, p0, Lcom/metamoji/media/ui/UnMediaOverlayView$3;->val$playerBarVisibilityFinal:I

    iput p3, p0, Lcom/metamoji/media/ui/UnMediaOverlayView$3;->val$recorderBarVisibilityFinal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 310
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView$3;->this$0:Lcom/metamoji/media/ui/UnMediaOverlayView;

    invoke-static {v0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->-$$Nest$mgetListener(Lcom/metamoji/media/ui/UnMediaOverlayView;)Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView$3;->this$0:Lcom/metamoji/media/ui/UnMediaOverlayView;

    invoke-static {v0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->-$$Nest$mgetListener(Lcom/metamoji/media/ui/UnMediaOverlayView;)Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;->onGlobalLayout()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView$3;->this$0:Lcom/metamoji/media/ui/UnMediaOverlayView;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_guardView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 317
    :cond_1
    iget v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView$3;->val$playerBarVisibilityFinal:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eq v0, v3, :cond_5

    .line 318
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView$3;->this$0:Lcom/metamoji/media/ui/UnMediaOverlayView;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_guardView:Landroid/view/View;

    sget v4, Lcom/metamoji/noteanytime/R$id;->player_bar:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 319
    iget v4, p0, Lcom/metamoji/media/ui/UnMediaOverlayView$3;->val$playerBarVisibilityFinal:I

    if-eqz v4, :cond_4

    if-eq v4, v2, :cond_3

    if-eq v4, v3, :cond_2

    goto :goto_0

    .line 324
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 327
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 321
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    :cond_5
    :goto_0
    iget v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView$3;->val$recorderBarVisibilityFinal:I

    if-eq v0, v3, :cond_9

    .line 332
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView$3;->this$0:Lcom/metamoji/media/ui/UnMediaOverlayView;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_guardView:Landroid/view/View;

    sget v4, Lcom/metamoji/noteanytime/R$id;->recorder_bar:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 333
    iget v4, p0, Lcom/metamoji/media/ui/UnMediaOverlayView$3;->val$recorderBarVisibilityFinal:I

    if-eqz v4, :cond_8

    if-eq v4, v2, :cond_7

    if-eq v4, v3, :cond_6

    goto :goto_1

    .line 338
    :cond_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 341
    :cond_7
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 335
    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView$3;->this$0:Lcom/metamoji/media/ui/UnMediaOverlayView;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_guardView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/ui/UnMediaOverlayView$3;->this$0:Lcom/metamoji/media/ui/UnMediaOverlayView;

    invoke-static {v1}, Lcom/metamoji/media/ui/UnMediaOverlayView;->-$$Nest$fget_globalLayoutListener(Lcom/metamoji/media/ui/UnMediaOverlayView;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 348
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView$3;->this$0:Lcom/metamoji/media/ui/UnMediaOverlayView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/media/ui/UnMediaOverlayView;->-$$Nest$fput_globalLayoutListener(Lcom/metamoji/media/ui/UnMediaOverlayView;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
