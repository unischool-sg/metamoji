.class Lcom/metamoji/media/MediaUploadManager$3;
.super Ljava/lang/Object;
.source "MediaUploadManager.java"

# interfaces
.implements Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist$IMediaBgTaskForTentativeRegistCompleteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager;->uploadSoundFileWithUploadData(Ljava/util/Map;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/MediaUploadManager;

.field final synthetic val$contextResult:Lcom/metamoji/cm/CmContext;

.field final synthetic val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

.field final synthetic val$ticket:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager;Lcom/metamoji/cm/CmContext;Ljava/lang/String;Lcom/metamoji/cm/ResetableEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 504
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager$3;->this$0:Lcom/metamoji/media/MediaUploadManager;

    iput-object p2, p0, Lcom/metamoji/media/MediaUploadManager$3;->val$contextResult:Lcom/metamoji/cm/CmContext;

    iput-object p3, p0, Lcom/metamoji/media/MediaUploadManager$3;->val$ticket:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/media/MediaUploadManager$3;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 507
    iget-object p3, p0, Lcom/metamoji/media/MediaUploadManager$3;->this$0:Lcom/metamoji/media/MediaUploadManager;

    invoke-virtual {p3, p1}, Lcom/metamoji/media/MediaUploadManager;->checkUploadError(I)V

    .line 511
    const-string/jumbo p3, "uploadSoundFileWithUploadData:TentativeRegist:End:ticket = %s"

    if-nez p1, :cond_1

    if-eqz p5, :cond_1

    :try_start_0
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 518
    :cond_0
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$3;->this$0:Lcom/metamoji/media/MediaUploadManager;

    invoke-virtual {p1, p4, p5, p2}, Lcom/metamoji/media/MediaUploadManager;->setRecordIdAndUrlToUploadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$3;->this$0:Lcom/metamoji/media/MediaUploadManager;

    invoke-virtual {p1, p2, p4, p5}, Lcom/metamoji/media/MediaUploadManager;->notifyUploadingFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$3;->val$contextResult:Lcom/metamoji/cm/CmContext;

    const-string p2, "recordId"

    invoke-virtual {p1, p2, p4}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 524
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$3;->val$contextResult:Lcom/metamoji/cm/CmContext;

    const-string/jumbo p2, "result"

    const/4 p4, 0x1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$3;->val$ticket:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    :goto_0
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$3;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {p1}, Lcom/metamoji/cm/ResetableEvent;->set()V

    return-void

    .line 512
    :cond_1
    :goto_1
    :try_start_1
    const-string p2, "MediaTentativeRegistError : statusCode = %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$3;->this$0:Lcom/metamoji/media/MediaUploadManager;

    invoke-virtual {p1}, Lcom/metamoji/media/MediaUploadManager;->startRetryTimer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$3;->val$ticket:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/metamoji/media/MediaUploadManager$3;->val$ticket:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    iget-object p2, p0, Lcom/metamoji/media/MediaUploadManager$3;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {p2}, Lcom/metamoji/cm/ResetableEvent;->set()V

    .line 529
    throw p1
.end method
