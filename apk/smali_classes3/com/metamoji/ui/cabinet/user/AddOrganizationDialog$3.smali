.class Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;
.super Ljava/lang/Object;
.source "AddOrganizationDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->onDone(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

.field final synthetic val$localView:Landroid/view/View;

.field final synthetic val$organizationID:Ljava/lang/String;

.field final synthetic val$param:Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

.field final synthetic val$tm:Lcom/metamoji/cm/CmTaskManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;Landroid/view/View;Ljava/lang/String;Lcom/metamoji/cm/CmTaskManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 243
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;->val$param:Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;->val$localView:Landroid/view/View;

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;->val$organizationID:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;->val$tm:Lcom/metamoji/cm/CmTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;->val$param:Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    .line 249
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetClassRoomLoginInfoWithParam(Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget v1, v0, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;->errorCode:I

    if-nez v1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;->val$localView:Landroid/view/View;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;->val$organizationID:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->-$$Nest$fget_serverURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->-$$Nest$maddOrganization(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;->val$tm:Lcom/metamoji/cm/CmTaskManager;

    new-instance v2, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3$1;-><init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
