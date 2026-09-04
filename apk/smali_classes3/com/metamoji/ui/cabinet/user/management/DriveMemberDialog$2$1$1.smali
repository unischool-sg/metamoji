.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1$1;
.super Ljava/lang/Object;
.source "DriveMemberDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1;

.field final synthetic val$result:Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;

.field final synthetic val$user:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1;Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;Ljava/util/Map;)V
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

    .line 177
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1$1;->this$2:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1$1;->val$result:Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1$1;->val$user:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1$1;->val$result:Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1$1;->this$2:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1$1;->val$user:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;->remove(Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1$1;->this$2:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;->notifyDataSetChanged()V

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1$1;->val$result:Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void
.end method
