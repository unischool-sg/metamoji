.class Lcom/metamoji/mazec/ui/HandWritingView$5;
.super Ljava/lang/Object;
.source "HandWritingView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 297
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$5;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 299
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$5;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmNeedAutoScroll(Lcom/metamoji/mazec/ui/HandWritingView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$5;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;

    const/4 v1, 0x0

    .line 301
    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 302
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView$5;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmInitWidth(Lcom/metamoji/mazec/ui/HandWritingView;)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->smoothScrollBy(II)V

    .line 304
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$5;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0, v1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fputmNeedAutoScroll(Lcom/metamoji/mazec/ui/HandWritingView;Z)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$5;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmNeedAutoCommit(Lcom/metamoji/mazec/ui/HandWritingView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandWritingView$5;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmAutoCommitter(Lcom/metamoji/mazec/ui/HandWritingView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/mazec/ui/HandWritingView$5;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v2}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmAutoCommitDelay(Lcom/metamoji/mazec/ui/HandWritingView;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
