.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList$1;
.super Ljava/lang/Object;
.source "ScCollaboBgTaskForManageClassList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$loginName:Ljava/lang/String;

.field final synthetic val$nickName:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 49
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList$1;->this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList;

    iput-object p2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList$1;->val$email:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList$1;->val$userId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList$1;->val$nickName:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList$1;->val$loginName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 52
    new-instance v0, Lcom/metamoji/forSchool/ui/ScClassListDialog;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;-><init>()V

    .line 53
    sget-object v1, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->ManageMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    iget-object v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList$1;->val$email:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList$1;->val$userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList$1;->val$nickName:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList$1;->val$loginName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->initDialog(Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/forSchool/ui/ScClassListDialog$IScClassListDialogAfterAction;)V

    .line 54
    const-string v1, "ScClassListDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
