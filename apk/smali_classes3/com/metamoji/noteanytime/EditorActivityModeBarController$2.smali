.class Lcom/metamoji/noteanytime/EditorActivityModeBarController$2;
.super Ljava/lang/Object;
.source "EditorActivityModeBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivityModeBarController;->notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

.field final synthetic val$command:Lcom/metamoji/nt/NtCommand;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivityModeBarController;Lcom/metamoji/nt/NtCommand;Z)V
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

    .line 400
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$2;->this$0:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$2;->val$command:Lcom/metamoji/nt/NtCommand;

    iput-boolean p3, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$2;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 403
    sget-object v0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$3;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$2;->val$command:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$2;->this$0:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->updateStatusLabel()V

    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$2;->this$0:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 411
    iget-boolean v1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$2;->val$enabled:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 412
    iget-boolean v1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$2;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void

    .line 405
    :cond_4
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$2;->this$0:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    iget-boolean v1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$2;->val$enabled:Z

    invoke-static {v0, v1}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->-$$Nest$msetModeBarEnabled(Lcom/metamoji/noteanytime/EditorActivityModeBarController;Z)V

    return-void
.end method
