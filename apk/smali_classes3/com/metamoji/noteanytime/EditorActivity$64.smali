.class Lcom/metamoji/noteanytime/EditorActivity$64;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->enableUndoRedo(Lcom/metamoji/nt/NtCommand;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$command:Lcom/metamoji/nt/NtCommand;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/nt/NtCommand;Z)V
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

    .line 5754
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$64;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$64;->val$command:Lcom/metamoji/nt/NtCommand;

    iput-boolean p3, p0, Lcom/metamoji/noteanytime/EditorActivity$64;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 5757
    sget-object v0, Lcom/metamoji/noteanytime/EditorActivity$87;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$64;->val$command:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 5765
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$64;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->floater_redo:I

    iget-boolean v3, p0, Lcom/metamoji/noteanytime/EditorActivity$64;->val$enabled:Z

    invoke-virtual {v0, v1, v3, v2}, Lcom/metamoji/noteanytime/EditorActivity;->enableButton(IZZ)V

    return-void

    .line 5761
    :cond_1
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$64;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->floater_undo:I

    iget-boolean v3, p0, Lcom/metamoji/noteanytime/EditorActivity$64;->val$enabled:Z

    invoke-virtual {v0, v1, v3, v2}, Lcom/metamoji/noteanytime/EditorActivity;->enableButton(IZZ)V

    return-void
.end method
