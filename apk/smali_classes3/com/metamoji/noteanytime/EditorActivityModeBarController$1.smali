.class Lcom/metamoji/noteanytime/EditorActivityModeBarController$1;
.super Ljava/lang/Object;
.source "EditorActivityModeBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivityModeBarController;->notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

.field final synthetic val$command:Lcom/metamoji/nt/NtCommand;

.field final synthetic val$selected:I


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivityModeBarController;Lcom/metamoji/nt/NtCommand;I)V
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

    .line 368
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$1;->this$0:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$1;->val$command:Lcom/metamoji/nt/NtCommand;

    iput p3, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$1;->val$selected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$1;->val$command:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$1;->this$0:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    iget v1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$1;->val$selected:I

    invoke-static {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->valueOf(I)Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->-$$Nest$mmodeSelect(Lcom/metamoji/noteanytime/EditorActivityModeBarController;Lcom/metamoji/nt/NtNoteController$NoteMode;)V

    return-void

    .line 375
    :cond_0
    sget-object v0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$3;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$1;->val$command:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$1;->this$0:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    iget v1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$1;->val$selected:I

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->UpdatePen(I)V

    return-void

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$1;->this$0:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->UpdateLaser()V

    return-void

    .line 380
    :cond_3
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$1;->this$0:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    iget v1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$1;->val$selected:I

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->SelectPen(I)V

    return-void

    .line 377
    :cond_4
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$1;->this$0:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    iget v1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController$1;->val$selected:I

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->UpdatePen(I)V

    return-void
.end method
