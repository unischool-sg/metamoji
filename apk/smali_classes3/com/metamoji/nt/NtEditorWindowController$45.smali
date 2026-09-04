.class Lcom/metamoji/nt/NtEditorWindowController$45;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->openNote(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$companyID:Ljava/lang/String;

.field final synthetic val$docID:Ljava/lang/String;

.field final synthetic val$driveID:Ljava/lang/String;

.field final synthetic val$pageID:Ljava/lang/String;

.field final synthetic val$registerJumpHistory:Z

.field final synthetic val$removeJumpHistory:Z

.field final synthetic val$roomID:Ljava/lang/String;

.field final synthetic val$sendDirection:Z


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5542
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-boolean p2, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->val$sendDirection:Z

    iput-object p3, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->val$roomID:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->val$companyID:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->val$driveID:Ljava/lang/String;

    iput-object p6, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->val$docID:Ljava/lang/String;

    iput-object p7, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->val$pageID:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->val$registerJumpHistory:Z

    iput-boolean p9, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->val$removeJumpHistory:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 5545
    iget-boolean v0, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->val$sendDirection:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5550
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_MonitorListDlg_Msg_Error_EditLayer_Personal:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 5547
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->val$roomID:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->val$companyID:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->val$driveID:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->val$docID:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->val$pageID:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->val$registerJumpHistory:Z

    iget-boolean v8, p0, Lcom/metamoji/nt/NtEditorWindowController$45;->val$removeJumpHistory:Z

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/metamoji/nt/NtEditorWindowController;->openNoteInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method
