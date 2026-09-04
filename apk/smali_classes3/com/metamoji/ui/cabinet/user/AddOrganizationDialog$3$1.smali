.class Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3$1;
.super Ljava/lang/Object;
.source "AddOrganizationDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;

.field final synthetic val$response:Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;)V
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

    .line 261
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3$1;->val$response:Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3$1;->val$response:Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;->errorCode:I

    const/16 v1, -0x66

    if-eq v0, v1, :cond_1

    const/16 v1, 0x67

    if-eq v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3$1;->val$response:Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;

    .line 280
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    goto :goto_0

    .line 267
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_SimpleLogin_Msg_Invalid_Organization_Id:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Ljava/lang/String;)Z

    goto :goto_0

    .line 275
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Add_Organization_Msg_Network_Error:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Ljava/lang/String;)Z

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->-$$Nest$fget_txtOrganizationID(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 285
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->-$$Nest$fput_processable(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;Z)V

    return-void
.end method
