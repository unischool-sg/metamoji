.class Lcom/metamoji/media/MediaUtil$1$1;
.super Ljava/lang/Object;
.source "MediaUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUtil$1;->onCompletion(Ljava/io/File;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/MediaUtil$1;

.field final synthetic val$cacheFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUtil$1;Ljava/io/File;)V
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

    .line 85
    iput-object p1, p0, Lcom/metamoji/media/MediaUtil$1$1;->this$0:Lcom/metamoji/media/MediaUtil$1;

    iput-object p2, p0, Lcom/metamoji/media/MediaUtil$1$1;->val$cacheFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 89
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    .line 91
    iget-object v0, p0, Lcom/metamoji/media/MediaUtil$1$1;->val$cacheFile:Ljava/io/File;

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/MediaUtil$1$1;->this$0:Lcom/metamoji/media/MediaUtil$1;

    iget-object v0, v0, Lcom/metamoji/media/MediaUtil$1;->val$result:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/metamoji/media/MediaUtil$1$1;->this$0:Lcom/metamoji/media/MediaUtil$1;

    iget-object v0, v0, Lcom/metamoji/media/MediaUtil$1;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {v0}, Lcom/metamoji/cm/ResetableEvent;->set()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/media/MediaUtil$1$1;->this$0:Lcom/metamoji/media/MediaUtil$1;

    iget-object v1, v1, Lcom/metamoji/media/MediaUtil$1;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {v1}, Lcom/metamoji/cm/ResetableEvent;->set()V

    .line 97
    throw v0
.end method
