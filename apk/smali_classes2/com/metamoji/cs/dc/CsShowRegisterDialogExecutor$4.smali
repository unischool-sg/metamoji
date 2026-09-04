.class Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$4;
.super Ljava/lang/Object;
.source "CsShowRegisterDialogExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->closeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$4;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$4;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->-$$Nest$fgetui(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;)Lcom/metamoji/ui/cabinet/user/EntryUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$4;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->-$$Nest$fputui(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;Lcom/metamoji/ui/cabinet/user/EntryUser;)V

    :cond_0
    return-void
.end method
