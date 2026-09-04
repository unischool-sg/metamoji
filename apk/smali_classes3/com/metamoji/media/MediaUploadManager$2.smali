.class Lcom/metamoji/media/MediaUploadManager$2;
.super Landroid/os/AsyncTask;
.source "MediaUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager;->updateUserInfo(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/MediaUploadManager;

.field final synthetic val$context:Lcom/metamoji/cm/CmContext;

.field final synthetic val$waitEvent:Lcom/metamoji/cm/ManualResetEvent;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager;Lcom/metamoji/cm/CmContext;Lcom/metamoji/cm/ManualResetEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 404
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager$2;->this$0:Lcom/metamoji/media/MediaUploadManager;

    iput-object p2, p0, Lcom/metamoji/media/MediaUploadManager$2;->val$context:Lcom/metamoji/cm/CmContext;

    iput-object p3, p0, Lcom/metamoji/media/MediaUploadManager$2;->val$waitEvent:Lcom/metamoji/cm/ManualResetEvent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 404
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/media/MediaUploadManager$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 407
    invoke-static {}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->getInstance()Lcom/metamoji/nt/cabinet/user/CabinetUserManager;

    move-result-object p1

    .line 408
    new-instance v0, Lcom/metamoji/media/MediaUploadManager$2$1;

    invoke-direct {v0, p0}, Lcom/metamoji/media/MediaUploadManager$2$1;-><init>(Lcom/metamoji/media/MediaUploadManager$2;)V

    sget-object v1, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialogIfRegisterd:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->UpdateUserInfoCacheAsync(Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)V

    const/4 p1, 0x0

    return-object p1
.end method
