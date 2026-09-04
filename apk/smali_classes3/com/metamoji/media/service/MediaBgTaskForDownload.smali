.class public Lcom/metamoji/media/service/MediaBgTaskForDownload;
.super Lcom/metamoji/media/service/MediaBgTask;
.source "MediaBgTaskForDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/service/MediaBgTaskForDownload$IMediaBgTaskForDownloadCompleteAction;
    }
.end annotation


# instance fields
.field private _completeAction:Lcom/metamoji/media/service/MediaBgTaskForDownload$IMediaBgTaskForDownloadCompleteAction;

.field private _downloadFile:Ljava/io/File;

.field private _url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;ZLcom/metamoji/media/service/MediaBgTaskForDownload$IMediaBgTaskForDownloadCompleteAction;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/metamoji/media/service/MediaBgTask;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;)V

    .line 34
    iput-object p3, p0, Lcom/metamoji/media/service/MediaBgTaskForDownload;->_completeAction:Lcom/metamoji/media/service/MediaBgTaskForDownload$IMediaBgTaskForDownloadCompleteAction;

    .line 35
    iput-boolean p2, p0, Lcom/metamoji/media/service/MediaBgTaskForDownload;->_displayWaitView:Z

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForDownload;->_url:Ljava/lang/String;

    return-object v0
.end method

.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 1

    .line 106
    invoke-super {p0, p1, p2}, Lcom/metamoji/media/service/MediaBgTask;->onCompleted(ZLjava/lang/Throwable;)V

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForDownload;->_completeAction:Lcom/metamoji/media/service/MediaBgTaskForDownload$IMediaBgTaskForDownloadCompleteAction;

    iget-object p2, p0, Lcom/metamoji/media/service/MediaBgTaskForDownload;->_downloadFile:Ljava/io/File;

    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForDownload;->isCancelled()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/metamoji/media/service/MediaBgTaskForDownload$IMediaBgTaskForDownloadCompleteAction;->action(Ljava/io/File;Z)V

    :cond_0
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForDownload;->_url:Ljava/lang/String;

    return-void
.end method

.method protected taskExec()V
    .locals 9

    .line 44
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForDownload;->_url:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 49
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/media/service/MediaBgTaskForDownload;->_displayWaitView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForDownload;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 51
    sget v2, Lcom/metamoji/noteanytime/R$string;->Now_Downloading:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForDownload;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_4

    .line 61
    :cond_2
    new-instance v2, Lcom/metamoji/media/service/MediaDownload;

    invoke-direct {v2, p0}, Lcom/metamoji/media/service/MediaDownload;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    .line 62
    iget-object v3, p0, Lcom/metamoji/media/service/MediaBgTaskForDownload;->_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/media/service/MediaDownload;->setUrl(Ljava/lang/String;)V

    move v3, v1

    :goto_0
    const/4 v4, 0x0

    .line 67
    :try_start_0
    invoke-virtual {v2}, Lcom/metamoji/media/service/MediaDownload;->downloadFileFromRequest()Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lcom/metamoji/media/service/MediaBgTaskForDownload;->_downloadFile:Ljava/io/File;

    .line 69
    invoke-virtual {v2}, Lcom/metamoji/media/service/MediaDownload;->isForbidden()Z

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v1, :cond_4

    .line 70
    iput-object v6, p0, Lcom/metamoji/media/service/MediaBgTaskForDownload;->_downloadFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v3, v1, :cond_4

    .line 73
    :try_start_1
    invoke-static {v0}, Lcom/metamoji/media/service/MediaBgTaskForDownload;->login(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v3, v1, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v3

    move v5, v4

    goto :goto_2

    .line 78
    :cond_4
    :goto_1
    :try_start_2
    iget-object v5, v2, Lcom/metamoji/media/service/MediaDownload;->m_mimeType:Ljava/lang/String;

    const-string v7, "audio/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 79
    iput-object v6, p0, Lcom/metamoji/media/service/MediaBgTaskForDownload;->_downloadFile:Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForDownload;->_downloadFile:Ljava/io/File;

    if-nez v0, :cond_7

    .line 93
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForDownload;->cancel()Z

    return-void

    :catch_1
    move-exception v5

    move-object v8, v5

    move v5, v3

    move-object v3, v8

    :goto_2
    if-ne v5, v1, :cond_6

    .line 83
    invoke-virtual {v2}, Lcom/metamoji/media/service/MediaDownload;->isForbidden()Z

    move-result v5

    if-ne v5, v1, :cond_6

    .line 85
    invoke-static {v0}, Lcom/metamoji/media/service/MediaBgTaskForDownload;->login(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    move-result v5

    if-ne v5, v1, :cond_6

    :goto_3
    move v3, v4

    goto :goto_0

    .line 89
    :cond_6
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Store_Msg_Download_Failed:I

    invoke-static {v3, v0}, Lcom/metamoji/media/service/MediaServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method
