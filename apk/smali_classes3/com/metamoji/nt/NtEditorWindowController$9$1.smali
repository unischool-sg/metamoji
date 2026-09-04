.class Lcom/metamoji/nt/NtEditorWindowController$9$1;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtEditorWindowController$9;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1608
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$9$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1611
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 1612
    const-string v1, "index"

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1613
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$9$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$9;

    iget-object v1, v1, Lcom/metamoji/nt/NtEditorWindowController$9;->val$win:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method
