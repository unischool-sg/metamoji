.class Lcom/metamoji/nt/NtMazecImsManager$7;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager;->onHideReceiveResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 341
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    .line 342
    instance-of v1, v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v1, :cond_2

    .line 344
    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$7$1;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/metamoji/nt/NtMazecImsManager$7$1;-><init>(Lcom/metamoji/nt/NtMazecImsManager$7;Landroid/os/Handler;)V

    .line 349
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_toggleListener()Lcom/metamoji/nt/NtMazecImsManager$ToggleListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 350
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_toggleListener()Lcom/metamoji/nt/NtMazecImsManager$ToggleListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/nt/NtMazecImsManager$ToggleListener;->onToggleImeAndMazecShowBefore()V

    .line 351
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getViewForSoftInput()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->showSoftInput(Landroid/view/View;Landroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$smonShowReceiveResult()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 357
    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfput_duringToggleImeAndMazec(Z)V

    return-void
.end method
