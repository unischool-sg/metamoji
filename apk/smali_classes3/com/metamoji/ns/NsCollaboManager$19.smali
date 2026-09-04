.class Lcom/metamoji/ns/NsCollaboManager$19;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->collaboSocketReceivingData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$isStart:Z


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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1895
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$19;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-boolean p2, p0, Lcom/metamoji/ns/NsCollaboManager$19;->val$isStart:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1898
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$sfgetm_lockObjectForReceiving()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1899
    :try_start_0
    iget-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager$19;->val$isStart:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$19;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-boolean v1, v1, Lcom/metamoji/ns/NsCollaboManager;->m_isDataReceiving:Z

    if-nez v1, :cond_0

    .line 1901
    monitor-exit v0

    return-void

    .line 1903
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1912
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$19;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-static {v1}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$mgetCollaboModeBar(Lcom/metamoji/ns/NsCollaboManager;)Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1914
    iget-boolean v2, p0, Lcom/metamoji/ns/NsCollaboManager$19;->val$isStart:Z

    invoke-virtual {v1, v2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->inputIndicator(Z)V

    .line 1918
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
