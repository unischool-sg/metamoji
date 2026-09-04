.class public Lcom/metamoji/media/MediaUtil;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/MediaUtil$MediaResultCheck;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static baseURLForEditIt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 286
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo$BuildOptions;->DIGITAL_CABINET_URL_BASE()Ljava/lang/String;

    move-result-object v0

    .line 289
    sget-boolean v1, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v1, :cond_1

    .line 290
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 291
    const-string v1, "DevEditItServer"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 294
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->dcServerURL()Ljava/lang/String;

    move-result-object v0

    .line 298
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 299
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 301
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static busyOperationQueue()Z
    .locals 1

    .line 237
    invoke-static {}, Lcom/metamoji/media/service/MediaBgTask;->isBusy()Z

    move-result v0

    return v0
.end method

.method public static clearOldCacheFiles(Ljava/io/File;)V
    .locals 3

    .line 208
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 215
    iget v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    .line 218
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, -0x5a

    .line 219
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 222
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 223
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 224
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static createCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static downloadSoundFile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;)V
    .locals 1

    .line 127
    new-instance v0, Lcom/metamoji/media/MediaUtil$2;

    invoke-direct {v0, p4, p3}, Lcom/metamoji/media/MediaUtil$2;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;Ljava/lang/String;)V

    .line 161
    new-instance p3, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;

    sget-object p4, Lcom/metamoji/media/service/MediaBgTask$IMediaAction;->NOP:Lcom/metamoji/media/service/MediaBgTask$IMediaAction;

    invoke-direct {p3, p4, v0}, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile$IMediaBgTaskForGetMediaFileCompleteAction;)V

    .line 162
    iput-object p1, p3, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->targetId:Ljava/lang/String;

    .line 163
    iput-boolean p2, p3, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->isMediaId:Z

    .line 164
    iput-object p0, p3, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->url:Ljava/lang/String;

    .line 166
    invoke-virtual {p3}, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->doInBackground()V

    return-void
.end method

.method public static downloadSoundFileSync(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 5

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 79
    new-instance v1, Lcom/metamoji/cm/ResetableEvent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/metamoji/cm/ResetableEvent;-><init>(ZZ)V

    .line 80
    invoke-virtual {v1}, Lcom/metamoji/cm/ResetableEvent;->reset()V

    .line 82
    new-instance v4, Lcom/metamoji/media/MediaUtil$1;

    invoke-direct {v4, v0, v1}, Lcom/metamoji/media/MediaUtil$1;-><init>(Ljava/util/List;Lcom/metamoji/cm/ResetableEvent;)V

    invoke-static {p0, p1, p2, p3, v4}, Lcom/metamoji/media/MediaUtil;->downloadSoundFile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;)V

    .line 104
    :try_start_0
    invoke-virtual {v1}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 110
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    return v3
.end method

.method public static formattedDateStringFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 255
    invoke-static {p0}, Lcom/metamoji/cm/TimeUtils;->getDateTimeText(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formattedTimeStringFromTime(D)Ljava/lang/String;
    .locals 3

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    div-double v0, p0, v0

    double-to-int v0, v0

    mul-int/lit8 v1, v0, 0x3c

    int-to-double v1, v1

    sub-double/2addr p0, v1

    double-to-int p0, p0

    .line 266
    div-int/lit8 p1, v0, 0x3c

    .line 267
    rem-int/lit8 v0, v0, 0x3c

    .line 268
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02d:%02d:%02d"

    invoke-static {v1, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLoginPassword(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 384
    iget-object p0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    return-object p0

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 387
    iget-object p0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    return-object p0

    .line 389
    :cond_2
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 390
    iget-object p0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    return-object p0

    .line 392
    :cond_3
    iget-boolean v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autologin:Z

    if-eqz v1, :cond_4

    .line 393
    iget-object p0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    return-object p0

    :cond_4
    return-object v0
.end method

.method public static getPasswordParamName(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    const-string v2, "qwd"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    return-object v2

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    const-string v3, "password"

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    return-object v3

    .line 407
    :cond_2
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    return-object v2

    .line 410
    :cond_3
    iget-boolean p0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autologin:Z

    if-eqz p0, :cond_4

    return-object v3

    :cond_4
    return-object v0
.end method

.method public static isOnPremise()Z
    .locals 1

    .line 456
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 458
    iget-boolean v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    return v0
.end method

.method public static makeRecorderName()Ljava/lang/String;
    .locals 2

    .line 176
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 178
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 182
    :cond_1
    :goto_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getInstance()Lcom/metamoji/ns/NsCollaboDeviceInfo;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 186
    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public static makeTicket()Ljava/lang/String;
    .locals 2

    .line 277
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mimeTypeFromFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 321
    invoke-static {p0}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static openMediaListDialog(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 339
    invoke-static {p0, v0}, Lcom/metamoji/media/MediaUtil;->openMediaListDialog(ZLcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    return-void
.end method

.method public static openMediaListDialog(ZLcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V
    .locals 2

    .line 343
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 345
    iget v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    sget p0, Lcom/metamoji/noteanytime/R$string;->Voice_UploadedFiles_Title:I

    invoke-static {p0}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->showOfflineMsg(I)V

    return-void

    .line 356
    :cond_1
    new-instance v0, Lcom/metamoji/media/MediaUtil$4;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/MediaUtil$4;-><init>(ZLcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 375
    new-instance p0, Lcom/metamoji/media/service/MediaBgTaskForGetList;

    sget-object p1, Lcom/metamoji/media/service/MediaBgTask$IMediaAction;->NOP:Lcom/metamoji/media/service/MediaBgTask$IMediaAction;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/media/service/MediaBgTaskForGetList;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForGetList$IMediaBgTaskForGetListCompleteAction;)V

    .line 376
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForGetList;->doInBackground()V

    return-void

    .line 347
    :cond_2
    :goto_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJID_MSG_NOT_REGIST_CABINETUSER_FOR_CREATESHARENOTE:I

    invoke-static {p0}, Lcom/metamoji/ns/NsCollaboUtils;->showCabinetUserRegistrationMessage(I)V

    return-void
.end method

.method public static processInhibitMediaServerUploadedFiles()Z
    .locals 2

    .line 422
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 425
    iget v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static registUploadRequiredMedias(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object v0

    .line 61
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 62
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 63
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 64
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    .line 65
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    move-object v6, p1

    move-object v5, p2

    .line 71
    invoke-virtual/range {v0 .. v9}, Lcom/metamoji/media/MediaUploadManager2;->registFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static removeMedia(Ljava/util/List;ZZLcom/metamoji/media/service/MediaBgTaskForDelete$IMediaBgTaskForDeleteCompleteAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/metamoji/media/service/MediaBgTaskForDelete$IMediaBgTaskForDeleteCompleteAction;",
            ")V"
        }
    .end annotation

    .line 439
    new-instance v0, Lcom/metamoji/media/service/MediaBgTaskForDelete;

    sget-object v1, Lcom/metamoji/media/service/MediaBgTask$IMediaAction;->NOP:Lcom/metamoji/media/service/MediaBgTask$IMediaAction;

    invoke-direct {v0, v1, p3}, Lcom/metamoji/media/service/MediaBgTaskForDelete;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForDelete$IMediaBgTaskForDeleteCompleteAction;)V

    .line 440
    invoke-virtual {v0, p0}, Lcom/metamoji/media/service/MediaBgTaskForDelete;->setTargetIds(Ljava/util/List;)V

    .line 441
    invoke-virtual {v0, p1}, Lcom/metamoji/media/service/MediaBgTaskForDelete;->setIsMediaId(Z)V

    .line 442
    invoke-virtual {v0, p2}, Lcom/metamoji/media/service/MediaBgTaskForDelete;->setDisplayWaitView(Z)V

    .line 444
    invoke-virtual {v0}, Lcom/metamoji/media/service/MediaBgTaskForDelete;->doInBackground()V

    return-void
.end method

.method public static showMessage(Ljava/lang/String;)V
    .locals 2

    .line 329
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/MediaUtil$3;

    invoke-direct {v1, p0}, Lcom/metamoji/media/MediaUtil$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static titleOnMediaServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x9

    const/16 v1, 0x20

    .line 199
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s\t%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static waitOperationQueue()V
    .locals 0

    .line 245
    invoke-static {}, Lcom/metamoji/media/service/MediaBgTask;->waitJobs()V

    return-void
.end method
