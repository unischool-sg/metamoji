.class Lcom/metamoji/forSchool/ScSchoolCommand$12$2$1;
.super Ljava/lang/Object;
.source "ScSchoolCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolCommand$12$2;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/ScSchoolCommand$12$2;

.field final synthetic val$isCancelled:Z


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ScSchoolCommand$12$2;Z)V
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

    .line 1793
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2$1;->this$1:Lcom/metamoji/forSchool/ScSchoolCommand$12$2;

    iput-boolean p2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2$1;->val$isCancelled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1796
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2$1;->val$isCancelled:Z

    .line 1802
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2$1;->this$1:Lcom/metamoji/forSchool/ScSchoolCommand$12$2;

    if-eqz v0, :cond_0

    .line 1798
    iget-object v2, v1, Lcom/metamoji/forSchool/ScSchoolCommand$12$2;->val$score:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2$1;->this$1:Lcom/metamoji/forSchool/ScSchoolCommand$12$2;

    iget-object v0, v0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2;->this$0:Lcom/metamoji/forSchool/ScSchoolCommand$12;

    iget-object v3, v0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$roomId:Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2$1;->this$1:Lcom/metamoji/forSchool/ScSchoolCommand$12$2;

    iget-object v0, v0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2;->this$0:Lcom/metamoji/forSchool/ScSchoolCommand$12;

    iget-object v4, v0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$userId:Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2$1;->this$1:Lcom/metamoji/forSchool/ScSchoolCommand$12$2;

    iget-object v0, v0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2;->this$0:Lcom/metamoji/forSchool/ScSchoolCommand$12;

    iget-boolean v5, v0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$editorMode:Z

    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2$1;->this$1:Lcom/metamoji/forSchool/ScSchoolCommand$12$2;

    iget-object v0, v0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2;->this$0:Lcom/metamoji/forSchool/ScSchoolCommand$12;

    iget-object v6, v0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$completionAction:Lcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;

    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2$1;->this$1:Lcom/metamoji/forSchool/ScSchoolCommand$12$2;

    iget-object v0, v0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2;->this$0:Lcom/metamoji/forSchool/ScSchoolCommand$12;

    iget-boolean v7, v0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$hideParentDialog:Z

    invoke-static/range {v2 .. v7}, Lcom/metamoji/forSchool/ScSchoolCommand;->executeSetScore(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;Z)V

    return-void

    .line 1802
    :cond_0
    iget-object v0, v1, Lcom/metamoji/forSchool/ScSchoolCommand$12$2;->this$0:Lcom/metamoji/forSchool/ScSchoolCommand$12;

    iget-object v0, v0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$completionAction:Lcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;

    if-eqz v0, :cond_1

    .line 1803
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2$1;->this$1:Lcom/metamoji/forSchool/ScSchoolCommand$12$2;

    iget-object v0, v0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2;->this$0:Lcom/metamoji/forSchool/ScSchoolCommand$12;

    iget-object v0, v0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$completionAction:Lcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;

    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2$1;->this$1:Lcom/metamoji/forSchool/ScSchoolCommand$12$2;

    iget-object v1, v1, Lcom/metamoji/forSchool/ScSchoolCommand$12$2;->val$bgTask:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->getUpdatedUserInfoDic()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;->onComplete(ZLjava/util/Map;)V

    :cond_1
    return-void
.end method
