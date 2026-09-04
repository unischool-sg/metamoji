.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1;
.super Ljava/lang/Object;
.source "DriveMemberDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2;

.field final synthetic val$deleteUsers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2;Ljava/util/ArrayList;)V
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

    .line 162
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1;->val$deleteUsers:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 165
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1;->val$deleteUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 166
    new-instance v2, Lcom/metamoji/cs/dc/params/CsExcludeMemberFromDriveParam;

    invoke-direct {v2}, Lcom/metamoji/cs/dc/params/CsExcludeMemberFromDriveParam;-><init>()V

    .line 167
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2;

    iget-object v3, v3, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    iget-object v3, v3, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_driveId:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/cs/dc/params/CsExcludeMemberFromDriveParam;->driveId:Ljava/lang/String;

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 169
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 170
    const-string v5, "id"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v5, "name"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iput-object v3, v2, Lcom/metamoji/cs/dc/params/CsExcludeMemberFromDriveParam;->userList:Ljava/util/List;

    .line 175
    invoke-static {v2}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v2

    check-cast v2, Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;

    .line 177
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v4, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1$1;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1;Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;Ljava/util/Map;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    if-eqz v2, :cond_1

    .line 191
    iget v1, v2, Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;->errorCode:I

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method
