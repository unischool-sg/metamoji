.class Lcom/metamoji/media/MediaUploadManager2$7;
.super Ljava/lang/Object;
.source "MediaUploadManager2.java"

# interfaces
.implements Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle$IMediaBgTaskForSetMediaTitleCompleteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager2;->uploadTitle(Ljava/util/Map;ZLcom/metamoji/cs/dc/user/CsDCUserInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/MediaUploadManager2;

.field final synthetic val$completedIds:Ljava/util/List;

.field final synthetic val$contextResult:Lcom/metamoji/cm/CmContext;

.field final synthetic val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager2;Ljava/util/List;Lcom/metamoji/cm/CmContext;Lcom/metamoji/cm/ResetableEvent;)V
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

    .line 933
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$7;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    iput-object p2, p0, Lcom/metamoji/media/MediaUploadManager2$7;->val$completedIds:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/media/MediaUploadManager2$7;->val$contextResult:Lcom/metamoji/cm/CmContext;

    iput-object p4, p0, Lcom/metamoji/media/MediaUploadManager2$7;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 937
    const-string v0, "MediaTitle:End:targetId = %s"

    if-eqz p1, :cond_0

    .line 938
    :try_start_0
    const-string p2, "MediaTitleError : statusCode = %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 939
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$7;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    invoke-virtual {p1}, Lcom/metamoji/media/MediaUploadManager2;->startRetryTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$7;->val$completedIds:Ljava/util/List;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 947
    :goto_0
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$7;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {p1}, Lcom/metamoji/cm/ResetableEvent;->set()V

    return-void

    .line 943
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$7;->val$completedIds:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 944
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$7;->val$contextResult:Lcom/metamoji/cm/CmContext;

    const-string/jumbo p2, "result"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 946
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$7;->val$completedIds:Ljava/util/List;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/metamoji/media/MediaUploadManager2$7;->val$completedIds:Ljava/util/List;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 947
    iget-object p2, p0, Lcom/metamoji/media/MediaUploadManager2$7;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {p2}, Lcom/metamoji/cm/ResetableEvent;->set()V

    .line 949
    throw p1
.end method
