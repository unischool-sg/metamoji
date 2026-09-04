.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;
.super Ljava/lang/Object;
.source "DriveMemberDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

.field final synthetic val$dlg:Landroid/view/View;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;Landroid/view/View;Landroid/widget/ListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 213
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;->val$dlg:Landroid/view/View;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 216
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;-><init>()V

    .line 217
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_driveId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;->driveId:Ljava/lang/String;

    .line 219
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtFeature;->GetDetailedDriveMemberList:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_groupId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 222
    iput-boolean v2, v0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;->isClassMember:Z

    goto :goto_0

    .line 225
    :cond_0
    iput-boolean v2, v0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;->isGet:Z

    .line 228
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;

    if-eqz v1, :cond_2

    .line 229
    iget v3, v1, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;->errorCode:I

    if-eqz v3, :cond_3

    .line 230
    :cond_2
    iput-boolean v2, v0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;->isGet:Z

    .line 232
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;

    .line 236
    :cond_3
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3$1;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3$1;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
