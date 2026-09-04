.class Lcom/metamoji/ns/NsShareViewCommand$1$1;
.super Ljava/lang/Object;
.source "NsShareViewCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsShareViewCommand$1;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsShareViewCommand$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsShareViewCommand$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/metamoji/ns/NsShareViewCommand$1$1;->this$0:Lcom/metamoji/ns/NsShareViewCommand$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 131
    sget-object v0, Lcom/metamoji/ns/NsShareViewCommand;->s_bgTaskForGetShareViewList:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;

    if-eqz v0, :cond_2

    .line 133
    sget-object v0, Lcom/metamoji/ns/NsShareViewCommand;->s_bgTaskForGetShareViewList:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;

    iget-object v1, p0, Lcom/metamoji/ns/NsShareViewCommand$1$1;->this$0:Lcom/metamoji/ns/NsShareViewCommand$1;

    iget-object v1, v1, Lcom/metamoji/ns/NsShareViewCommand$1;->val$searchCondDic:Ljava/util/Map;

    iget-object v2, p0, Lcom/metamoji/ns/NsShareViewCommand$1$1;->this$0:Lcom/metamoji/ns/NsShareViewCommand$1;

    iget-object v2, v2, Lcom/metamoji/ns/NsShareViewCommand$1;->val$sortCondList:Ljava/util/List;

    iget-object v3, p0, Lcom/metamoji/ns/NsShareViewCommand$1$1;->this$0:Lcom/metamoji/ns/NsShareViewCommand$1;

    iget-object v3, v3, Lcom/metamoji/ns/NsShareViewCommand$1;->val$completionAction:Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->setCondition(Ljava/util/Map;Ljava/util/List;Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "[ShareViewCommand] --- task Condition changed!"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    return-void

    .line 139
    :cond_0
    const-string v0, "[ShareViewCommand] --- task cancel waiting..."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/metamoji/ns/NsShareViewCommand;->s_bgTaskForGetShareViewList:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;

    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->cancel()Z

    .line 142
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 143
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 147
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v4, Lcom/metamoji/ns/NsShareViewCommand$1$1$1;

    invoke-direct {v4, p0}, Lcom/metamoji/ns/NsShareViewCommand$1$1$1;-><init>(Lcom/metamoji/ns/NsShareViewCommand$1$1;)V

    new-instance v5, Lcom/metamoji/ns/NsShareViewCommand$1$1$2;

    invoke-direct {v5, p0, v1, v0}, Lcom/metamoji/ns/NsShareViewCommand$1$1$2;-><init>(Lcom/metamoji/ns/NsShareViewCommand$1$1;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 165
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 167
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :catch_0
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 173
    throw v0

    .line 177
    :cond_2
    :goto_0
    const-string v0, "[ShareViewCommand] --- new Task Start!"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;

    new-instance v1, Lcom/metamoji/ns/NsShareViewCommand$1$1$3;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/NsShareViewCommand$1$1$3;-><init>(Lcom/metamoji/ns/NsShareViewCommand$1$1;)V

    invoke-direct {v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    sput-object v0, Lcom/metamoji/ns/NsShareViewCommand;->s_bgTaskForGetShareViewList:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;

    .line 186
    sget-object v0, Lcom/metamoji/ns/NsShareViewCommand;->s_bgTaskForGetShareViewList:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;

    iget-object v1, p0, Lcom/metamoji/ns/NsShareViewCommand$1$1;->this$0:Lcom/metamoji/ns/NsShareViewCommand$1;

    iget-object v1, v1, Lcom/metamoji/ns/NsShareViewCommand$1;->val$searchCondDic:Ljava/util/Map;

    iget-object v2, p0, Lcom/metamoji/ns/NsShareViewCommand$1$1;->this$0:Lcom/metamoji/ns/NsShareViewCommand$1;

    iget-object v2, v2, Lcom/metamoji/ns/NsShareViewCommand$1;->val$sortCondList:Ljava/util/List;

    iget-object v3, p0, Lcom/metamoji/ns/NsShareViewCommand$1$1;->this$0:Lcom/metamoji/ns/NsShareViewCommand$1;

    iget-object v3, v3, Lcom/metamoji/ns/NsShareViewCommand$1;->val$completionAction:Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->setCondition(Ljava/util/Map;Ljava/util/List;Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    sget-object v0, Lcom/metamoji/ns/NsShareViewCommand;->s_bgTaskForGetShareViewList:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;

    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->doInBackground()V

    :cond_3
    return-void
.end method
