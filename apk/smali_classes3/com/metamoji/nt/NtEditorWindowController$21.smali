.class Lcom/metamoji/nt/NtEditorWindowController$21;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->showSoftInput(Landroid/view/View;Landroid/os/ResultReceiver;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2705
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$21;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2708
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$21;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_editorPage(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2710
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$21;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_editorPage(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/metamoji/nt/INtEditor;->updatePageNavigationButtonsByShowSoftInput(Z)V

    :cond_0
    return-void
.end method
