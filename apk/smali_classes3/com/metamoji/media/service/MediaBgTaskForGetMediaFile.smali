.class public Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;
.super Lcom/metamoji/media/service/MediaBgTask;
.source "MediaBgTaskForGetMediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile$IMediaBgTaskForGetMediaFileCompleteAction;
    }
.end annotation


# instance fields
.field private _completeAction:Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile$IMediaBgTaskForGetMediaFileCompleteAction;

.field private _downloadFile:Ljava/io/File;

.field public isMediaId:Z

.field public targetId:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile$IMediaBgTaskForGetMediaFileCompleteAction;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/metamoji/media/service/MediaBgTask;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;)V

    .line 26
    iput-object p2, p0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->_completeAction:Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile$IMediaBgTaskForGetMediaFileCompleteAction;

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->_displayWaitView:Z

    return-void
.end method


# virtual methods
.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 1

    .line 109
    invoke-super {p0, p1, p2}, Lcom/metamoji/media/service/MediaBgTask;->onCompleted(ZLjava/lang/Throwable;)V

    .line 111
    iget-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->_completeAction:Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile$IMediaBgTaskForGetMediaFileCompleteAction;

    iget-object p2, p0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->_downloadFile:Ljava/io/File;

    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->isCancelled()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile$IMediaBgTaskForGetMediaFileCompleteAction;->action(Ljava/io/File;Z)V

    return-void
.end method

.method protected taskExec()V
    .locals 8

    .line 36
    const-string v0, "audio/"

    iget-boolean v1, p0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->_displayWaitView:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v1

    .line 38
    sget v3, Lcom/metamoji/noteanytime/R$string;->Now_Downloading:I

    invoke-virtual {v1, v3}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    .line 39
    invoke-virtual {v1, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 48
    :cond_1
    new-instance v3, Lcom/metamoji/media/service/MediaGetMediaFile;

    invoke-direct {v3, p0}, Lcom/metamoji/media/service/MediaGetMediaFile;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    .line 49
    iget-object v4, p0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->targetId:Ljava/lang/String;

    iput-object v4, v3, Lcom/metamoji/media/service/MediaGetMediaFile;->targetId:Ljava/lang/String;

    .line 50
    iget-boolean v4, p0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->isMediaId:Z

    iput-boolean v4, v3, Lcom/metamoji/media/service/MediaGetMediaFile;->isMediaId:Z

    move v4, v2

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 55
    :try_start_0
    invoke-virtual {v3}, Lcom/metamoji/media/service/MediaGetMediaFile;->downloadFileFromRequest()Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->_downloadFile:Ljava/io/File;

    .line 57
    invoke-virtual {v3}, Lcom/metamoji/media/service/MediaGetMediaFile;->isForbidden()Z

    move-result v7

    if-ne v7, v2, :cond_3

    .line 58
    iput-object v6, p0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->_downloadFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v4, v2, :cond_3

    .line 61
    :try_start_1
    invoke-static {v1}, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->login(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v4, v2, :cond_2

    goto :goto_3

    :cond_2
    move v4, v5

    goto :goto_1

    :catch_0
    move v4, v5

    goto :goto_2

    .line 66
    :cond_3
    :goto_1
    :try_start_2
    iget-object v7, v3, Lcom/metamoji/media/service/MediaGetMediaFile;->m_mimeType:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 67
    iput-object v6, p0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->_downloadFile:Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    :goto_2
    if-ne v4, v2, :cond_4

    .line 71
    invoke-virtual {v3}, Lcom/metamoji/media/service/MediaGetMediaFile;->isForbidden()Z

    move-result v4

    if-ne v4, v2, :cond_4

    .line 73
    invoke-static {v1}, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->login(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    move-result v4

    if-ne v4, v2, :cond_4

    :goto_3
    move v4, v5

    goto :goto_0

    .line 82
    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->_downloadFile:Ljava/io/File;

    if-nez v1, :cond_6

    .line 84
    new-instance v1, Lcom/metamoji/media/service/MediaDownload;

    invoke-direct {v1, p0}, Lcom/metamoji/media/service/MediaDownload;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    .line 85
    iget-object v3, p0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/metamoji/media/service/MediaDownload;->setUrl(Ljava/lang/String;)V

    .line 88
    :try_start_3
    invoke-virtual {v1}, Lcom/metamoji/media/service/MediaDownload;->downloadFileFromRequest()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->_downloadFile:Ljava/io/File;

    .line 90
    invoke-virtual {v1}, Lcom/metamoji/media/service/MediaDownload;->isForbidden()Z

    move-result v3

    if-ne v3, v2, :cond_5

    .line 91
    iput-object v6, p0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->_downloadFile:Ljava/io/File;

    .line 93
    :cond_5
    iget-object v1, v1, Lcom/metamoji/media/service/MediaDownload;->m_mimeType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 94
    iput-object v6, p0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->_downloadFile:Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 97
    sget v1, Lcom/metamoji/noteanytime/R$string;->Library_Store_Msg_Download_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/media/service/MediaServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    :cond_6
    :goto_5
    return-void
.end method
