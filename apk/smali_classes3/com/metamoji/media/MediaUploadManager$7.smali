.class Lcom/metamoji/media/MediaUploadManager$7;
.super Ljava/lang/Object;
.source "MediaUploadManager.java"

# interfaces
.implements Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle$IMediaBgTaskForSetMediaTitleCompleteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager;->uploadTitles(Z)Z
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

    .line 1062
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager$7;->this$0:Lcom/metamoji/media/MediaUploadManager;

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

    if-eqz p1, :cond_0

    .line 1067
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$7;->this$0:Lcom/metamoji/media/MediaUploadManager;

    invoke-virtual {p1}, Lcom/metamoji/media/MediaUploadManager;->startRetryTimer()V

    return-void

    .line 1071
    :cond_0
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager;->-$$Nest$sfgetlockObjectForUploadTitles_()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1073
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1075
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager$7;->this$0:Lcom/metamoji/media/MediaUploadManager;

    iget-object v1, v1, Lcom/metamoji/media/MediaUploadManager;->needsUploadTitles_:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1077
    :cond_1
    iget-object p2, p0, Lcom/metamoji/media/MediaUploadManager$7;->this$0:Lcom/metamoji/media/MediaUploadManager;

    invoke-virtual {p2}, Lcom/metamoji/media/MediaUploadManager;->saveNeedsUploadTitles()V

    .line 1078
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
