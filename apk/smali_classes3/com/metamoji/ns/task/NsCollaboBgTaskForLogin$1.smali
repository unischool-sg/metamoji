.class Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$1;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

.field final synthetic val$are:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$secureRoomPasswordStock:Ljava/util/List;

.field final synthetic val$tm:Lcom/metamoji/cm/CmTaskManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;Lcom/metamoji/cm/CmTaskManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 119
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    iput-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$1;->val$secureRoomPasswordStock:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$1;->val$are:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$1;->val$tm:Lcom/metamoji/cm/CmTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Lcom/metamoji/ui/dialog/UiPasswordDialog;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 135
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "acheckPassword"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 122
    new-instance v0, Lcom/metamoji/ui/dialog/UiPasswordDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;-><init>()V

    .line 123
    sget v1, Lcom/metamoji/noteanytime/R$string;->Collabo_Secure_Room_Password_Input:I

    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    iget v2, v2, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_secureRoomPasswordRetryCount:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    sget v2, Lcom/metamoji/noteanytime/R$string;->Password_Error_Wrong:I

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    new-instance v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$1$1;

    invoke-direct {v3, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$1$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->setParams(IILcom/metamoji/ui/dialog/UiPasswordDialog$IOnResult;)V

    .line 133
    invoke-virtual {v0, v4}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->setCancelable(Z)V

    .line 134
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v1

    .line 135
    new-instance v2, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$1$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/dialog/UiPasswordDialog;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method
