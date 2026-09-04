.class Lcom/metamoji/ns/NsCollaboManager$5;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->changeMode(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;Z)V
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

    .line 688
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$5;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager$5;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 692
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$5;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$mgetCollaboModeBar(Lcom/metamoji/ns/NsCollaboManager;)Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateStatusBtn()V

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$5;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$5;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboManager;->m_collaboMode:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->collaboModeChanged(Z)V

    .line 700
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$5;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboMode:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v0, v1, :cond_2

    .line 701
    sget v0, Lcom/metamoji/noteanytime/R$string;->ToastMsg_Change_ShareLayer:I

    goto :goto_1

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$5;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboMode:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v0, v1, :cond_3

    .line 704
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_STARTED_OFFLINE_EDIT:I

    goto :goto_1

    .line 707
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$string;->ToastMsg_Change_PrivateLayer:I

    .line 709
    :goto_1
    invoke-static {v0}, Lcom/metamoji/ns/ui/NsCollaboProgressView;->toast(I)V

    return-void
.end method
