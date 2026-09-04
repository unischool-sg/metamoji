.class Lcom/metamoji/media/MediaUploadManager2$5$1;
.super Ljava/lang/Object;
.source "MediaUploadManager2.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager2$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/media/MediaUploadManager2$5;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager2$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 544
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$5$1;->this$1:Lcom/metamoji/media/MediaUploadManager2$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 547
    iget p1, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 550
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object p1

    .line 551
    invoke-virtual {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object p1

    .line 552
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager2$5$1;->this$1:Lcom/metamoji/media/MediaUploadManager2$5;

    iget-object v0, v0, Lcom/metamoji/media/MediaUploadManager2$5;->val$context:Lcom/metamoji/cm/CmContext;

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 548
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$5$1;->this$1:Lcom/metamoji/media/MediaUploadManager2$5;

    iget-object p1, p1, Lcom/metamoji/media/MediaUploadManager2$5;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    invoke-virtual {p1}, Lcom/metamoji/media/MediaUploadManager2;->startRetryTimer()V

    .line 554
    :goto_1
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$5$1;->this$1:Lcom/metamoji/media/MediaUploadManager2$5;

    iget-object p1, p1, Lcom/metamoji/media/MediaUploadManager2$5;->val$waitEvent:Lcom/metamoji/cm/ManualResetEvent;

    invoke-virtual {p1}, Lcom/metamoji/cm/ManualResetEvent;->set()V

    return-void
.end method
