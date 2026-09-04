.class Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback;
.super Ljava/lang/Object;
.source "ChangePassword.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/ChangePassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForgotPassCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/ChangePassword;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/cabinet/user/ChangePassword;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback;->this$0:Lcom/metamoji/ui/cabinet/user/ChangePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 306
    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback$2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback$2;-><init>(Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 308
    :cond_1
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback$1;-><init>(Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
