.class Lcom/metamoji/nt/NtNoteController$34;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->handlePageJumpSpecified(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/PageJumpSpecified;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/ui/dialog/PageJumpSpecified;)V
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

    .line 4988
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$34;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$34;->val$dlg:Lcom/metamoji/ui/dialog/PageJumpSpecified;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-nez p3, :cond_0

    goto :goto_0

    .line 4995
    :cond_0
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController$34;->val$dlg:Lcom/metamoji/ui/dialog/PageJumpSpecified;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/PageJumpSpecified;->getPageIndex()I

    move-result p1

    if-gez p1, :cond_1

    :goto_0
    return-void

    .line 5000
    :cond_1
    new-instance p2, Lcom/metamoji/cm/CmContext;

    invoke-direct {p2}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 5001
    const-string p3, "pageIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5002
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController$34;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p3, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p3, p2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method
