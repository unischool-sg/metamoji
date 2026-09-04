.class Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$2;
.super Ljava/lang/Object;
.source "CsShowRequiredEulaDialogExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->onFailedSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

.field final synthetic val$agreeEulaResponse:Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;)V
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

    .line 97
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$2;->this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$2;->val$agreeEulaResponse:Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$2;->this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->-$$Nest$fgetui(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;)Lcom/metamoji/ui/cabinet/user/RequiredEula;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$2;->val$agreeEulaResponse:Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/RequiredEula;->onHandleAgreeEulaResponseFail(Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;)Z

    return-void
.end method
