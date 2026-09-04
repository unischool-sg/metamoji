.class Lcom/metamoji/ui/library/item/LibraryViewDialog$6$2;
.super Ljava/lang/Object;
.source "LibraryViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$6;

.field final synthetic val$window:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$6;Lcom/metamoji/nt/NtEditorWindowController;)V
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

    .line 1110
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$6$2;->this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$6;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$6$2;->val$window:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1113
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 1114
    const-string v1, "index"

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1115
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$6$2;->val$window:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 1116
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$6$2;->val$window:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_INSERT_PARTS:Lcom/metamoji/nt/NtCommand;

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$6$2;->this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$6;

    iget-object v2, v2, Lcom/metamoji/ui/library/item/LibraryViewDialog$6;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iget-object v2, v2, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method
