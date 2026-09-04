.class Lcom/metamoji/ns/NsCollaboManager$29;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->modeChangeForPresenter(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;Z)V
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

    .line 2640
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$29;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-boolean p2, p0, Lcom/metamoji/ns/NsCollaboManager$29;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2646
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 2648
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager$29;->val$enable:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLocking()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager$29;->val$enable:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenUnlocking()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2649
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/ns/NsCollaboManager$29;->val$enable:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/metamoji/noteanytime/R$string;->School_ToastMsg_Become_Chair:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_ToastMsg_Resign_Chair:I

    goto :goto_0

    .line 2651
    :cond_3
    iget-boolean v0, p0, Lcom/metamoji/ns/NsCollaboManager$29;->val$enable:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/metamoji/noteanytime/R$string;->ToastMsg_Become_Chair:I

    goto :goto_0

    :cond_4
    sget v0, Lcom/metamoji/noteanytime/R$string;->ToastMsg_Resign_Chair:I

    .line 2653
    :goto_0
    invoke-static {v0}, Lcom/metamoji/ns/ui/NsCollaboProgressView;->toast(I)V

    return-void
.end method
