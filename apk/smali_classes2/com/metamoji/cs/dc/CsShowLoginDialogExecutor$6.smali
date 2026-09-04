.class Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$6;
.super Ljava/lang/Object;
.source "CsShowLoginDialogExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onFailedSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

.field final synthetic val$_ui:Lcom/metamoji/ui/cabinet/user/LoginUser;

.field final synthetic val$resetPassExecutor:Lcom/metamoji/cs/dc/CsResetPasswordExecutor;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;Lcom/metamoji/ui/cabinet/user/LoginUser;Lcom/metamoji/cs/dc/CsResetPasswordExecutor;)V
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

    .line 378
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$6;->this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$6;->val$_ui:Lcom/metamoji/ui/cabinet/user/LoginUser;

    iput-object p3, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$6;->val$resetPassExecutor:Lcom/metamoji/cs/dc/CsResetPasswordExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$6;->val$_ui:Lcom/metamoji/ui/cabinet/user/LoginUser;

    iget-object v1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$6;->val$resetPassExecutor:Lcom/metamoji/cs/dc/CsResetPasswordExecutor;

    invoke-virtual {v1}, Lcom/metamoji/cs/dc/CsResetPasswordExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResetPasswordResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginUser;->onHandleResetPasswordFail(Lcom/metamoji/cs/dc/response/CsResetPasswordResponse;)Z

    return-void
.end method
