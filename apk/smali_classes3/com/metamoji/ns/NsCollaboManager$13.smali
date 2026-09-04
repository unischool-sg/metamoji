.class Lcom/metamoji/ns/NsCollaboManager$13;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->onLoginRoom()V
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

    .line 1438
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$13;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager$13;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1441
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$13;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$mgetCollaboModeBar(Lcom/metamoji/ns/NsCollaboManager;)Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1444
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateStatusBtn()V

    .line 1446
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$13;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$13;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v2, v2, Lcom/metamoji/ns/NsCollaboManager;->m_collaboMode:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->collaboModeChanged(Z)V

    .line 1451
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$13;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->hideAllProgressView()V

    .line 1453
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v2, "CollaboDispLoginMessage"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1454
    sget v0, Lcom/metamoji/noteanytime/R$string;->ToastMsg_ShareServer_Connect_Success:I

    invoke-static {v0}, Lcom/metamoji/ns/ui/NsCollaboProgressView;->toast(I)V

    :cond_2
    return-void
.end method
