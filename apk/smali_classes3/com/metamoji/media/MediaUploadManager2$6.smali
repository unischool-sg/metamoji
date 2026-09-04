.class Lcom/metamoji/media/MediaUploadManager2$6;
.super Ljava/lang/Object;
.source "MediaUploadManager2.java"

# interfaces
.implements Lcom/metamoji/media/service/MediaBgTaskForUpload$IMediaBgTaskForUploadCompleteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager2;->uploadFile(Ljava/util/Map;Lcom/metamoji/cs/dc/user/CsDCUserInfo;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/MediaUploadManager2;

.field final synthetic val$contextResult:Lcom/metamoji/cm/CmContext;

.field final synthetic val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

.field final synthetic val$ticket:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager2;Lcom/metamoji/cm/CmContext;Ljava/lang/String;Lcom/metamoji/cm/ResetableEvent;)V
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

    .line 629
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$6;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    iput-object p2, p0, Lcom/metamoji/media/MediaUploadManager2$6;->val$contextResult:Lcom/metamoji/cm/CmContext;

    iput-object p3, p0, Lcom/metamoji/media/MediaUploadManager2$6;->val$ticket:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/media/MediaUploadManager2$6;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(ILjava/lang/String;)V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager2$6;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/MediaUploadManager2;->checkUploadError(I)V

    .line 634
    const-string v0, "doBgTaskUpload:UploadMediaFile:End:ticket = {0}"

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 641
    :cond_0
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$6;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    invoke-virtual {p1, p2}, Lcom/metamoji/media/MediaUploadManager2;->notifyUploadedFile(Ljava/lang/String;)V

    .line 643
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$6;->val$contextResult:Lcom/metamoji/cm/CmContext;

    const-string/jumbo p2, "result"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$6;->val$ticket:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    :goto_0
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$6;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {p1}, Lcom/metamoji/cm/ResetableEvent;->set()V

    return-void

    .line 635
    :cond_1
    :goto_1
    :try_start_1
    iget-object p2, p0, Lcom/metamoji/media/MediaUploadManager2$6;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    invoke-virtual {p2}, Lcom/metamoji/media/MediaUploadManager2;->startRetryTimer()V

    .line 636
    const-string p2, "MediaUploadError : statusCode = %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$6;->val$ticket:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/metamoji/media/MediaUploadManager2$6;->val$ticket:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    iget-object p2, p0, Lcom/metamoji/media/MediaUploadManager2$6;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {p2}, Lcom/metamoji/cm/ResetableEvent;->set()V

    .line 647
    throw p1
.end method
