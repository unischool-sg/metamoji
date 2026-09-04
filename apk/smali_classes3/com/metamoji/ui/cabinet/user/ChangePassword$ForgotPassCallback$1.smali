.class Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback$1;
.super Ljava/lang/Object;
.source "ChangePassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback;

.field final synthetic val$csResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
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

    .line 308
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback$1;->this$1:Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback$1;->val$csResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lcom/metamoji/lib/dialog/UtDialog;)Lkotlin/Unit;
    .locals 2

    .line 313
    check-cast p1, Lcom/metamoji/ui/cabinet/user/ChangePassword;

    if-eqz p0, :cond_0

    .line 314
    iget v0, p0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, -0xc8

    if-eq v0, v1, :cond_1

    .line 315
    :cond_0
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    :cond_1
    const/4 p0, 0x1

    .line 317
    invoke-static {p1, p0}, Lcom/metamoji/ui/cabinet/user/ChangePassword;->-$$Nest$msetInputControlEnabled(Lcom/metamoji/ui/cabinet/user/ChangePassword;Z)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 312
    sget-object v0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback$1;->val$csResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    new-instance v2, Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback$1$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    invoke-static {v0, v2}, Lcom/metamoji/ui/dialog/NtDialog;->javaWithDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
