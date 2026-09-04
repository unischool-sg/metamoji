.class Lcom/metamoji/ns/NsCollaboManager$3;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->terminateOnCloseCollaboDocument()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/nt/NtEditorWindowController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 522
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$3;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager$3;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 526
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$3;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->collaboModeChanged(Z)V

    .line 528
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$3;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$mgetCollaboModeBar(Lcom/metamoji/ns/NsCollaboManager;)Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->initForGuidanceMode()V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$3;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    .line 535
    invoke-interface {v0, v2}, Lcom/metamoji/nt/INtEditor;->updatePageButtonInfoIcon(I)V

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$3;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->executeConnectRoomAfterAction(Z)V

    return-void
.end method
