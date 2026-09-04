.class Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$10;
.super Ljava/lang/Object;
.source "NsCreateCollaboDocumentDialogEx.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->handleCommandUseSettingButtonTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

.field final synthetic val$dlg:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;)V
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

    .line 719
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$10;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$10;->val$dlg:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 726
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$10;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$10;->val$dlg:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object p2, p2, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    iput-object p2, p1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_roomSettingList:Ljava/util/List;

    .line 727
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$10;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$10;->val$dlg:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object p2, p2, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_secureRoomPassword:Ljava/lang/String;

    iput-object p2, p1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_secureRoomPassword:Ljava/lang/String;

    .line 728
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$10;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$10;->val$dlg:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-boolean p2, p2, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_scoreEnable:Z

    iput-boolean p2, p1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_scoreEnable:Z

    .line 730
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$10;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$10;->val$dlg:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-boolean p2, p2, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_hasDate:Z

    iput-boolean p2, p1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_hasDate:Z

    .line 731
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$10;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$10;->val$dlg:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object p2, p2, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_date:Ljava/util/Date;

    iput-object p2, p1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_date:Ljava/util/Date;

    return-void
.end method
