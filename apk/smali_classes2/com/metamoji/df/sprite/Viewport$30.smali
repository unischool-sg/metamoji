.class Lcom/metamoji/df/sprite/Viewport$30;
.super Ljava/lang/Object;
.source "Viewport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/sprite/Viewport;->onEndOfTurnAnimation(Lcom/metamoji/df/sprite/Glimpse$Required;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/sprite/Viewport;

.field final synthetic val$req:Lcom/metamoji/df/sprite/Glimpse$Required;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Viewport;Lcom/metamoji/df/sprite/Glimpse$Required;)V
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

    .line 1376
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$30;->this$0:Lcom/metamoji/df/sprite/Viewport;

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport$30;->val$req:Lcom/metamoji/df/sprite/Glimpse$Required;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1378
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$30;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$30;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->endScreenShot()V

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$30;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetturnOver(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/TurnOverMediator;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$30;->val$req:Lcom/metamoji/df/sprite/Glimpse$Required;

    iget-boolean v1, v1, Lcom/metamoji/df/sprite/Glimpse$Required;->next:Z

    new-instance v2, Lcom/metamoji/df/sprite/Viewport$30$1;

    invoke-direct {v2, p0}, Lcom/metamoji/df/sprite/Viewport$30$1;-><init>(Lcom/metamoji/df/sprite/Viewport$30;)V

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/sprite/TurnOverMediator;->turnOverEnd(ZLjava/lang/Runnable;)V

    return-void
.end method
