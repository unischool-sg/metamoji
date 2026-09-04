.class Lcom/metamoji/ns/NsCollaboCommand$30;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboUserListBecomePresenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboUserInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2561
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$30;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 2568
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/metamoji/forSchool/ScSchoolManager;->lockScreen(Z)V

    .line 2570
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$30;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iget-boolean p1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-eqz p1, :cond_0

    .line 2571
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolTeacherModePresenter()V

    return-void

    .line 2573
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$30;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iget-object p2, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/metamoji/ns/NsCollaboManager;->changePresenter(ZLjava/lang/String;)V

    return-void
.end method
