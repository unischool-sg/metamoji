.class Lcom/metamoji/forSchool/ScSchoolCommand$12;
.super Ljava/lang/Object;
.source "ScSchoolCommand.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolCommand;->executeSetScore(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$completionAction:Lcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;

.field final synthetic val$dlg:Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;

.field final synthetic val$editorMode:Z

.field final synthetic val$hideParentDialog:Z

.field final synthetic val$roomId:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;Lcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1768
    iput-boolean p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$editorMode:Z

    iput-object p2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$completionAction:Lcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;

    iput-object p4, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$dlg:Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;

    iput-object p5, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$roomId:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$hideParentDialog:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1

    const/4 p1, 0x0

    const/4 p2, 0x0

    if-eqz p3, :cond_3

    .line 1774
    iget-boolean p3, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$editorMode:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$userId:Ljava/lang/String;

    invoke-static {p3}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForShareMenuScore(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1776
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_OperationCouldntBeCompleted:I

    new-instance p2, Lcom/metamoji/forSchool/ScSchoolCommand$12$1;

    invoke-direct {p2, p0}, Lcom/metamoji/forSchool/ScSchoolCommand$12$1;-><init>(Lcom/metamoji/forSchool/ScSchoolCommand$12;)V

    invoke-static {p1, p2}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(ILcom/metamoji/ns/INsCollaboAction;)V

    return-void

    .line 1788
    :cond_0
    iget-object p3, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$dlg:Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;

    invoke-virtual {p3}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->getInputValue()Ljava/lang/Integer;

    move-result-object p3

    .line 1789
    new-instance v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;

    invoke-direct {v0, p1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 1790
    new-instance p1, Lcom/metamoji/forSchool/ScSchoolCommand$12$2;

    invoke-direct {p1, p0, p3, v0}, Lcom/metamoji/forSchool/ScSchoolCommand$12$2;-><init>(Lcom/metamoji/forSchool/ScSchoolCommand$12;Ljava/lang/Integer;Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;)V

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->setAfterAction(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 1809
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$roomId:Ljava/lang/String;

    iput-object p1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->RoomId:Ljava/lang/String;

    .line 1810
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$userId:Ljava/lang/String;

    iput-object p1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->UserId:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 1811
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    iput p1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->Score:I

    if-nez p3, :cond_2

    const/4 p2, 0x1

    .line 1812
    :cond_2
    iput-boolean p2, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->ClearScore:Z

    .line 1813
    invoke-virtual {v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->doInBackground()V

    return-void

    .line 1816
    :cond_3
    iget-object p3, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12;->val$completionAction:Lcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;

    if-eqz p3, :cond_4

    .line 1817
    invoke-interface {p3, p2, p1}, Lcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;->onComplete(ZLjava/util/Map;)V

    :cond_4
    return-void
.end method
