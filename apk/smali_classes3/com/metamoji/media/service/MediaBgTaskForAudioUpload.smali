.class public Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;
.super Lcom/metamoji/media/service/MediaBgTask;
.source "MediaBgTaskForAudioUpload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/service/MediaBgTaskForAudioUpload$IMediaBgTaskForAudioUploadCompleteAction;
    }
.end annotation


# instance fields
.field private _completeAction:Lcom/metamoji/media/service/MediaBgTaskForAudioUpload$IMediaBgTaskForAudioUploadCompleteAction;

.field private _recordId:Ljava/lang/String;

.field private _shareFile:Ljava/lang/String;

.field _statusCode:I

.field private _ticket:Ljava/lang/String;

.field private _url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForAudioUpload$IMediaBgTaskForAudioUploadCompleteAction;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/metamoji/media/service/MediaBgTask;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;)V

    .line 39
    iput-object p2, p0, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->_completeAction:Lcom/metamoji/media/service/MediaBgTaskForAudioUpload$IMediaBgTaskForAudioUploadCompleteAction;

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->_statusCode:I

    return-void
.end method


# virtual methods
.method public getRecordId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->_recordId:Ljava/lang/String;

    return-object v0
.end method

.method public getShareFile()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->_shareFile:Ljava/lang/String;

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->_ticket:Ljava/lang/String;

    return-object v0
.end method

.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 1

    .line 112
    invoke-super {p0, p1, p2}, Lcom/metamoji/media/service/MediaBgTask;->onCompleted(ZLjava/lang/Throwable;)V

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->_completeAction:Lcom/metamoji/media/service/MediaBgTaskForAudioUpload$IMediaBgTaskForAudioUploadCompleteAction;

    iget p2, p0, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->_statusCode:I

    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->_ticket:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload$IMediaBgTaskForAudioUploadCompleteAction;->action(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setRecordId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->_recordId:Ljava/lang/String;

    return-void
.end method

.method public setShareFile(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->_shareFile:Ljava/lang/String;

    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->_ticket:Ljava/lang/String;

    return-void
.end method

.method protected taskExec()V
    .locals 6

    .line 49
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->_shareFile:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 54
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->_displayWaitView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 56
    sget v2, Lcom/metamoji/noteanytime/R$string;->PostGallery_Requesting:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 60
    :cond_1
    new-instance v0, Lcom/metamoji/media/service/MediaUpload;

    invoke-direct {v0, p0}, Lcom/metamoji/media/service/MediaUpload;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    .line 61
    iget-object v2, p0, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->_shareFile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/service/MediaUpload;->setShareFile(Ljava/lang/String;)V

    .line 62
    iget-object v2, p0, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->_recordId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/service/MediaUpload;->setTargetId(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 63
    invoke-virtual {v0, v2}, Lcom/metamoji/media/service/MediaUpload;->setIsMediaId(Z)V

    .line 67
    :try_start_0
    invoke-virtual {v0}, Lcom/metamoji/media/service/MediaUpload;->responseStringFromRequest()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    goto :goto_0

    .line 86
    :cond_2
    const-string v3, "[MMJMediaBgTaskForAudioUpload] response\n%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    const-string v3, "\r\n|\r|\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 90
    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_4

    array-length v4, v3

    sub-int/2addr v4, v5

    aget-object v4, v3, v4

    const-string v5, "finish"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 94
    :cond_3
    array-length v4, v3

    sub-int/2addr v4, v1

    aget-object v1, v3, v4

    const/16 v3, 0x2c

    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 97
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->_statusCode:I

    if-eqz v1, :cond_4

    .line 102
    sget v1, Lcom/metamoji/noteanytime/R$string;->PostGallery_Msg_Failed:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s\n(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 70
    sget v1, Lcom/metamoji/noteanytime/R$string;->PostGallery_Msg_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/media/service/MediaServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
