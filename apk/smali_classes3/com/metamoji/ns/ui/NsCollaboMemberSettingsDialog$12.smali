.class Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$12;
.super Ljava/lang/Object;
.source "NsCollaboMemberSettingsDialog.java"

# interfaces
.implements Lcom/metamoji/forSchool/ui/ScClassImportDialog$IScClassImportDialogAfterAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->handleImportClassButtonTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1434
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$12;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/lang/String;)V
    .locals 1

    .line 1437
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$12;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iput-object p1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_prevClassName:Ljava/lang/String;

    .line 1438
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$12;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_createCollaboDlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$12;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_createCollaboDlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iput-object p1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_className:Ljava/lang/String;

    .line 1442
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->School_ManageParticipantsDlg_Msg_Import_Class:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void
.end method
