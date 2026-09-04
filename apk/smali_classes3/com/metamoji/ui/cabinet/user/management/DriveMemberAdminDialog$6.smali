.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$6;
.super Ljava/lang/Object;
.source "DriveMemberAdminDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->inviteToDriveWithUserIdList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

.field final synthetic val$userDicArray:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;Ljava/util/List;)V
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

    .line 574
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$6;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$6;->val$userDicArray:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 577
    new-instance v0, Lcom/metamoji/cs/dc/params/CsInviteToDriveParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsInviteToDriveParam;-><init>()V

    .line 578
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$6;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_driveId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsInviteToDriveParam;->driveId:Ljava/lang/String;

    .line 579
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 580
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$6;->val$userDicArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 581
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 582
    const-string/jumbo v5, "userId"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 583
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 584
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v5, "type"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 587
    :cond_0
    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsInviteToDriveParam;->userIdList:Ljava/util/List;

    .line 589
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsInviteToDriveResponse;

    if-eqz v0, :cond_1

    .line 592
    iget v1, v0, Lcom/metamoji/cs/dc/response/CsInviteToDriveResponse;->errorCode:I

    if-nez v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$6;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->refreshMemberList()V

    .line 597
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$6$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$6$1;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$6;Lcom/metamoji/cs/dc/response/CsInviteToDriveResponse;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
