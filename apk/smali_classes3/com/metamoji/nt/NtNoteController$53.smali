.class Lcom/metamoji/nt/NtNoteController$53;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->changeToNoteMode(Lcom/metamoji/nt/NtNoteController$NoteMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$noteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController$NoteMode;)V
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

    .line 6484
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$53;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$53;->val$noteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 6487
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 6488
    const-string v1, "index"

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$53;->val$noteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6490
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$53;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v1, v0}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$mhandleSetNoteMode(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method
