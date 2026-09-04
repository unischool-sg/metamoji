.class Lcom/metamoji/media/service/MediaBgTask$1;
.super Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;
.source "MediaBgTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/service/MediaBgTask;->doInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/service/MediaBgTask;


# direct methods
.method constructor <init>(Lcom/metamoji/media/service/MediaBgTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTask$1;->this$0:Lcom/metamoji/media/service/MediaBgTask;

    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doit()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/media/service/MediaBgTask$1;->this$0:Lcom/metamoji/media/service/MediaBgTask;

    invoke-static {v2}, Lcom/metamoji/media/service/MediaBgTask;->access$000(Lcom/metamoji/media/service/MediaBgTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object v2, p0, Lcom/metamoji/media/service/MediaBgTask$1;->this$0:Lcom/metamoji/media/service/MediaBgTask;

    invoke-virtual {v2}, Lcom/metamoji/media/service/MediaBgTask;->isCancelled()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3, v1}, Lcom/metamoji/media/service/MediaBgTask;->access$100(Lcom/metamoji/media/service/MediaBgTask;ZLjava/lang/Throwable;)V

    .line 77
    iget-object v1, p0, Lcom/metamoji/media/service/MediaBgTask$1;->this$0:Lcom/metamoji/media/service/MediaBgTask;

    invoke-static {v1}, Lcom/metamoji/media/service/MediaBgTask;->-$$Nest$fget_incJob(Lcom/metamoji/media/service/MediaBgTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/metamoji/media/service/MediaBgTask$1;->this$0:Lcom/metamoji/media/service/MediaBgTask;

    invoke-static {v1, v0}, Lcom/metamoji/media/service/MediaBgTask;->-$$Nest$fput_incJob(Lcom/metamoji/media/service/MediaBgTask;Z)V

    .line 79
    invoke-static {}, Lcom/metamoji/media/service/MediaBgTask;->decJobCount()V

    return-void

    :catchall_0
    move-exception v2

    .line 73
    :try_start_1
    const-string v3, "NsCollaboBgTaskBase:doInBackground"

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    iget-object v1, p0, Lcom/metamoji/media/service/MediaBgTask$1;->this$0:Lcom/metamoji/media/service/MediaBgTask;

    invoke-static {v1, v0, v2}, Lcom/metamoji/media/service/MediaBgTask;->access$100(Lcom/metamoji/media/service/MediaBgTask;ZLjava/lang/Throwable;)V

    .line 77
    iget-object v1, p0, Lcom/metamoji/media/service/MediaBgTask$1;->this$0:Lcom/metamoji/media/service/MediaBgTask;

    invoke-static {v1}, Lcom/metamoji/media/service/MediaBgTask;->-$$Nest$fget_incJob(Lcom/metamoji/media/service/MediaBgTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/metamoji/media/service/MediaBgTask$1;->this$0:Lcom/metamoji/media/service/MediaBgTask;

    invoke-static {v1, v0}, Lcom/metamoji/media/service/MediaBgTask;->-$$Nest$fput_incJob(Lcom/metamoji/media/service/MediaBgTask;Z)V

    .line 79
    invoke-static {}, Lcom/metamoji/media/service/MediaBgTask;->decJobCount()V

    :cond_0
    return-void

    :catchall_1
    move-exception v2

    .line 76
    iget-object v3, p0, Lcom/metamoji/media/service/MediaBgTask$1;->this$0:Lcom/metamoji/media/service/MediaBgTask;

    invoke-virtual {v3}, Lcom/metamoji/media/service/MediaBgTask;->isCancelled()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4, v1}, Lcom/metamoji/media/service/MediaBgTask;->access$100(Lcom/metamoji/media/service/MediaBgTask;ZLjava/lang/Throwable;)V

    .line 77
    iget-object v1, p0, Lcom/metamoji/media/service/MediaBgTask$1;->this$0:Lcom/metamoji/media/service/MediaBgTask;

    invoke-static {v1}, Lcom/metamoji/media/service/MediaBgTask;->-$$Nest$fget_incJob(Lcom/metamoji/media/service/MediaBgTask;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/metamoji/media/service/MediaBgTask$1;->this$0:Lcom/metamoji/media/service/MediaBgTask;

    invoke-static {v1, v0}, Lcom/metamoji/media/service/MediaBgTask;->-$$Nest$fput_incJob(Lcom/metamoji/media/service/MediaBgTask;Z)V

    .line 79
    invoke-static {}, Lcom/metamoji/media/service/MediaBgTask;->decJobCount()V

    .line 81
    :cond_1
    throw v2
.end method
