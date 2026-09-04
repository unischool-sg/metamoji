.class public Lcom/metamoji/media/voice/audio/VcRecorder;
.super Ljava/lang/Object;
.source "VcRecorder.java"

# interfaces
.implements Lcom/metamoji/media/voice/audio/VcAudioSession$IVcAudioSessionInterruptionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;,
        Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;
    }
.end annotation


# static fields
.field static _instance:Lcom/metamoji/media/voice/audio/VcRecorder;


# instance fields
.field _duration:D

.field _filename:Ljava/lang/String;

.field _index:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field _indexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field _listener:Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;

.field _mic:Landroid/media/MediaRecorder;

.field _output:Ljava/io/FileOutputStream;

.field _outputFile:Ljava/io/File;

.field _pageId:Ljava/lang/String;

.field _recordingStatus:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

.field _samplingRate:D

.field _startDate:Ljava/util/Date;

.field _startTick:J

.field _tempDir:Ljava/io/File;

.field _ticket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_output:Ljava/io/FileOutputStream;

    .line 78
    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_outputFile:Ljava/io/File;

    .line 80
    sget-object v1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    iput-object v1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_recordingStatus:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    const-wide/16 v1, 0x0

    .line 81
    iput-wide v1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_duration:D

    .line 82
    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_filename:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_tempDir:Ljava/io/File;

    .line 85
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 86
    const-string v1, "VcRecordingSamplingRate"

    const v2, 0x462c4400    # 11025.0f

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_samplingRate:D

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_indexes:Ljava/util/HashMap;

    .line 91
    iget-wide v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_samplingRate:D

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/voice/audio/VcRecorder;->setupAudioSettings(D)V

    return-void
.end method

.method public static getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;
    .locals 1

    const/4 v0, 0x1

    .line 126
    invoke-static {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance(Z)Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedInstance(Z)Lcom/metamoji/media/voice/audio/VcRecorder;
    .locals 1

    .line 130
    sget-object v0, Lcom/metamoji/media/voice/audio/VcRecorder;->_instance:Lcom/metamoji/media/voice/audio/VcRecorder;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 131
    new-instance p0, Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-direct {p0}, Lcom/metamoji/media/voice/audio/VcRecorder;-><init>()V

    sput-object p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_instance:Lcom/metamoji/media/voice/audio/VcRecorder;

    .line 133
    :cond_0
    sget-object p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_instance:Lcom/metamoji/media/voice/audio/VcRecorder;

    return-object p0
.end method


# virtual methods
.method public beginInterruption(Lcom/metamoji/media/voice/audio/VcAudioSession;)V
    .locals 1

    .line 404
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_recordingStatus:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    sget-object v0, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    const-string p1, "MyInterruptionListenerCallback:beginInterruption"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 408
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_listener:Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;

    if-eqz p1, :cond_1

    .line 409
    invoke-interface {p1, p0}, Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;->recorderBeginInterruptionToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public deleteTempDir()V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_tempDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 455
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    const/4 v0, 0x0

    .line 456
    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_tempDir:Ljava/io/File;

    :cond_0
    return-void
.end method

.method disposeQueue()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_mic:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 431
    iput-object v1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_mic:Landroid/media/MediaRecorder;

    .line 440
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_output:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 442
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 444
    :goto_0
    iput-object v1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_output:Ljava/io/FileOutputStream;

    .line 445
    iput-object v1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_outputFile:Ljava/io/File;

    return-void
.end method

.method public endIndex(D)V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_index:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 384
    :cond_0
    const-string v1, "$endTime"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_index:Ljava/util/HashMap;

    const-string p2, "$id"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 386
    iget-object p2, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_indexes:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_index:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 388
    iput-object p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_index:Ljava/util/HashMap;

    return-void
.end method

.method public endInterruption(Lcom/metamoji/media/voice/audio/VcAudioSession;)V
    .locals 1

    .line 414
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_recordingStatus:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    sget-object v0, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    const-string p1, "MyInterruptionListenerCallback:endInterruption"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 418
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_listener:Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;

    if-eqz p1, :cond_1

    .line 419
    invoke-interface {p1, p0}, Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;->recorderEndInterruptionToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCurrentTime()D
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_recordingStatus:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    sget-object v1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne v0, v1, :cond_0

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_startTick:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v0, v2

    return-wide v0

    .line 276
    :cond_0
    iget-wide v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_duration:D

    return-wide v0
.end method

.method public getDuration()D
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_duration:D

    return-wide v0
.end method

.method getEncodingBitRate(D)I
    .locals 2

    const-wide v0, 0x40e5888000000000L    # 44100.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x11940

    return p1

    :cond_0
    const-wide v0, 0x40d5888000000000L    # 22050.0

    cmpl-double p1, p1, v0

    if-nez p1, :cond_1

    const/16 p1, 0x6978

    return p1

    :cond_1
    const/16 p1, 0x2fa8

    return p1
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_filename:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_indexes:Ljava/util/HashMap;

    return-object v0
.end method

.method public getListener()Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_listener:Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;

    return-object v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_pageId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_recordingStatus:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    return-object v0
.end method

.method public getSamplingRate()D
    .locals 2

    .line 393
    iget-wide v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_samplingRate:D

    return-wide v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_startDate:Ljava/util/Date;

    return-object v0
.end method

.method public getTempDir()Ljava/io/File;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_tempDir:Ljava/io/File;

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_ticket:Ljava/lang/String;

    return-object v0
.end method

.method initMic()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_mic:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 96
    iget-wide v1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_samplingRate:D

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 97
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_mic:Landroid/media/MediaRecorder;

    iget-wide v1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_samplingRate:D

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/media/voice/audio/VcRecorder;->getEncodingBitRate(D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    return-void

    .line 101
    :cond_0
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_mic:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 106
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_mic:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 107
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_mic:Landroid/media/MediaRecorder;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 108
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_mic:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 109
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_mic:Landroid/media/MediaRecorder;

    iget-wide v1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_samplingRate:D

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 110
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_mic:Landroid/media/MediaRecorder;

    iget-wide v1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_samplingRate:D

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/media/voice/audio/VcRecorder;->getEncodingBitRate(D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    return-void
.end method

.method public isIndexStarted()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_index:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public prepareToRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 154
    iput-object p2, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_ticket:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_pageId:Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_filename:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 158
    iput-wide p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_duration:D

    .line 159
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcAudioSession;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcAudioSession;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lcom/metamoji/media/voice/audio/VcAudioSession;->isInitialized()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 163
    :cond_0
    invoke-virtual {p1, p0}, Lcom/metamoji/media/voice/audio/VcAudioSession;->setListener(Lcom/metamoji/media/voice/audio/VcAudioSession$IVcAudioSessionInterruptionListener;)V

    .line 184
    :try_start_0
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_tempDir:Ljava/io/File;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 185
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object p2

    const-string v0, "recording"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_tempDir:Ljava/io/File;

    .line 186
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 187
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_tempDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 188
    iput-object p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_tempDir:Ljava/io/File;

    return p3

    .line 194
    :cond_2
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_tempDir:Ljava/io/File;

    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_filename:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 196
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 198
    :cond_3
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_output:Ljava/io/FileOutputStream;

    .line 199
    iput-object p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_outputFile:Ljava/io/File;

    .line 202
    invoke-virtual {p0}, Lcom/metamoji/media/voice/audio/VcRecorder;->initMic()V

    .line 209
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_mic:Landroid/media/MediaRecorder;

    iget-object p2, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_output:Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 210
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_mic:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_listener:Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;

    if-eqz p1, :cond_4

    .line 240
    invoke-interface {p1, p0}, Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;->recorderWasReadyToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V

    :cond_4
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 234
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 235
    sget p1, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_Error_FailedToRecord:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/media/voice/VcUtil$VcResultCheck;->showError(Ljava/lang/String;)V

    return p3
.end method

.method public record()Z
    .locals 2

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_indexes:Ljava/util/HashMap;

    .line 252
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_startDate:Ljava/util/Date;

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_mic:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    sget-object v0, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_recordingStatus:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_startTick:J

    .line 266
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_listener:Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0, p0}, Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;->recorderStartedToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 259
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 260
    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_Error_FailedToRecord:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/media/voice/VcUtil$VcResultCheck;->showError(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public resetMic()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_mic:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_mic:Landroid/media/MediaRecorder;

    :cond_0
    return-void
.end method

.method public setListener(Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_listener:Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;

    return-void
.end method

.method public setSamplingRate(D)V
    .locals 0

    .line 396
    iput-wide p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_samplingRate:D

    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/voice/audio/VcRecorder;->setupAudioSettings(D)V

    return-void
.end method

.method setupAudioSettings(D)V
    .locals 0

    return-void
.end method

.method public startIndex(Ljava/lang/String;DLjava/lang/String;)V
    .locals 6

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    move-object v0, p1

    move-wide v1, p2

    move-object v5, p4

    .line 370
    invoke-static/range {v0 .. v5}, Lcom/metamoji/media/voice/VcUtil;->createIndex(Ljava/lang/String;DDLjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_index:Ljava/util/HashMap;

    return-void
.end method

.method public stop()Z
    .locals 1

    const/4 v0, 0x1

    .line 285
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->stop(Z)Z

    move-result v0

    return v0
.end method

.method stop(Z)Z
    .locals 10

    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_listener:Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;

    if-eqz v0, :cond_0

    .line 300
    invoke-interface {v0, p0}, Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;->recorderStoppingToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V

    :cond_0
    const/4 v0, 0x0

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_mic:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 307
    iget-object v1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_outputFile:Ljava/io/File;

    invoke-static {v1}, Lcom/metamoji/media/voice/VcUtil;->getDuration(Ljava/io/File;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_duration:D
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    iget-object v1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_outputFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_outputFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 314
    :cond_1
    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_filename:Ljava/lang/String;

    .line 322
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/audio/VcRecorder;->disposeQueue()V

    .line 323
    sget-object v1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    iput-object v1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_recordingStatus:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    .line 326
    iget-wide v1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_duration:D

    .line 327
    iget-object v3, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_indexes:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 329
    iget-object v5, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_indexes:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 330
    const-string v5, "$endTime"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    .line 332
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 336
    :cond_3
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcAudioSession;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcAudioSession;

    move-result-object v1

    .line 337
    invoke-virtual {v1, v0}, Lcom/metamoji/media/voice/audio/VcAudioSession;->setListener(Lcom/metamoji/media/voice/audio/VcAudioSession$IVcAudioSessionInterruptionListener;)V

    if-eqz p1, :cond_4

    .line 343
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcRecorder;->_listener:Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;

    if-eqz p1, :cond_4

    .line 344
    invoke-interface {p1, p0}, Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;->recorderStoppedToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public stopForce()Z
    .locals 1

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->stop(Z)Z

    move-result v0

    return v0
.end method
