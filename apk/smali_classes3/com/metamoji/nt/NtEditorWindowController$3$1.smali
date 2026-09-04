.class Lcom/metamoji/nt/NtEditorWindowController$3$1;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController$3;->onCompleted(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtEditorWindowController$3;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 573
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$3$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$3$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$3;

    iget-object v0, v0, Lcom/metamoji/nt/NtEditorWindowController$3;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->showPlayerBar(Z)V

    .line 577
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$3$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$3;

    iget-object v0, v0, Lcom/metamoji/nt/NtEditorWindowController$3;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didAddTicket()V

    .line 579
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$3$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$3;

    iget-object v0, v0, Lcom/metamoji/nt/NtEditorWindowController$3;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    return-void
.end method
