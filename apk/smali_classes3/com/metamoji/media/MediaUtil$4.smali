.class Lcom/metamoji/media/MediaUtil$4;
.super Ljava/lang/Object;
.source "MediaUtil.java"

# interfaces
.implements Lcom/metamoji/media/service/MediaBgTaskForGetList$IMediaBgTaskForGetListCompleteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUtil;->openMediaListDialog(ZLcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fromDocument:Z

.field final synthetic val$onClosedListener:Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# direct methods
.method constructor <init>(ZLcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 356
    iput-boolean p1, p0, Lcom/metamoji/media/MediaUtil$4;->val$fromDocument:Z

    iput-object p2, p0, Lcom/metamoji/media/MediaUtil$4;->val$onClosedListener:Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 360
    sget p1, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_Error_FailedToGetMediaFiles_Message:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/media/MediaUtil$MediaResultCheck;->showError(Ljava/lang/String;)V

    return-void

    .line 363
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/MediaUtil$4$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/MediaUtil$4$1;-><init>(Lcom/metamoji/media/MediaUtil$4;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
