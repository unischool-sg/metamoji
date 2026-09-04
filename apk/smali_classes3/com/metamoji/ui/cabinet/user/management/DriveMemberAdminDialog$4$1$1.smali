.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1$1;
.super Ljava/lang/Object;
.source "DriveMemberAdminDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;

.field final synthetic val$result:Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;)V
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

    .line 476
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1$1;->this$2:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1$1;->val$result:Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 480
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    .line 482
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1$1;->val$result:Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;->errorCode:I

    if-nez v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1$1;->this$2:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 485
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1$1;->this$2:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_memberListDataAdapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->remove(Ljava/lang/Object;)V

    .line 487
    const-string v2, "isTeacher"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    .line 488
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 491
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1$1;->this$2:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, v3, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget v3, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_teacherCount:I

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_teacherCount:I

    goto :goto_0

    .line 491
    :cond_0
    iget-object v1, v3, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget v3, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_studentCount:I

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_studentCount:I

    goto :goto_0

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1$1;->this$2:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 497
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1$1;->this$2:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->-$$Nest$mhandleMemberListViewSelectionChanged(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;)V

    .line 499
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1$1;->this$2:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->updateUserCount()V

    return-void

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4$1$1;->val$result:Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void
.end method
