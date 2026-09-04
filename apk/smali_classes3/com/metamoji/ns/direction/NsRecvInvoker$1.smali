.class Lcom/metamoji/ns/direction/NsRecvInvoker$1;
.super Ljava/lang/Object;
.source "NsRecvInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsRecvInvoker;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsRecvInvoker;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsRecvInvoker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker$1;->this$0:Lcom/metamoji/ns/direction/NsRecvInvoker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsRecvInvoker$1;->this$0:Lcom/metamoji/ns/direction/NsRecvInvoker;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker$1;->this$0:Lcom/metamoji/ns/direction/NsRecvInvoker;

    iget-boolean v1, v1, Lcom/metamoji/ns/direction/NsRecvInvoker;->mAlive:Z

    if-nez v1, :cond_0

    .line 66
    monitor-exit v0

    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker$1;->this$0:Lcom/metamoji/ns/direction/NsRecvInvoker;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/metamoji/ns/direction/NsRecvInvoker;->mAlive:Z

    .line 69
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker$1;->this$0:Lcom/metamoji/ns/direction/NsRecvInvoker;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsRecvInvoker;->mEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {v1}, Lcom/metamoji/cm/ResetableEvent;->set()V

    .line 70
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker$1;->this$0:Lcom/metamoji/ns/direction/NsRecvInvoker;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsRecvInvoker;->mDelegate:Lcom/metamoji/ns/direction/INsInvokerDelegate;

    invoke-interface {v1}, Lcom/metamoji/ns/direction/INsInvokerDelegate;->onInvokerDisposed()V

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/direction/NsRecvInvoker$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/direction/NsRecvInvoker$1$1;-><init>(Lcom/metamoji/ns/direction/NsRecvInvoker$1;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void

    :catchall_0
    move-exception v1

    .line 71
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
