.class Lcom/metamoji/ns/NsCollaboManager$15;
.super Ljava/util/TimerTask;
.source "NsCollaboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->reloginRoomSocketWithDelay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;Ljava/util/Timer;)V
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

    .line 1624
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$15;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager$15;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1627
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$15;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1628
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$15$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/NsCollaboManager$15$1;-><init>(Lcom/metamoji/ns/NsCollaboManager$15;)V

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->runOnBackground(Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;)V

    return-void
.end method
