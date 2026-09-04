.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList$2;
.super Ljava/lang/Object;
.source "ScCollaboBgTaskForGetTestingLogList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;

.field final synthetic val$finalExecutionHistoryList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;Ljava/util/List;)V
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

    .line 165
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList$2;->this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;

    iput-object p2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList$2;->val$finalExecutionHistoryList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 168
    new-instance v0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;-><init>()V

    const/4 v1, 0x1

    .line 169
    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->setCentering(Z)V

    .line 170
    const-string v1, "ScDeadlineLogListDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->safeShow(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList$2;->val$finalExecutionHistoryList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->setData(Ljava/util/List;)V

    return-void
.end method
