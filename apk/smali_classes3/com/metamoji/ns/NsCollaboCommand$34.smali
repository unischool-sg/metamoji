.class Lcom/metamoji/ns/NsCollaboCommand$34;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->changeCollaboMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$collaboManager:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$collaboSettings:Lcom/metamoji/ns/NsCollaboSettings;

.field final synthetic val$document:Lcom/metamoji/nt/NtDocument;

.field final synthetic val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$offlineEditAction:Ljava/lang/Runnable;

.field final synthetic val$roomId:Ljava/lang/String;

.field final synthetic val$roomPassword:Ljava/lang/String;

.field final synthetic val$shareType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboSettings;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;Ljava/lang/Runnable;Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2835
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$collaboSettings:Lcom/metamoji/ns/NsCollaboSettings;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$collaboManager:Lcom/metamoji/ns/NsCollaboManager;

    iput-object p4, p0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$shareType:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$offlineEditAction:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$document:Lcom/metamoji/nt/NtDocument;

    iput-object p7, p0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$roomId:Ljava/lang/String;

    iput-object p8, p0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$roomPassword:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 3

    if-nez p1, :cond_4

    .line 2841
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2842
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2843
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$collaboSettings:Lcom/metamoji/ns/NsCollaboSettings;

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->getSecureRoom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2844
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Network_Error:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    .line 2846
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2849
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$34$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/NsCollaboCommand$34$1;-><init>(Lcom/metamoji/ns/NsCollaboCommand$34;Lcom/metamoji/nt/INtEditor;)V

    new-instance p1, Lcom/metamoji/ns/NsCollaboCommand$34$2;

    invoke-direct {p1, p0}, Lcom/metamoji/ns/NsCollaboCommand$34$2;-><init>(Lcom/metamoji/ns/NsCollaboCommand$34;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void

    .line 2876
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$collaboManager:Lcom/metamoji/ns/NsCollaboManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->executeConnectRoomAfterAction(Z)V

    return-void

    .line 2879
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$shareType:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "forSchoolWithDeadline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2880
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Network_Error:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 2882
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MSG_NETWORK_ERROR_AND_OFFLINE_EDIT:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    .line 2884
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$offlineEditAction:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 2888
    :cond_3
    new-instance p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$34$3;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/NsCollaboCommand$34$3;-><init>(Lcom/metamoji/ns/NsCollaboCommand$34;)V

    invoke-direct {p1, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    sput-object p1, Lcom/metamoji/ns/NsCollaboCommand;->s_bgTaskForLogin:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    .line 2907
    sget-object p1, Lcom/metamoji/ns/NsCollaboCommand;->s_bgTaskForLogin:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->driveId:Ljava/lang/String;

    .line 2908
    sget-object p1, Lcom/metamoji/ns/NsCollaboCommand;->s_bgTaskForLogin:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->docId:Ljava/lang/String;

    .line 2909
    sget-object p1, Lcom/metamoji/ns/NsCollaboCommand;->s_bgTaskForLogin:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$roomId:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->roomId:Ljava/lang/String;

    .line 2910
    sget-object p1, Lcom/metamoji/ns/NsCollaboCommand;->s_bgTaskForLogin:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$roomPassword:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->roomPassword:Ljava/lang/String;

    .line 2912
    sget-object p1, Lcom/metamoji/ns/NsCollaboCommand;->s_bgTaskForLogin:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "CollaboDispLoginMessage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->dispMessage:Z

    .line 2913
    sget-object p1, Lcom/metamoji/ns/NsCollaboCommand;->s_bgTaskForLogin:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    invoke-virtual {p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->doInBackground()V

    return-void

    .line 2916
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$offlineEditAction:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
