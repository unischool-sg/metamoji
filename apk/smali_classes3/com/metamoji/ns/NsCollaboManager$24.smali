.class Lcom/metamoji/ns/NsCollaboManager$24;
.super Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;
.source "NsCollaboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->changeClerk(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;Z)V
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

    .line 2290
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$24;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-boolean p2, p0, Lcom/metamoji/ns/NsCollaboManager$24;->val$enable:Z

    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doit()V
    .locals 4

    .line 2293
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$sfgetm_lockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2294
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$24;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    if-eqz v1, :cond_1

    .line 2295
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$24;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    const-string v2, "clerk"

    .line 2296
    iget-boolean v3, p0, Lcom/metamoji/ns/NsCollaboManager$24;->val$enable:Z

    if-eqz v3, :cond_0

    const-string v3, "enable"

    goto :goto_0

    :cond_0
    const-string v3, "disable"

    .line 2295
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommandChangeMode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2298
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
