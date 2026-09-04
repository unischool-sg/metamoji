.class Lcom/metamoji/ns/NsCollaboManager$33;
.super Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;
.source "NsCollaboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->handlePing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2839
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$33;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doit()V
    .locals 2

    .line 2842
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$sfgetm_lockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2843
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$33;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    if-eqz v1, :cond_0

    .line 2844
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$33;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    invoke-virtual {v1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommandPingResult()Ljava/lang/String;

    .line 2846
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
