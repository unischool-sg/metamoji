.class Lcom/metamoji/nt/NtDocument$5$1;
.super Ljava/lang/Object;
.source "NtDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtDocument$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtDocument$5;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDocument$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1415
    iput-object p1, p0, Lcom/metamoji/nt/NtDocument$5$1;->this$1:Lcom/metamoji/nt/NtDocument$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1418
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument$5$1;->this$1:Lcom/metamoji/nt/NtDocument$5;

    iget-object v0, v0, Lcom/metamoji/nt/NtDocument$5;->this$0:Lcom/metamoji/nt/NtDocument;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtDocument;->-$$Nest$m_autoSave(Lcom/metamoji/nt/NtDocument;Z)V

    .line 1419
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument$5$1;->this$1:Lcom/metamoji/nt/NtDocument$5;

    iget-object v0, v0, Lcom/metamoji/nt/NtDocument$5;->val$tm:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 1422
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1424
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->resetUserDrawing()V

    :cond_0
    return-void
.end method
