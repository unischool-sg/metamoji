.class Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$4;
.super Ljava/lang/Object;
.source "CsShowRequiredEulaDialogExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->closeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$4;->this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$4;->this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->-$$Nest$fgetui(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;)Lcom/metamoji/ui/cabinet/user/RequiredEula;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$4;->this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->-$$Nest$fputui(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;Lcom/metamoji/ui/cabinet/user/RequiredEula;)V

    :cond_0
    return-void
.end method
