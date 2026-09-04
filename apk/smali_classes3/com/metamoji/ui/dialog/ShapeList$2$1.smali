.class Lcom/metamoji/ui/dialog/ShapeList$2$1;
.super Ljava/lang/Object;
.source "ShapeList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ShapeList$2;->onShapeSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/ShapeList$2;

.field final synthetic val$tempDir:Ljava/io/File;

.field final synthetic val$window:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ShapeList$2;Lcom/metamoji/nt/NtEditorWindowController;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 255
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList$2$1;->this$1:Lcom/metamoji/ui/dialog/ShapeList$2;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShapeList$2$1;->val$window:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShapeList$2$1;->val$tempDir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 258
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 259
    const-string v1, "index"

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeList$2$1;->val$window:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 261
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeList$2$1;->val$window:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_INSERT_SHAPE:Lcom/metamoji/nt/NtCommand;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShapeList$2$1;->this$1:Lcom/metamoji/ui/dialog/ShapeList$2;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/ShapeList$2;->this$0:Lcom/metamoji/ui/dialog/ShapeList;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/ShapeList;->m_context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 264
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeList$2$1;->val$tempDir:Ljava/io/File;

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-void
.end method
