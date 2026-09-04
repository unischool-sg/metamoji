.class Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$11;
.super Ljava/lang/Object;
.source "NsCreateCollaboDocumentDialogEx.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->handleDeadlineSettingButtonTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

.field final synthetic val$dlg:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V
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

    .line 755
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$11;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$11;->val$dlg:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 762
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$11;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$11;->val$dlg:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iput-object p2, p1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 763
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$11;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$11;->val$dlg:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iput-object p2, p1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 764
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$11;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$11;->val$dlg:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDate:Ljava/util/Date;

    iput-object p2, p1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_startDate:Ljava/util/Date;

    .line 765
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$11;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$11;->val$dlg:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDate:Ljava/util/Date;

    iput-object p2, p1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_endDate:Ljava/util/Date;

    .line 767
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$11;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    invoke-static {p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->-$$Nest$mupdateDeadlineBtnLabel(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V

    return-void
.end method
