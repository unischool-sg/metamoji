.class Lcom/metamoji/cm/CmTaskManager$1$1;
.super Ljava/lang/Object;
.source "CmTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cm/CmTaskManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/cm/CmTaskManager$1;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/CmTaskManager$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/metamoji/cm/CmTaskManager$1$1;->this$1:Lcom/metamoji/cm/CmTaskManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 320
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager$1$1;->this$1:Lcom/metamoji/cm/CmTaskManager$1;

    iget-object v0, v0, Lcom/metamoji/cm/CmTaskManager$1;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-static {v0}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fget_onIdles(Lcom/metamoji/cm/CmTaskManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager$1$1;->this$1:Lcom/metamoji/cm/CmTaskManager$1;

    iget-object v1, v1, Lcom/metamoji/cm/CmTaskManager$1;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-static {v1}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fget_onIdles(Lcom/metamoji/cm/CmTaskManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 329
    :goto_0
    iget-object v3, p0, Lcom/metamoji/cm/CmTaskManager$1$1;->this$1:Lcom/metamoji/cm/CmTaskManager$1;

    if-ge v2, v1, :cond_0

    .line 323
    :try_start_1
    iget-object v3, v3, Lcom/metamoji/cm/CmTaskManager$1;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-static {v3}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fget_onIdles(Lcom/metamoji/cm/CmTaskManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;

    invoke-interface {v3}, Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;->onIdle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 325
    :try_start_2
    const-string v4, "onIdle caught an exception."

    invoke-static {v3, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    :cond_0
    iget-object v1, v3, Lcom/metamoji/cm/CmTaskManager$1;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 330
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
