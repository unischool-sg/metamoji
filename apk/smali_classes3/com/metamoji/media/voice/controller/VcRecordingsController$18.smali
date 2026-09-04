.class Lcom/metamoji/media/voice/controller/VcRecordingsController$18;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile$IMediaBgTaskForGetMediaFileCompleteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->importRecordingFromServer(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field final synthetic val$completionAction:Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;

.field final synthetic val$isMediaId:Z

.field final synthetic val$pageId:Ljava/lang/String;

.field final synthetic val$startDate:Ljava/util/Date;

.field final synthetic val$targetId:Ljava/lang/String;

.field final synthetic val$ticket:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
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

    .line 1384
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->val$completionAction:Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;

    iput-object p3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->val$targetId:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->val$isMediaId:Z

    iput-object p6, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->val$ticket:Ljava/lang/String;

    iput-object p7, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->val$title:Ljava/lang/String;

    iput-object p8, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->val$startDate:Ljava/util/Date;

    iput-object p9, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->val$pageId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/io/File;Z)V
    .locals 12

    if-nez p1, :cond_0

    .line 1388
    iget-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->val$completionAction:Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;->onCompletion(Ljava/lang/String;)V

    return-void

    .line 1392
    :cond_0
    invoke-static {p1}, Lcom/metamoji/media/voice/VcUtil;->getDuration(Ljava/io/File;)D

    move-result-wide v8

    .line 1394
    iget-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-virtual {p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    .line 1396
    iget-object v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->val$targetId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->val$isMediaId:Z

    iget-object v4, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->val$ticket:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->val$title:Ljava/lang/String;

    iget-object v7, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->val$startDate:Ljava/util/Date;

    iget-object v10, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->val$pageId:Ljava/lang/String;

    iget-object v11, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;->val$completionAction:Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;

    move-object v5, p1

    invoke-virtual/range {v0 .. v11}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->importRecordingFromServer(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/Date;DLjava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;)V

    return-void
.end method
