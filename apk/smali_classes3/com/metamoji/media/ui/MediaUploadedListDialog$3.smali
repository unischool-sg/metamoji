.class Lcom/metamoji/media/ui/MediaUploadedListDialog$3;
.super Ljava/lang/Object;
.source "MediaUploadedListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 522
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$3;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 525
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->isOnPremise()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_DeleteFile_Message_OnPremise:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_DeleteFile_Message:I

    :goto_0
    move v0, p1

    .line 526
    sget v2, Lcom/metamoji/noteanytime/R$string;->Voice_DeleteOk:I

    sget v3, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    new-instance v4, Lcom/metamoji/media/ui/MediaUploadedListDialog$3$1;

    invoke-direct {v4, p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$3$1;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog$3;)V

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/metamoji/cm/CmUtils;->selectDialog(IIIILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method
