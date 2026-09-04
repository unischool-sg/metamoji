.class Lcom/metamoji/media/MediaUploadManager$4;
.super Ljava/lang/Object;
.source "MediaUploadManager.java"

# interfaces
.implements Lcom/metamoji/media/service/MediaBgTaskForAudioUpload$IMediaBgTaskForAudioUploadCompleteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager;->doBgTaskUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
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
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager;Ljava/lang/String;Lcom/metamoji/cm/CmContext;Lcom/metamoji/cm/ResetableEvent;)V
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

    .line 582
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager$4;->this$0:Lcom/metamoji/media/MediaUploadManager;

    iput-object p2, p0, Lcom/metamoji/media/MediaUploadManager$4;->val$ticket:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/media/MediaUploadManager$4;->val$contextResult:Lcom/metamoji/cm/CmContext;

    iput-object p4, p0, Lcom/metamoji/media/MediaUploadManager$4;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(ILjava/lang/String;)V
    .locals 3

    .line 585
    const-string v0, "recordIdNotificationCompleted"

    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager$4;->this$0:Lcom/metamoji/media/MediaUploadManager;

    invoke-virtual {v1, p1}, Lcom/metamoji/media/MediaUploadManager;->checkUploadError(I)V

    .line 587
    const-string v1, "doBgTaskUpload:UploadMediaFile:End:ticket = {0}"

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 594
    :cond_0
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$4;->this$0:Lcom/metamoji/media/MediaUploadManager;

    invoke-virtual {p1, p2}, Lcom/metamoji/media/MediaUploadManager;->setUploadedToUploadData(Ljava/lang/String;)V

    .line 596
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$4;->this$0:Lcom/metamoji/media/MediaUploadManager;

    iget-object p1, p1, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    iget-object v2, p0, Lcom/metamoji/media/MediaUploadManager$4;->val$ticket:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 598
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 599
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 603
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$4;->this$0:Lcom/metamoji/media/MediaUploadManager;

    invoke-virtual {p1, p2}, Lcom/metamoji/media/MediaUploadManager;->notifyUploadedFile(Ljava/lang/String;)V

    .line 605
    :cond_2
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$4;->val$contextResult:Lcom/metamoji/cm/CmContext;

    const-string/jumbo p2, "result"

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$4;->val$ticket:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    :goto_1
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$4;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {p1}, Lcom/metamoji/cm/ResetableEvent;->set()V

    return-void

    .line 588
    :cond_3
    :goto_2
    :try_start_1
    iget-object p2, p0, Lcom/metamoji/media/MediaUploadManager$4;->this$0:Lcom/metamoji/media/MediaUploadManager;

    invoke-virtual {p2}, Lcom/metamoji/media/MediaUploadManager;->startRetryTimer()V

    .line 589
    const-string p2, "MediaUploadError : statusCode = %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$4;->val$ticket:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/metamoji/media/MediaUploadManager$4;->val$ticket:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    iget-object p2, p0, Lcom/metamoji/media/MediaUploadManager$4;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {p2}, Lcom/metamoji/cm/ResetableEvent;->set()V

    .line 609
    throw p1
.end method
