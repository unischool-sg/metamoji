.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;
.super Ljava/lang/Object;
.source "DriveMemberAdminDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->refreshMemberList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 368
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 372
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 374
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;-><init>()V

    .line 375
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_driveId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;->driveId:Ljava/lang/String;

    .line 377
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtFeature;->GetDetailedDriveMemberList:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_groupId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 380
    iput-boolean v2, v0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;->isClassMember:Z

    goto :goto_0

    .line 383
    :cond_0
    iput-boolean v2, v0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;->isGet:Z

    .line 386
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;

    if-eqz v1, :cond_2

    .line 387
    iget v3, v1, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;->errorCode:I

    if-eqz v3, :cond_3

    .line 388
    :cond_2
    iput-boolean v2, v0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;->isGet:Z

    .line 390
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;

    .line 394
    :cond_3
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3$1;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3$1;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
