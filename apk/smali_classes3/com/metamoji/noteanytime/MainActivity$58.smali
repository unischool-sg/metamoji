.class Lcom/metamoji/noteanytime/MainActivity$58;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->showDriveMember(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$drive:Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$groupId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/metamoji/dvm/fw/bean/DvmDriveBean;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4121
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$58;->val$driveId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$58;->val$drive:Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$58;->val$groupId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/noteanytime/MainActivity$58;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4127
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$58;->val$driveId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4128
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$58;->val$drive:Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getGroupId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4129
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$58;->val$drive:Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isAdmin()Z

    move-result v1

    goto :goto_1

    .line 4131
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v2, Lcom/metamoji/nt/NtFeature;->EditClassBoxMember:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 4134
    :cond_1
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 4135
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4138
    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$58;->val$drive:Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isAdmin()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    :goto_0
    move v1, v3

    goto :goto_1

    .line 4141
    :cond_2
    iget-boolean v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isAdmin:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 4155
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$58$1;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$58$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$58;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 4163
    :cond_4
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$58$2;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$58$2;-><init>(Lcom/metamoji/noteanytime/MainActivity$58;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
