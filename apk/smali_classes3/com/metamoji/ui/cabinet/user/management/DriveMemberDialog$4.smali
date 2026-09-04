.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$4;
.super Ljava/lang/Object;
.source "DriveMemberDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->OnDone_UserManagementCallBack(Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

.field final synthetic val$sendMailList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;Ljava/util/ArrayList;)V
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

    .line 378
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$4;->val$sendMailList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 382
    new-instance v0, Lcom/metamoji/cs/dc/params/CsInviteToDriveParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsInviteToDriveParam;-><init>()V

    .line 383
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_driveId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsInviteToDriveParam;->driveId:Ljava/lang/String;

    .line 384
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 385
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$4;->val$sendMailList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 386
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 387
    const-string v5, "email"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 388
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v5, "type"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 391
    :cond_0
    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsInviteToDriveParam;->emailList:Ljava/util/List;

    .line 392
    const-string v1, ""

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsInviteToDriveParam;->message:Ljava/lang/String;

    .line 394
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsInviteToDriveResponse;

    .line 396
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$4$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$4$1;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$4;Lcom/metamoji/cs/dc/response/CsInviteToDriveResponse;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
