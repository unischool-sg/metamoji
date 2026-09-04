.class Lcom/metamoji/ns/direction/NsDirectionManager$27;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->onUserModeChanged(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$noteController:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$noteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController$NoteMode;)V
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

    .line 1835
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$27;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$27;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    iput-object p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$27;->val$noteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1838
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$27;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$27;->val$noteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->changeToNoteMode(Lcom/metamoji/nt/NtNoteController$NoteMode;)V

    return-void
.end method
