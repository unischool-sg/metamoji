.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;
.super Ljava/lang/Object;
.source "DriveMemberAdminDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->handleRoleChanged(Landroid/widget/RadioGroup;ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

.field final synthetic val$checkedId:I

.field final synthetic val$group:Landroid/widget/RadioGroup;

.field final synthetic val$itemData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;Ljava/util/Map;ILandroid/widget/RadioGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 634
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;->val$itemData:Ljava/util/Map;

    iput p3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;->val$checkedId:I

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;->val$group:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 637
    new-instance v0, Lcom/metamoji/cs/dc/params/CsUpdateMemberTypeParams;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsUpdateMemberTypeParams;-><init>()V

    .line 638
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_driveId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsUpdateMemberTypeParams;->driveId:Ljava/lang/String;

    .line 639
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsUpdateMemberTypeParams;->userList:Ljava/util/List;

    .line 640
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 641
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;->val$itemData:Ljava/util/Map;

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;->val$itemData:Ljava/util/Map;

    const-string v3, "name"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget v2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;->val$checkedId:I

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->ctrlIdToRole(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    iget-object v2, v0, Lcom/metamoji/cs/dc/params/CsUpdateMemberTypeParams;->userList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsUpdateMemberTypeResponse;

    .line 649
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7$1;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;Lcom/metamoji/cs/dc/response/CsUpdateMemberTypeResponse;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
