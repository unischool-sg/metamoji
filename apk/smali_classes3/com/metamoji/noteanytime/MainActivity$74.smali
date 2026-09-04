.class Lcom/metamoji/noteanytime/MainActivity$74;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->isEnableInviteButton(Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$completion:Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5549
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$74;->val$completion:Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 5552
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 5554
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    .line 5555
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v2

    .line 5556
    invoke-virtual {v2, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object v1

    .line 5559
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtFeature;->EditClassBoxMember:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 5560
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$74;->val$completion:Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;

    if-eqz v0, :cond_7

    .line 5561
    invoke-interface {v0, v3}, Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;->onCompletion(Z)V

    return-void

    .line 5566
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v2

    sget-object v4, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v2, v4, :cond_4

    .line 5568
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5569
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$74;->val$completion:Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;

    if-eqz v0, :cond_7

    .line 5570
    invoke-interface {v0, v3}, Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;->onCompletion(Z)V

    return-void

    .line 5575
    :cond_1
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 5576
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 5578
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getGroupId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->currentGroupId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5588
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isAdmin()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 5589
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$74;->val$completion:Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;

    if-eqz v0, :cond_7

    .line 5590
    invoke-interface {v0, v2}, Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;->onCompletion(Z)V

    return-void

    .line 5596
    :cond_2
    iget-boolean v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isAdmin:Z

    if-eqz v0, :cond_6

    .line 5597
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$74;->val$completion:Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;

    if-eqz v0, :cond_7

    .line 5598
    invoke-interface {v0, v2}, Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;->onCompletion(Z)V

    return-void

    .line 5581
    :cond_3
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$74;->val$completion:Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;

    if-eqz v0, :cond_7

    .line 5582
    invoke-interface {v0, v3}, Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;->onCompletion(Z)V

    return-void

    .line 5602
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v2

    sget-object v4, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_OWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v2, v4, :cond_5

    .line 5603
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v2, :cond_6

    :cond_5
    if-eqz v1, :cond_6

    .line 5605
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$74;->val$completion:Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;

    if-eqz v0, :cond_7

    .line 5606
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isAdmin()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;->onCompletion(Z)V

    return-void

    .line 5612
    :cond_6
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$74;->val$completion:Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;

    if-eqz v0, :cond_7

    .line 5613
    invoke-interface {v0, v3}, Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;->onCompletion(Z)V

    :cond_7
    return-void
.end method
