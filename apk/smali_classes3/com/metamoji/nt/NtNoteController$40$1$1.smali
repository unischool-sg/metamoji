.class Lcom/metamoji/nt/NtNoteController$40$1$1;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController$40$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/nt/NtNoteController$40$1;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController$40$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5468
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$40$1$1;->this$2:Lcom/metamoji/nt/NtNoteController$40$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5468
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController$40$1$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5471
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$40$1$1;->this$2:Lcom/metamoji/nt/NtNoteController$40$1;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController$40$1;->this$1:Lcom/metamoji/nt/NtNoteController$40;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController$40;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$40$1$1;->this$2:Lcom/metamoji/nt/NtNoteController$40$1;

    iget-object v1, v1, Lcom/metamoji/nt/NtNoteController$40$1;->this$1:Lcom/metamoji/nt/NtNoteController$40;

    iget-object v1, v1, Lcom/metamoji/nt/NtNoteController$40;->val$docID:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$40$1$1;->this$2:Lcom/metamoji/nt/NtNoteController$40$1;

    iget-object v2, v2, Lcom/metamoji/nt/NtNoteController$40$1;->this$1:Lcom/metamoji/nt/NtNoteController$40;

    iget-object v2, v2, Lcom/metamoji/nt/NtNoteController$40;->val$driveID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController;->addPageWithDoc(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
