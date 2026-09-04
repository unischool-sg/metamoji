.class public Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;
.super Lcom/metamoji/media/service/MediaBgTask;
.source "VcBgTaskForConvertAudio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio$IMediaBgTaskForConvertAudioCompleteAction;
    }
.end annotation


# instance fields
.field private _completeAction:Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio$IMediaBgTaskForConvertAudioCompleteAction;

.field private _convertedFile:Ljava/io/File;

.field private _converter:Lcom/metamoji/media/voice/converter/VcAudioConverter;

.field private _srcFile:Ljava/io/File;

.field private _tempFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio$IMediaBgTaskForConvertAudioCompleteAction;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/metamoji/media/service/MediaBgTask;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;)V

    .line 33
    iput-object p2, p0, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->_completeAction:Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio$IMediaBgTaskForConvertAudioCompleteAction;

    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->setDisplayWaitView(Z)V

    .line 35
    const-string p1, "convertedAudio"

    const-string p2, "m4a"

    invoke-static {p1, p2}, Lcom/metamoji/dm/fw/DmUtils;->createTempFileWithPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->_convertedFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getSrcFile()Ljava/io/File;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->_srcFile:Ljava/io/File;

    return-object v0
.end method

.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 0

    .line 76
    invoke-super {p0, p1, p2}, Lcom/metamoji/media/service/MediaBgTask;->onCompleted(ZLjava/lang/Throwable;)V

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->_completeAction:Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio$IMediaBgTaskForConvertAudioCompleteAction;

    iget-object p2, p0, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->_convertedFile:Ljava/io/File;

    invoke-interface {p1, p2}, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio$IMediaBgTaskForConvertAudioCompleteAction;->action(Ljava/io/File;)V

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->_convertedFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public setSrcFile(Ljava/io/File;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->_srcFile:Ljava/io/File;

    return-void
.end method

.method protected taskExec()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->_srcFile:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->_displayWaitView:Z

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 51
    sget v1, Lcom/metamoji/noteanytime/R$string;->Voice_Importing:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 55
    :cond_1
    const-string/jumbo v0, "tempAudio"

    const-string v1, "m4a"

    invoke-static {v0, v1}, Lcom/metamoji/dm/fw/DmUtils;->createTempFileWithPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->_tempFile:Ljava/io/File;

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->cancel()Z

    return-void

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->_convertedFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 61
    invoke-virtual {p0}, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->cancel()Z

    return-void

    .line 64
    :cond_3
    new-instance v0, Lcom/metamoji/media/voice/converter/VcAudioConverter;

    iget-object v1, p0, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->_srcFile:Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->_convertedFile:Ljava/io/File;

    iget-object v3, p0, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->_tempFile:Ljava/io/File;

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/media/voice/converter/VcAudioConverter;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    iput-object v0, p0, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->_converter:Lcom/metamoji/media/voice/converter/VcAudioConverter;

    .line 65
    invoke-virtual {v0}, Lcom/metamoji/media/voice/converter/VcAudioConverter;->convert()V

    .line 67
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->_tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
