.class Lcom/metamoji/noteanytime/EditorActivity$54;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4924
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$54;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4927
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$54;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4928
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$54;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 4929
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VOICE_MIC_PRIVACY_OFF_ERR_MSG_AND:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4930
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4931
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 4932
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 4934
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$54;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4936
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4938
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->requestKillFocus()V

    :cond_0
    return-void
.end method
