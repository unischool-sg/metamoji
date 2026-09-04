.class Lcom/metamoji/nt/NtEditorWindowController$32$2;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController$32;->openDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtEditorWindowController$32;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController$32;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4308
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$32$2;->this$1:Lcom/metamoji/nt/NtEditorWindowController$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDocumentCompleted(ZLjava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    .line 4313
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$32$2;->this$1:Lcom/metamoji/nt/NtEditorWindowController$32;

    iget-object p2, p2, Lcom/metamoji/nt/NtEditorWindowController$32;->val$item:Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtMRUDocList;->setCurentSelection(Lcom/metamoji/nt/NtMRUDocList$Item;)V

    .line 4315
    :cond_1
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$32$2;->this$1:Lcom/metamoji/nt/NtEditorWindowController$32;

    iget-object p1, p1, Lcom/metamoji/nt/NtEditorWindowController$32;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    sget-object p2, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-static {p1, p2}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fput_prevNoteMode(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtNoteController$NoteMode;)V

    return-void
.end method
