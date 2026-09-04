.class Lcom/metamoji/media/MediaUtil$2;
.super Ljava/lang/Object;
.source "MediaUtil.java"

# interfaces
.implements Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile$IMediaBgTaskForGetMediaFileCompleteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUtil;->downloadSoundFile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cacheFilename:Ljava/lang/String;

.field final synthetic val$downloadCompletionAction:Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/metamoji/media/MediaUtil$2;->val$downloadCompletionAction:Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;

    iput-object p2, p0, Lcom/metamoji/media/MediaUtil$2;->val$cacheFilename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/io/File;Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/metamoji/media/MediaUtil$2;->val$downloadCompletionAction:Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;

    invoke-interface {p1, v0, v1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;->onCompletion(Ljava/io/File;ZZ)V

    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    .line 137
    iget-object p1, p0, Lcom/metamoji/media/MediaUtil$2;->val$downloadCompletionAction:Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;

    invoke-interface {p1, v0, v1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;->onCompletion(Ljava/io/File;ZZ)V

    return-void

    .line 144
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/metamoji/media/MediaUtil$2;->val$cacheFilename:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 146
    invoke-virtual {p1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    .line 157
    iget-object v2, p0, Lcom/metamoji/media/MediaUtil$2;->val$downloadCompletionAction:Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;

    if-nez p1, :cond_2

    .line 154
    invoke-interface {v2, v0, v1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;->onCompletion(Ljava/io/File;ZZ)V

    return-void

    .line 157
    :cond_2
    invoke-interface {v2, v3, v1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;->onCompletion(Ljava/io/File;ZZ)V

    return-void

    :catch_0
    move-exception p1

    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "failed to copy recording file. message:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method
