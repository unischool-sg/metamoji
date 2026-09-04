.class Lcom/metamoji/media/voice/controller/VcRecordingsManager$8;
.super Ljava/lang/Object;
.source "VcRecordingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsManager;->migrationFromOldVersion(Lcom/metamoji/nt/NtDocument;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

.field final synthetic val$cacheFilename:Ljava/lang/String;

.field final synthetic val$document:Lcom/metamoji/nt/NtDocument;

.field final synthetic val$model:Lcom/metamoji/df/model/IModel;

.field final synthetic val$ticket:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/nt/NtDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 2310
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$8;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$8;->val$cacheFilename:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$8;->val$model:Lcom/metamoji/df/model/IModel;

    iput-object p4, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$8;->val$ticket:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$8;->val$document:Lcom/metamoji/nt/NtDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 2313
    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 2314
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$8;->val$cacheFilename:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2315
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2317
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$8;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v2, "$title"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2318
    iget-object v3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$8;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    iget-object v4, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$8;->val$ticket:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$8;->val$document:Lcom/metamoji/nt/NtDocument;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->registRecordingToUploadManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtDocument;Z)V

    .line 2319
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$8;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v1, "$addedToUploadManager"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 2320
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$8;->val$document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->setSaveOnEnd()V

    :cond_0
    return-void
.end method
