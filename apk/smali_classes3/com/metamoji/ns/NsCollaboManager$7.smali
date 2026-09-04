.class Lcom/metamoji/ns/NsCollaboManager$7;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->openSocket()Z
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

    .line 1188
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$7;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager$7;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1192
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$7;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$mgetCollaboModeBar(Lcom/metamoji/ns/NsCollaboManager;)Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1194
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateStatusBtn()V

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$7;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$7;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboManager;->m_collaboMode:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->collaboModeChanged(Z)V

    .line 1199
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "CollaboDispLoginMessage"

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1200
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$7;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    sget v1, Lcom/metamoji/noteanytime/R$string;->ToastMsg_ShareServer_Connecting:I

    const-string v2, "connecting"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboManager;->showProgressView(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
