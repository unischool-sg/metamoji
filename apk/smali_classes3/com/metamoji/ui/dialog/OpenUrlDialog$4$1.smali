.class Lcom/metamoji/ui/dialog/OpenUrlDialog$4$1;
.super Ljava/lang/Object;
.source "OpenUrlDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/OpenUrlDialog$4;->onCompleted(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/OpenUrlDialog$4;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/OpenUrlDialog$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 285
    iput-object p1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog$4$1;->this$1:Lcom/metamoji/ui/dialog/OpenUrlDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog$4$1;->this$1:Lcom/metamoji/ui/dialog/OpenUrlDialog$4;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/OpenUrlDialog$4;->val$resultArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog$4$1;->this$1:Lcom/metamoji/ui/dialog/OpenUrlDialog$4;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/OpenUrlDialog$4;->val$resultArray:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->succeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 294
    iget-object v2, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog$4$1;->this$1:Lcom/metamoji/ui/dialog/OpenUrlDialog$4;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/OpenUrlDialog$4;->this$0:Lcom/metamoji/ui/dialog/OpenUrlDialog;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog$4$1;->this$1:Lcom/metamoji/ui/dialog/OpenUrlDialog$4;

    iget-object v3, v3, Lcom/metamoji/ui/dialog/OpenUrlDialog$4;->this$0:Lcom/metamoji/ui/dialog/OpenUrlDialog;

    invoke-virtual {v3}, Lcom/metamoji/ui/dialog/OpenUrlDialog;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/dialog/OpenUrlDialog;->onCancel(Landroid/view/View;)V

    .line 296
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->getDriveId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->navigateToDrive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 298
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_OPENURLDLG_ERROR_INVALID_URL:I

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog$4$1;->this$1:Lcom/metamoji/ui/dialog/OpenUrlDialog$4;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/OpenUrlDialog$4;->this$0:Lcom/metamoji/ui/dialog/OpenUrlDialog;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_urlText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 301
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog$4$1;->this$1:Lcom/metamoji/ui/dialog/OpenUrlDialog$4;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/OpenUrlDialog$4;->this$0:Lcom/metamoji/ui/dialog/OpenUrlDialog;

    iput-boolean v1, v0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_doneProcessing:Z

    return-void
.end method
