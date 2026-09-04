.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList$3;
.super Ljava/lang/Object;
.source "ScCollaboBgTaskForGetScoreLogList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;

.field final synthetic val$finalTargetUserInfoDic:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;Ljava/util/Map;)V
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

    .line 177
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList$3;->this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;

    iput-object p2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList$3;->val$finalTargetUserInfoDic:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 180
    new-instance v0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;-><init>()V

    .line 181
    const-string v1, "ScScoreLogListDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->safeShow(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList$3;->val$finalTargetUserInfoDic:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->setData(Ljava/util/Map;)V

    return-void
.end method
