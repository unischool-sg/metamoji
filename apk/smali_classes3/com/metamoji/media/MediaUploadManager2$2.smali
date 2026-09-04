.class Lcom/metamoji/media/MediaUploadManager2$2;
.super Ljava/lang/Object;
.source "MediaUploadManager2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager2;->syncMediaUploadForSync(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/MediaUploadManager2;

.field final synthetic val$completion:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager2;Ljava/lang/Runnable;)V
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

    .line 268
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$2;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    iput-object p2, p0, Lcom/metamoji/media/MediaUploadManager2$2;->val$completion:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager2$2;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    iget-boolean v0, v0, Lcom/metamoji/media/MediaUploadManager2;->cancelSyncMediaUpload_:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager2$2;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 274
    :try_start_1
    iput-boolean v2, v1, Lcom/metamoji/media/MediaUploadManager2;->cancelSyncMediaUpload_:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager2$2;->val$completion:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 279
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lcom/metamoji/media/MediaUploadManager2;->needsUploadFiles()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager2$2;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/MediaUploadManager2;->uploadFiles(Z)Z

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager2$2;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    iget-boolean v0, v0, Lcom/metamoji/media/MediaUploadManager2;->cancelSyncMediaUpload_:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager2$2;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    if-eqz v0, :cond_3

    .line 284
    :try_start_3
    iput-boolean v2, v1, Lcom/metamoji/media/MediaUploadManager2;->cancelSyncMediaUpload_:Z

    goto :goto_0

    .line 289
    :cond_3
    invoke-virtual {v1}, Lcom/metamoji/media/MediaUploadManager2;->needsUploadTitles()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager2$2;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/MediaUploadManager2;->uploadTitles(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 295
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager2$2;->val$completion:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 296
    throw v0
.end method
