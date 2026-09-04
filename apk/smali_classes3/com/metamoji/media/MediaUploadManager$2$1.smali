.class Lcom/metamoji/media/MediaUploadManager$2$1;
.super Ljava/lang/Object;
.source "MediaUploadManager.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/media/MediaUploadManager$2;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 408
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager$2$1;->this$1:Lcom/metamoji/media/MediaUploadManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 411
    iget p1, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$2$1;->this$1:Lcom/metamoji/media/MediaUploadManager$2;

    iget-object p1, p1, Lcom/metamoji/media/MediaUploadManager$2;->val$context:Lcom/metamoji/cm/CmContext;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "result"

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 412
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$2$1;->this$1:Lcom/metamoji/media/MediaUploadManager$2;

    iget-object p1, p1, Lcom/metamoji/media/MediaUploadManager$2;->this$0:Lcom/metamoji/media/MediaUploadManager;

    invoke-virtual {p1}, Lcom/metamoji/media/MediaUploadManager;->startRetryTimer()V

    .line 416
    :goto_1
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager$2$1;->this$1:Lcom/metamoji/media/MediaUploadManager$2;

    iget-object p1, p1, Lcom/metamoji/media/MediaUploadManager$2;->val$waitEvent:Lcom/metamoji/cm/ManualResetEvent;

    invoke-virtual {p1}, Lcom/metamoji/cm/ManualResetEvent;->set()V

    return-void
.end method
