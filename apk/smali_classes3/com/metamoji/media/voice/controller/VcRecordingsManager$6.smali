.class Lcom/metamoji/media/voice/controller/VcRecordingsManager$6;
.super Lcom/metamoji/media/voice/controller/VcRecordingsManager$VcDownloadCompletionActionWithStatus;
.source "VcRecordingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsManager;->downloadRecording(Ljava/lang/String;ZLjava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsManager;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsManager;Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1964
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$6;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    invoke-direct {p0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$VcDownloadCompletionActionWithStatus;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsManager;Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/io/File;ZZ)V
    .locals 0

    .line 1967
    iget-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$6;->_status:Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_0

    .line 1969
    iget-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$6;->_status:Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;

    sget p2, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->VC_DOWNLOAD_CANCELED:I

    iput p2, p1, Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;->_status:I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1973
    iget-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$6;->_status:Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;

    sget p2, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->VC_DOWNLOAD_SUCCESS:I

    iput p2, p1, Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;->_status:I

    return-void

    .line 1975
    :cond_1
    iget-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$6;->_status:Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;

    sget p2, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->VC_DOWNLOAD_FAILED:I

    iput p2, p1, Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;->_status:I

    :cond_2
    return-void
.end method
