.class Lcom/metamoji/media/MediaUploadManager2$1;
.super Ljava/lang/Object;
.source "MediaUploadManager2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager2;->syncMediaUploadOnIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/MediaUploadManager2;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$1;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 217
    :try_start_0
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->busyOperationQueue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    iget-object v2, p0, Lcom/metamoji/media/MediaUploadManager2$1;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    if-eqz v1, :cond_0

    .line 234
    iput-boolean v0, v2, Lcom/metamoji/media/MediaUploadManager2;->isDoingsyncMediaUpload_:Z

    return-void

    .line 223
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/metamoji/media/MediaUploadManager2;->needsUploadFiles()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager2$1;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    invoke-virtual {v1, v0}, Lcom/metamoji/media/MediaUploadManager2;->uploadFiles(Z)Z

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager2$1;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    invoke-virtual {v1}, Lcom/metamoji/media/MediaUploadManager2;->needsUploadTitles()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager2$1;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    invoke-virtual {v1, v0}, Lcom/metamoji/media/MediaUploadManager2;->uploadTitles(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :cond_2
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager2$1;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    iput-boolean v0, v1, Lcom/metamoji/media/MediaUploadManager2;->isDoingsyncMediaUpload_:Z

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/metamoji/media/MediaUploadManager2$1;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    iput-boolean v0, v2, Lcom/metamoji/media/MediaUploadManager2;->isDoingsyncMediaUpload_:Z

    .line 235
    throw v1
.end method
