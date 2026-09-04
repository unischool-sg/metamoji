.class Lcom/metamoji/media/ui/MediaUploadedListDialog$8;
.super Ljava/lang/Object;
.source "MediaUploadedListDialog.java"

# interfaces
.implements Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog;->download(Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

.field final synthetic val$holder:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;

.field final synthetic val$media:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 903
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$8;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$8;->val$media:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    iput-object p3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$8;->val$holder:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 907
    sget p1, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_Error_FailedToDownload_Message:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/media/voice/VcUtil$VcResultCheck;->showError(Ljava/lang/String;)V

    .line 908
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$8;->val$media:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->setDownloadable(Z)V

    .line 909
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$8$1;

    invoke-direct {v0, p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$8$1;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog$8;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
