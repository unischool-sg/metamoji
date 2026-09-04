.class Lcom/metamoji/media/MediaUploadManager2$3;
.super Ljava/lang/Object;
.source "MediaUploadManager2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager2;->registFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/MediaUploadManager2;

.field final synthetic val$uploadData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager2;Ljava/util/Map;)V
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

    .line 462
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$3;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    iput-object p2, p0, Lcom/metamoji/media/MediaUploadManager2$3;->val$uploadData:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 466
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->waitOperationQueue()V

    .line 468
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->-$$Nest$sfgetlockObjectDoingSyncMediaUpload_()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 469
    :try_start_0
    const-string v1, "MediaUploadManager2:registFile:uploadProcess:Start"

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager2$3;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/metamoji/media/MediaUploadManager2;->updateCabinetUserInfo(Z)Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 472
    invoke-static {v1}, Lcom/metamoji/media/service/MediaBgTask;->login(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 477
    :cond_0
    invoke-static {v1}, Lcom/metamoji/media/service/MediaBgTask;->login(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 478
    monitor-exit v0

    return-void

    .line 482
    :cond_1
    iget-object v3, p0, Lcom/metamoji/media/MediaUploadManager2$3;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    iget-object v4, p0, Lcom/metamoji/media/MediaUploadManager2$3;->val$uploadData:Ljava/util/Map;

    invoke-virtual {v3, v4, v1, v2}, Lcom/metamoji/media/MediaUploadManager2;->uploadFile(Ljava/util/Map;Lcom/metamoji/cs/dc/user/CsDCUserInfo;Z)Z

    .line 483
    const-string v1, "MediaUploadManager2:registFile:uploadProcess:End"

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 484
    monitor-exit v0

    return-void

    .line 473
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 484
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
