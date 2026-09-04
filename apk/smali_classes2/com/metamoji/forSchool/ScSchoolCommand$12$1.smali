.class Lcom/metamoji/forSchool/ScSchoolCommand$12$1;
.super Ljava/lang/Object;
.source "ScSchoolCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolCommand$12;->onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ScSchoolCommand$12;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ScSchoolCommand$12;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1776
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12$1;->this$0:Lcom/metamoji/forSchool/ScSchoolCommand$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 2

    .line 1780
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12$1;->this$0:Lcom/metamoji/forSchool/ScSchoolCommand$12;

    iget-object p1, p1, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$completionAction:Lcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;

    if-eqz p1, :cond_0

    .line 1781
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12$1;->this$0:Lcom/metamoji/forSchool/ScSchoolCommand$12;

    iget-object p1, p1, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$completionAction:Lcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;->onComplete(ZLjava/util/Map;)V

    :cond_0
    return-void
.end method
