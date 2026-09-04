.class Lcom/metamoji/media/voice/controller/VcRecordingsController$17;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->importRecordingFromServer(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field final synthetic val$completionAction:Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;)V
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

    .line 1342
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$17;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$17;->val$completionAction:Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;)V
    .locals 4

    .line 1345
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$17;->val$completionAction:Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;

    invoke-interface {v0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;->onCompletion(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$17;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V

    .line 1350
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x1

    .line 1351
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->showPlayerBar(Z)V

    .line 1352
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    .line 1353
    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didAddTicket()V

    .line 1356
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$17;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->sendAddRecordingsDirectionOfTickets(Ljava/util/List;)V

    .line 1358
    iget-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$17;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    :cond_0
    return-void
.end method
