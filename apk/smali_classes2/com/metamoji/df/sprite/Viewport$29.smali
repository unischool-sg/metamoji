.class Lcom/metamoji/df/sprite/Viewport$29;
.super Ljava/lang/Object;
.source "Viewport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/sprite/Viewport;->onEndOfScrollAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/sprite/Viewport;

.field final synthetic val$complete:Z


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Viewport;Z)V
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

    .line 1359
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$29;->this$0:Lcom/metamoji/df/sprite/Viewport;

    iput-boolean p2, p0, Lcom/metamoji/df/sprite/Viewport$29;->val$complete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1361
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$29;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$29;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->endScreenShot()V

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$29;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetglimpse(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Glimpse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1365
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$29;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1366
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$29;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Layer;->setOverRenderer(Lcom/metamoji/df/sprite/Renderer;)V

    .line 1368
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$29;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fputglimpse(Lcom/metamoji/df/sprite/Viewport;Lcom/metamoji/df/sprite/Glimpse;)V

    .line 1370
    :cond_2
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$29;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/df/sprite/Viewport$29;->val$complete:Z

    invoke-interface {v0, v1}, Lcom/metamoji/df/sprite/ViewportListener;->scrollInertiaEnd(Z)V

    return-void
.end method
