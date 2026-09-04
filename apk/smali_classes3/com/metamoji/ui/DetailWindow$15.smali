.class Lcom/metamoji/ui/DetailWindow$15;
.super Ljava/lang/Object;
.source "DetailWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/DetailWindow;->onCanvasSizeChanged(Lcom/metamoji/ui/DetailView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/DetailWindow;

.field final synthetic val$h:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DetailWindow;II)V
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

    .line 613
    iput-object p1, p0, Lcom/metamoji/ui/DetailWindow$15;->this$0:Lcom/metamoji/ui/DetailWindow;

    iput p2, p0, Lcom/metamoji/ui/DetailWindow$15;->val$w:I

    iput p3, p0, Lcom/metamoji/ui/DetailWindow$15;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 616
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$15;->this$0:Lcom/metamoji/ui/DetailWindow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$fput_initSize(Lcom/metamoji/ui/DetailWindow;Z)V

    .line 618
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$15;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {v0}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$mupdateFloatingPos(Lcom/metamoji/ui/DetailWindow;)V

    .line 619
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$15;->this$0:Lcom/metamoji/ui/DetailWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$madjustEditingArea(Lcom/metamoji/ui/DetailWindow;Z)V

    .line 622
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$15;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {v0}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$fget_frame(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/ui/DetailFrame;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/ui/DetailWindow$15;->val$w:I

    int-to-float v2, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/ui/DetailFrame;->setWidthRange(FF)V

    .line 623
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$15;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {v0}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$fget_frame(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/ui/DetailFrame;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/ui/DetailWindow$15;->val$h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/metamoji/ui/DetailWindow$15;->val$w:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/DetailFrame;->setRatio(F)V

    .line 624
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$15;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {v0}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$mupdatePartsPosition(Lcom/metamoji/ui/DetailWindow;)V

    .line 626
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$15;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailWindow;->updateMarginHandlePosition()V

    return-void
.end method
