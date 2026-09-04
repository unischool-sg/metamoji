.class Lcom/metamoji/forSchool/ScSchoolCommand$12$2;
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

.field final synthetic val$bgTask:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;

.field final synthetic val$score:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ScSchoolCommand$12;Ljava/lang/Integer;Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;)V
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

    .line 1790
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2;->this$0:Lcom/metamoji/forSchool/ScSchoolCommand$12;

    iput-object p2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2;->val$score:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/metamoji/forSchool/ScSchoolCommand$12$2;->val$bgTask:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 2

    .line 1793
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/ScSchoolCommand$12$2$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/forSchool/ScSchoolCommand$12$2$1;-><init>(Lcom/metamoji/forSchool/ScSchoolCommand$12$2;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
