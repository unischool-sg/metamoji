.class Lcom/metamoji/media/voice/controller/VcRecordingsController$21;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->completedRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field final synthetic val$recorder:Lcom/metamoji/media/voice/audio/VcRecorder;

.field final synthetic val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

.field final synthetic val$ticket:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/audio/VcRecorder;Lcom/metamoji/media/voice/controller/VcRecordingsManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 1756
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;->val$recorder:Lcom/metamoji/media/voice/audio/VcRecorder;

    iput-object p3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    iput-object p4, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;->val$ticket:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1759
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;->val$recorder:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 1760
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;->val$recorder:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v2}, Lcom/metamoji/media/voice/audio/VcRecorder;->getTempDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1762
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;->val$ticket:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getCacheFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1763
    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 1764
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1765
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1767
    invoke-static {v1, v3}, Lcom/metamoji/cm/CmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1768
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1770
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;->val$recorder:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->deleteTempDir()V

    .line 1771
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    iget-object v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;->val$ticket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1772
    iget-object v4, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    iget-object v5, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;->val$ticket:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->registRecordingToUploadManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtDocument;Z)V

    .line 1775
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;->val$ticket:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->sendAddRecordingsDirectionOfTickets(Ljava/util/List;)V

    .line 1778
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    iget-object v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;->val$ticket:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setHiddenRecording(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
