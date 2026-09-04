.class Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;
.super Ljava/lang/Object;
.source "MediaUploadedListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;

.field final synthetic val$this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;Lcom/metamoji/media/ui/MediaUploadedListDialog;)V
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

    .line 1350
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;

    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;->val$this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1353
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;

    iget-object p1, p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_media:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    .line 1354
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->isOnPremise()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_ConfirmDownload_Message_OnPremise:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_ConfirmDownload_Message:I

    .line 1355
    :goto_0
    new-instance v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3$1;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method
