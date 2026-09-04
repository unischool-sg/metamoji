.class Lcom/metamoji/ns/NsCollaboManager$45;
.super Ljava/util/TimerTask;
.source "NsCollaboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->hideProgressViewForKeyDelay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$hideTimer2:Ljava/util/Timer;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;Ljava/util/Timer;Ljava/lang/String;)V
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

    .line 4447
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$45;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager$45;->val$hideTimer2:Ljava/util/Timer;

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboManager$45;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4450
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$45;->val$hideTimer2:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4451
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$45;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboManager;->m_progressViewHideTimerDic:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$45;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4452
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboManager$45$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/NsCollaboManager$45$1;-><init>(Lcom/metamoji/ns/NsCollaboManager$45;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
