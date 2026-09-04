.class Lcom/metamoji/nt/NtMazecImsManager$4;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager;->onHideReceiveResult2(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
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
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$4;->val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;

    iput-object p2, p0, Lcom/metamoji/nt/NtMazecImsManager$4;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/metamoji/nt/NtMazecImsManager$4;->val$completion:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 210
    new-instance v0, Lcom/metamoji/nt/NtMazecImsManager$4$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/metamoji/nt/NtMazecImsManager$4$1;-><init>(Lcom/metamoji/nt/NtMazecImsManager$4;Landroid/os/Handler;)V

    .line 216
    iget-object v1, p0, Lcom/metamoji/nt/NtMazecImsManager$4;->val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 218
    iget-object v2, p0, Lcom/metamoji/nt/NtMazecImsManager$4;->val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 220
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    new-instance v1, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v1}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 222
    const-string v2, ""

    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 223
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/nt/NtMazecImsManager$4;->val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;

    invoke-virtual {v3, v1}, Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;->createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/metamoji/nt/NtMazecImsManager;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 226
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/nt/NtMazecImsManager$4;->val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtEditorWindowController;->showSoftInput(Landroid/view/View;Landroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$4;->val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;

    iget-object v1, p0, Lcom/metamoji/nt/NtMazecImsManager$4;->val$runnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/metamoji/nt/NtMazecImsManager$4;->val$completion:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$smonShowReceiveResult2(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
