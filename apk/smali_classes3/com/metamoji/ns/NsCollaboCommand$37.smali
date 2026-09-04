.class Lcom/metamoji/ns/NsCollaboCommand$37;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->onNormalDocumentOpening(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3101
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$37;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3106
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$37;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->initForGuidanceMode()V

    .line 3108
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "MMJCollaboGuidanceBarClose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 3109
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboCommand$37;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->changeBarSize(Z)V

    .line 3111
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$37;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->collaboModeChanged(Z)V

    .line 3116
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$37;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->show()V

    return-void
.end method
