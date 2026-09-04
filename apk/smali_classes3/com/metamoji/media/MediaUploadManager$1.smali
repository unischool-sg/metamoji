.class Lcom/metamoji/media/MediaUploadManager$1;
.super Ljava/lang/Object;
.source "MediaUploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager;->syncMediaUpload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/MediaUploadManager;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager$1;->this$0:Lcom/metamoji/media/MediaUploadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 191
    :try_start_0
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->busyOperationQueue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object v2, p0, Lcom/metamoji/media/MediaUploadManager$1;->this$0:Lcom/metamoji/media/MediaUploadManager;

    if-eqz v1, :cond_0

    .line 208
    iput-boolean v0, v2, Lcom/metamoji/media/MediaUploadManager;->isDoingsyncMediaUpload_:Z

    return-void

    .line 196
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager$1;->this$0:Lcom/metamoji/media/MediaUploadManager;

    invoke-virtual {v1, v0}, Lcom/metamoji/media/MediaUploadManager;->uploadFiles(Z)Z

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager$1;->this$0:Lcom/metamoji/media/MediaUploadManager;

    invoke-virtual {v1}, Lcom/metamoji/media/MediaUploadManager;->needsUploadTitles()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager$1;->this$0:Lcom/metamoji/media/MediaUploadManager;

    invoke-virtual {v1, v0}, Lcom/metamoji/media/MediaUploadManager;->uploadTitles(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :cond_2
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager$1;->this$0:Lcom/metamoji/media/MediaUploadManager;

    iput-boolean v0, v1, Lcom/metamoji/media/MediaUploadManager;->isDoingsyncMediaUpload_:Z

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/metamoji/media/MediaUploadManager$1;->this$0:Lcom/metamoji/media/MediaUploadManager;

    iput-boolean v0, v2, Lcom/metamoji/media/MediaUploadManager;->isDoingsyncMediaUpload_:Z

    .line 209
    throw v1
.end method
