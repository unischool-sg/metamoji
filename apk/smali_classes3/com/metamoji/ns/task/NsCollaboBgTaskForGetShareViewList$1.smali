.class Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList$1;
.super Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;
.source "NsCollaboBgTaskForGetShareViewList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->doInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;

    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doit()V
    .locals 4

    const/4 v0, 0x0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;

    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->taskExec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;

    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->isCancelled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->onCompleted(ZLjava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 80
    :try_start_1
    const-string v2, "NsCollaboBgTaskBase:doInBackground"

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->onCompleted(ZLjava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;

    invoke-virtual {v2}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->isCancelled()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->onCompleted(ZLjava/lang/Throwable;)V

    .line 84
    throw v1
.end method
