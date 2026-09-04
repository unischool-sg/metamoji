.class Lcom/metamoji/nt/NtNoteController$38;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->addPageWithDoc(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$docID:Ljava/lang/String;

.field final synthetic val$driveID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 5431
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$38;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$38;->val$docID:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController$38;->val$driveID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5434
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$38;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$38;->val$docID:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$38;->val$driveID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController;->addPageWithDoc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
