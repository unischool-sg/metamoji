.class Lcom/metamoji/media/MediaUploadManager$5;
.super Ljava/lang/Object;
.source "MediaUploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager;->uploadFiles(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/MediaUploadManager;

.field final synthetic val$data:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager;Ljava/util/Map;)V
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

    .line 942
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager$5;->this$0:Lcom/metamoji/media/MediaUploadManager;

    iput-object p2, p0, Lcom/metamoji/media/MediaUploadManager$5;->val$data:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 945
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager$5;->val$data:Ljava/util/Map;

    const-string/jumbo v1, "ticket"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 946
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager$5;->val$data:Ljava/util/Map;

    const-string v2, "recordId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 947
    iget-object v2, p0, Lcom/metamoji/media/MediaUploadManager$5;->val$data:Ljava/util/Map;

    const-string/jumbo v3, "url"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 948
    iget-object v3, p0, Lcom/metamoji/media/MediaUploadManager$5;->this$0:Lcom/metamoji/media/MediaUploadManager;

    invoke-virtual {v3, v0, v1, v2}, Lcom/metamoji/media/MediaUploadManager;->notifyUploadingFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
