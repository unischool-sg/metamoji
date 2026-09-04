.class Lcom/metamoji/mazec/ui/HandWritingView$6;
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

    .line 315
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$6;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$6;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmNeedAutoCommit(Lcom/metamoji/mazec/ui/HandWritingView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->commitStrokes()V

    .line 319
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$6;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fputmNeedAutoCommit(Lcom/metamoji/mazec/ui/HandWritingView;Z)V

    :cond_0
    return-void
.end method
