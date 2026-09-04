.class Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$2;
.super Ljava/lang/Object;
.source "CsShowRegisterDialogExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->onFailedSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

.field final synthetic val$registerResponse:Lcom/metamoji/cs/dc/response/CsRegisterResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;Lcom/metamoji/cs/dc/response/CsRegisterResponse;)V
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

    .line 151
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$2;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$2;->val$registerResponse:Lcom/metamoji/cs/dc/response/CsRegisterResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$2;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->-$$Nest$fgetui(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;)Lcom/metamoji/ui/cabinet/user/EntryUser;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$2;->val$registerResponse:Lcom/metamoji/cs/dc/response/CsRegisterResponse;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/EntryUser;->onHandleEntryResponseFail(Lcom/metamoji/cs/dc/response/CsRegisterResponse;)Z

    return-void
.end method
