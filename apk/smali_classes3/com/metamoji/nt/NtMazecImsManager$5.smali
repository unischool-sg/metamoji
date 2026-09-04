.class Lcom/metamoji/nt/NtMazecImsManager$5;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager;->onShowReceiveResult2(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$completion:Ljava/lang/Runnable;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$5;->val$runnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/metamoji/nt/NtMazecImsManager$5;->val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;

    iput-object p3, p0, Lcom/metamoji/nt/NtMazecImsManager$5;->val$completion:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 236
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setSoftInputDetectable(Z)V

    const/4 v0, 0x0

    .line 237
    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfput_duringToggleImeAndMazec(Z)V

    .line 239
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$5;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 240
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$5$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtMazecImsManager$5$1;-><init>(Lcom/metamoji/nt/NtMazecImsManager$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$5;->val$completion:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 261
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
