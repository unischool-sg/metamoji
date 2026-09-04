.class public Lcom/metamoji/dvm/DvmUtil;
.super Ljava/lang/Object;
.source "DvmUtil.java"


# static fields
.field private static final OPERATION_LOGFILE:Ljava/lang/String; = "op.log"

.field private static final SEND_OPERATION_LOGFILE:Ljava/lang/String; = "send_op.log"

.field private static lockForLogOperation:Ljava/util/concurrent/Semaphore;

.field private static lockForSendLogOperation:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/metamoji/dvm/DvmUtil;->lockForLogOperation:Ljava/util/concurrent/Semaphore;

    .line 71
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/metamoji/dvm/DvmUtil;->lockForSendLogOperation:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 115
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getDriveID()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {v1, p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->succeeded()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 122
    const-string p1, "DvmUtil.closeDocument"

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method

.method public static createLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;
    .locals 4

    if-nez p0, :cond_0

    .line 1087
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object p0

    .line 1088
    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getCurrentPrivateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getDocumentManagerByPrivateId(Ljava/lang/String;)Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    move-result-object p0

    .line 1091
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/sd/cs/SdCloudService;->getContext()Lcom/metamoji/sd/cs/SdCloudServiceContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getDriveId()Ljava/lang/String;

    move-result-object p0

    .line 1095
    :cond_0
    new-instance v0, Lcom/metamoji/sd/SdValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    if-nez p0, :cond_1

    .line 1098
    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsInvalidError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    .line 1101
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1102
    new-instance v2, Lcom/metamoji/cs/dc/params/CsCreateLinkParam;

    invoke-direct {v2}, Lcom/metamoji/cs/dc/params/CsCreateLinkParam;-><init>()V

    .line 1103
    iput-object p0, v2, Lcom/metamoji/cs/dc/params/CsCreateLinkParam;->driveId:Ljava/lang/String;

    .line 1104
    iput-object p1, v2, Lcom/metamoji/cs/dc/params/CsCreateLinkParam;->docId:Ljava/lang/String;

    .line 1105
    iput-object p2, v2, Lcom/metamoji/cs/dc/params/CsCreateLinkParam;->pageId:Ljava/lang/String;

    .line 1106
    invoke-static {v2}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;

    if-eqz p0, :cond_6

    .line 1108
    iget p1, p0, Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;->errorCode:I

    if-nez p1, :cond_2

    .line 1109
    new-instance p1, Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;

    invoke-direct {p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;-><init>()V

    new-instance p2, Lcom/metamoji/dvm/DvmUtil$2;

    invoke-direct {p2, p0}, Lcom/metamoji/dvm/DvmUtil$2;-><init>(Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;->initWithDictionary(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;

    goto :goto_0

    .line 1116
    :cond_2
    iget p1, p0, Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;->errorCode:I

    new-instance p2, Lcom/metamoji/dvm/DvmUtil$3;

    invoke-direct {p2, v0}, Lcom/metamoji/dvm/DvmUtil$3;-><init>(Lcom/metamoji/sd/SdValue;)V

    invoke-static {p1, p2}, Lcom/metamoji/dvm/DvmUtil;->isLoginErrorCode(ILcom/metamoji/sd/SdParameterizedBlock;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1123
    iget p0, p0, Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;->errorCode:I

    const/16 p1, -0x64

    if-eq p0, p1, :cond_5

    const/16 p1, 0x6a

    if-eq p0, p1, :cond_4

    const/16 p1, 0xa3

    if-eq p0, p1, :cond_3

    .line 1134
    new-instance p0, Lcom/metamoji/sd/SdError;

    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->ServerError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p0, p1}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1125
    :cond_3
    new-instance p0, Lcom/metamoji/sd/SdError;

    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsInvalidError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p0, p1}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1128
    :cond_4
    new-instance p0, Lcom/metamoji/sd/SdError;

    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->NotLoginError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p0, p1}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1131
    :cond_5
    new-instance p0, Lcom/metamoji/sd/SdError;

    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->NetworkError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p0, p1}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1140
    :cond_6
    new-instance p0, Lcom/metamoji/sd/SdError;

    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p0, p1}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    .line 1144
    :cond_7
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 1145
    new-instance p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;

    invoke-direct {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;->initWithErrorInfo(Lcom/metamoji/sd/SdError;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithLink;

    return-object p0

    :cond_8
    return-object v1
.end method

.method public static deleteDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 172
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->deleteDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    :cond_1
    :goto_0
    return-void
.end method

.method public static deleteFolder(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 1

    .line 220
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->deleteFolder(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static doInitMetaData(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;)V
    .locals 0

    .line 349
    :try_start_0
    invoke-static {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->doInitMetaData(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 351
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static editCopiedDocument(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/IDvmDocumentEditor;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 235
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 239
    :cond_1
    invoke-static {p0, p1}, Lcom/metamoji/dvm/DvmUtil;->getDocumentContents(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 240
    invoke-virtual {v1, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->editCopiedDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object p0

    .line 241
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static editDocument(Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/IDvmDocumentEditor;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 97
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->editDocument(Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static existsFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 802
    invoke-static {p0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 804
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->existsFolder(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static existsOperationLog()Z
    .locals 4

    .line 920
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v0

    .line 921
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getCurrentPrivateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdPrivateDriveManager;->getDocumentManagerByPrivateId(Ljava/lang/String;)Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    move-result-object v0

    .line 922
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->logDirForOperation()Ljava/lang/String;

    move-result-object v0

    .line 923
    new-instance v1, Ljava/io/File;

    const-string v2, "op.log"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    new-instance v2, Ljava/io/File;

    const-string v3, "send_op.log"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static getContentsUpdate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 603
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 605
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 607
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsUpdate()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getDocTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 586
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 588
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 590
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getDocumentContents(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 301
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmUtil;->isBackgroundThread()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 304
    :cond_1
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 306
    new-instance v1, Lcom/metamoji/sd/cs/SdRequestCanceller;

    invoke-direct {v1}, Lcom/metamoji/sd/cs/SdRequestCanceller;-><init>()V

    invoke-virtual {p0, p1, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;

    move-result-object p0

    .line 307
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;->succeeded()Z

    move-result p1

    if-nez p1, :cond_2

    .line 308
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showDvmError(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public static getDocumentIconImageFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 634
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 636
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIconImageFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getPrivateDrive()Ljava/lang/String;
    .locals 1

    .line 444
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 448
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getServerDriveId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoomId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 658
    invoke-static {p0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 660
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getRoomId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShareDoc(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 740
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 741
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 742
    new-instance v2, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    invoke-direct {v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;-><init>()V

    .line 743
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 745
    invoke-virtual {v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveAll()Ljava/util/List;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 747
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 748
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 749
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v1

    .line 750
    invoke-static {p0, p1, v1}, Lcom/metamoji/dvm/DvmUtil;->getShareDocFromDrive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 752
    const-string p0, "docId"

    invoke-interface {p2, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 754
    const-string p0, "driveId"

    invoke-interface {p2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p2

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShareDocFromDrive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 773
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p2

    .line 774
    invoke-virtual {p2, p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIDsFromRoom(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 776
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 777
    invoke-virtual {p2, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTrashed()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShareDocInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 721
    invoke-static {p0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 725
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getRoomInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getTagList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 620
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 622
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static hasCache(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 790
    invoke-static {p0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 792
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 793
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasOfflineLayer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 566
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 569
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 571
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 573
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->hasOfflineLayer()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public static hasVoice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 552
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 554
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->hasVoice()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static importDocumentBinaryToStorage(Ljava/io/File;Ljava/util/List;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 334
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->importDocumentBinaryToStorage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;

    move-result-object p0

    .line 337
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->succeeded()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static isBackgroundThread()Z
    .locals 1

    .line 669
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBackgroundThread()Z

    move-result v0

    return v0
.end method

.method public static isCopiedShare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    .line 397
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 399
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isCopiedShare()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public static isHiddenDrive(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 649
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 650
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isHidden()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isInTrashOrDeleted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 362
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 364
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTrashed()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static isLink(Ljava/lang/String;)Z
    .locals 2

    .line 1236
    :try_start_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1237
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".mmjloc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLoginErrorCode(ILcom/metamoji/sd/SdParameterizedBlock;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/metamoji/sd/SdParameterizedBlock<",
            "Ljava/lang/Void;",
            "Lcom/metamoji/sd/SdError;",
            ">;)Z"
        }
    .end annotation

    const/16 v0, 0x67

    if-eq p0, v0, :cond_8

    const/16 v0, 0x68

    if-eq p0, v0, :cond_8

    const/16 v0, 0x6a

    if-eq p0, v0, :cond_8

    const/16 v0, 0x6d

    if-eq p0, v0, :cond_7

    const/16 v0, 0x72

    if-eq p0, v0, :cond_6

    const/16 v0, 0x75

    if-eq p0, v0, :cond_5

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_7

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_4

    const/16 v0, 0x9f

    if-eq p0, v0, :cond_3

    const/16 v0, 0xa5

    if-eq p0, v0, :cond_8

    const/16 v0, 0xa6

    if-eq p0, v0, :cond_8

    const/16 v0, 0xe4

    if-eq p0, v0, :cond_7

    const/16 v0, 0xe5

    if-eq p0, v0, :cond_2

    const/16 v0, 0xe8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 1306
    :pswitch_0
    sget-object p0, Lcom/metamoji/dvm/DvmErrCode;->SSOMMJUserNotAllowedError:Lcom/metamoji/dvm/DvmErrCode;

    goto :goto_0

    .line 1303
    :pswitch_1
    sget-object p0, Lcom/metamoji/dvm/DvmErrCode;->SSOUserNotAllowedError:Lcom/metamoji/dvm/DvmErrCode;

    goto :goto_0

    .line 1300
    :pswitch_2
    sget-object p0, Lcom/metamoji/dvm/DvmErrCode;->SSONotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    goto :goto_0

    .line 1297
    :pswitch_3
    sget-object p0, Lcom/metamoji/dvm/DvmErrCode;->SSOFailedLoginError:Lcom/metamoji/dvm/DvmErrCode;

    goto :goto_0

    .line 1292
    :pswitch_4
    sget-object p0, Lcom/metamoji/dvm/DvmErrCode;->SSOInvalidCompanyError:Lcom/metamoji/dvm/DvmErrCode;

    goto :goto_0

    .line 1273
    :cond_0
    sget-object p0, Lcom/metamoji/dvm/DvmErrCode;->InvalidIPAddressError:Lcom/metamoji/dvm/DvmErrCode;

    goto :goto_0

    .line 1270
    :cond_1
    sget-object p0, Lcom/metamoji/dvm/DvmErrCode;->InvalidDeviceIDError:Lcom/metamoji/dvm/DvmErrCode;

    goto :goto_0

    .line 1285
    :cond_2
    sget-object p0, Lcom/metamoji/dvm/DvmErrCode;->InvalidLicenseError:Lcom/metamoji/dvm/DvmErrCode;

    goto :goto_0

    .line 1288
    :cond_3
    sget-object p0, Lcom/metamoji/dvm/DvmErrCode;->LoginedUserLimitOverError:Lcom/metamoji/dvm/DvmErrCode;

    goto :goto_0

    .line 1276
    :cond_4
    sget-object p0, Lcom/metamoji/dvm/DvmErrCode;->UnavailableUserError:Lcom/metamoji/dvm/DvmErrCode;

    goto :goto_0

    .line 1282
    :cond_5
    sget-object p0, Lcom/metamoji/dvm/DvmErrCode;->UserAlreadyDeletedError:Lcom/metamoji/dvm/DvmErrCode;

    goto :goto_0

    .line 1279
    :cond_6
    sget-object p0, Lcom/metamoji/dvm/DvmErrCode;->LoginLimitError:Lcom/metamoji/dvm/DvmErrCode;

    goto :goto_0

    .line 1260
    :cond_7
    sget-object p0, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    goto :goto_0

    .line 1267
    :cond_8
    sget-object p0, Lcom/metamoji/dvm/DvmErrCode;->NotLoginError:Lcom/metamoji/dvm/DvmErrCode;

    :goto_0
    if-eqz p1, :cond_9

    .line 1313
    new-instance v0, Lcom/metamoji/sd/SdError;

    invoke-direct {v0, p0}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/sd/SdParameterizedBlock;->setArgument(Ljava/lang/Object;)V

    .line 1315
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/sd/SdParameterizedBlock;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1317
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_9
    :goto_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x10e
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isNewOpenDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 135
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 139
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->isNewOpenDocument(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isShare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 415
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 417
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p0

    .line 418
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsMimeType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "application/vnd.metamoji.model.atshare"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public static isShareNote(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 378
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 382
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 386
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsMimeType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isShare(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isTemplate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 430
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 432
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTemplate()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public static logOperation(ILjava/lang/String;)V
    .locals 6

    const-string v0, "["

    const-string v1, ",\n"

    .line 817
    :try_start_0
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v2

    .line 818
    invoke-virtual {v2}, Lcom/metamoji/sd/SdPrivateDriveManager;->getCurrentPrivateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdPrivateDriveManager;->getDocumentManagerByPrivateId(Ljava/lang/String;)Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    move-result-object v2

    .line 819
    invoke-virtual {v2}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->logDirForOperation()Ljava/lang/String;

    move-result-object v2

    .line 821
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 822
    const-string v4, "apiNo"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    const-string p0, "detail"

    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string p0, "date"

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lcom/metamoji/sd/SdUtils;->dateToTime(Ljava/util/Date;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    invoke-static {v3}, Lcom/metamoji/cm/CmJson;->createJsonFromMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    .line 827
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 829
    new-instance p1, Ljava/io/File;

    const-string v3, "op.log"

    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    sget-object v2, Lcom/metamoji/dvm/DvmUtil;->lockForLogOperation:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 835
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 836
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 837
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 838
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 840
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 841
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 842
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 843
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    :goto_0
    :try_start_2
    sget-object p0, Lcom/metamoji/dvm/DvmUtil;->lockForLogOperation:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/metamoji/dvm/DvmUtil;->lockForLogOperation:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 847
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 849
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static makeDocumentArchiveFile(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;
    .locals 16

    move-object/from16 v0, p1

    .line 940
    const-string v1, "tags"

    const-string v2, "title"

    const-string v3, ".tmp"

    .line 944
    invoke-static {}, Lcom/metamoji/sd/SdUtils;->getTempDir()Ljava/io/File;

    move-result-object v4

    .line 946
    :try_start_0
    const-string v6, "mmj.dvm.state."

    invoke-static {v6, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 947
    :try_start_1
    const-string v7, "mmj.dvm.archive."

    invoke-static {v7, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 949
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v8

    if-nez v8, :cond_2

    .line 952
    new-instance v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;-><init>()V

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;->initWithErrorInfo(Lcom/metamoji/sd/SdError;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v7, :cond_0

    .line 1062
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_0
    if-eqz v6, :cond_1

    .line 1066
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_1
    return-object v0

    .line 955
    :cond_2
    :try_start_3
    invoke-virtual {v8, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v9

    if-nez v9, :cond_5

    .line 958
    new-instance v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;-><init>()V

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;->initWithErrorInfo(Lcom/metamoji/sd/SdError;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v7, :cond_3

    .line 1062
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_3
    if-eqz v6, :cond_4

    .line 1066
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_4
    return-object v0

    .line 961
    :cond_5
    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v0, v10}, Lcom/metamoji/sd/SdDriveDocumentManager;->exportDocumentBinaryFromStorage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 962
    new-instance v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;-><init>()V

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;->initWithErrorInfo(Lcom/metamoji/sd/SdError;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v7, :cond_6

    .line 1062
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_6
    if-eqz v6, :cond_7

    .line 1066
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_7
    return-object v0

    .line 965
    :cond_8
    :try_start_5
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 972
    :try_start_6
    new-instance v10, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    invoke-direct {v10}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v11, 0x0

    move-object/from16 v12, p0

    .line 973
    :try_start_7
    invoke-interface {v10, v0, v12, v6, v11}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 975
    invoke-static {v8}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v12

    .line 978
    invoke-virtual {v9}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-string v14, ""

    if-eqz v0, :cond_9

    :try_start_8
    invoke-virtual {v9}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    move-object v0, v14

    :goto_0
    invoke-interface {v10, v2, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10, v1, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 982
    const-string v0, "create"

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v10, v0, v15}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 984
    const-string v0, "update"

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-interface {v10, v0, v12}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 986
    const-string v0, "protected"

    invoke-interface {v10, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 987
    const-string v12, "thumbnail"

    if-nez v0, :cond_a

    .line 988
    :try_start_9
    invoke-interface {v10, v12}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cm/Blob;

    if-eqz v0, :cond_a

    .line 990
    invoke-virtual {v0}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v0

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    .line 995
    :goto_1
    const-string v13, "collaboRoomId"

    invoke-interface {v10, v13}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 996
    const-string v15, "collaboCompanyId"

    invoke-interface {v10, v15}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 997
    const-string v5, "collaboLastSequence"

    invoke-interface {v10, v5}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v5}, Lcom/metamoji/sd/SdUtils;->numToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1001
    :try_start_a
    sget-object v11, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v10, v11}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    .line 1005
    const-string v10, "mmj.dvm.compact."

    invoke-static {v10, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1007
    :try_start_b
    new-instance v4, Lcom/metamoji/df/model/ModelManagerDataCompactor;

    invoke-direct {v4}, Lcom/metamoji/df/model/ModelManagerDataCompactor;-><init>()V

    .line 1008
    invoke-virtual {v4, v6, v3}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->compactDataFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1009
    new-instance v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;-><init>()V

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;->initWithErrorInfo(Lcom/metamoji/sd/SdError;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    if-eqz v3, :cond_b

    .line 1058
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_b
    if-eqz v7, :cond_c

    .line 1062
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_c
    if-eqz v6, :cond_d

    .line 1066
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_d
    return-object v0

    .line 1012
    :cond_e
    :try_start_c
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1014
    invoke-virtual {v9}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f

    invoke-virtual {v9}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_f
    move-object v10, v14

    :goto_2
    invoke-virtual {v4, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1015
    invoke-virtual {v4, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1016
    const-string v1, "contentsMimeType"

    invoke-virtual {v9}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1017
    const-string v1, "contentsCreate"

    invoke-static {v8}, Lcom/metamoji/sd/SdUtils;->dateToTime(Ljava/util/Date;)J

    move-result-wide v10

    invoke-virtual {v4, v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1018
    const-string v1, "contentsUpdate"

    invoke-static {v8}, Lcom/metamoji/sd/SdUtils;->dateToTime(Ljava/util/Date;)J

    move-result-wide v10

    invoke-virtual {v4, v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1019
    const-string v1, "contentsAttribute"

    invoke-virtual {v9}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsAttribute()I

    move-result v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1021
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    .line 1022
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    .line 1024
    const-string v2, "contentsCreateUserId"

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1027
    const-string v1, "contentsFileSize"

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v4, v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1030
    const-string v1, "roomId"

    if-eqz v13, :cond_10

    goto :goto_3

    :cond_10
    move-object v13, v14

    :goto_3
    invoke-virtual {v4, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1031
    const-string v1, "companyId"

    if-eqz v15, :cond_11

    goto :goto_4

    :cond_11
    move-object v15, v14

    :goto_4
    invoke-virtual {v4, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1032
    const-string v1, "lastSequence"

    if-eqz v5, :cond_12

    move-object v14, v5

    :cond_12
    invoke-virtual {v4, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1035
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 1038
    :try_start_d
    const-string v2, "meta.json"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v5}, Lcom/metamoji/sd/SdUtils;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    .line 1039
    const-string v2, "contents"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/metamoji/sd/SdUtils;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;I)V

    if-eqz v0, :cond_13

    .line 1041
    invoke-static {v1, v12, v0, v5}, Lcom/metamoji/sd/SdUtils;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1044
    :cond_13
    :try_start_e
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 1050
    :try_start_f
    new-instance v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;-><init>()V

    new-instance v1, Lcom/metamoji/dvm/DvmUtil$1;

    invoke-direct {v1, v7}, Lcom/metamoji/dvm/DvmUtil$1;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;->initWithDictionary(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v3, :cond_14

    .line 1058
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_14
    if-eqz v6, :cond_15

    .line 1066
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_15
    move-object v5, v0

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v5, v3

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    .line 1044
    :try_start_10
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1045
    throw v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :catch_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_16

    .line 1001
    :try_start_11
    sget-object v1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v10, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    .line 1003
    :cond_16
    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :catchall_4
    move-exception v0

    const/4 v5, 0x0

    goto :goto_a

    :catch_2
    move-exception v0

    const/4 v3, 0x0

    goto :goto_8

    :catchall_5
    move-exception v0

    const/4 v5, 0x0

    goto :goto_6

    :catch_3
    move-exception v0

    const/4 v3, 0x0

    goto :goto_7

    :catchall_6
    move-exception v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_6
    const/4 v7, 0x0

    goto :goto_a

    :catch_4
    move-exception v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_7
    const/4 v7, 0x0

    .line 1055
    :goto_8
    :try_start_12
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    if-eqz v3, :cond_17

    .line 1058
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_17
    if-eqz v7, :cond_18

    .line 1062
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_18
    if-eqz v6, :cond_19

    .line 1066
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_19
    const/4 v5, 0x0

    :goto_9
    if-nez v5, :cond_1a

    .line 1071
    new-instance v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;-><init>()V

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;->initWithErrorInfo(Lcom/metamoji/sd/SdError;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;

    :cond_1a
    return-object v5

    :catchall_7
    move-exception v0

    move-object v5, v3

    :goto_a
    if-eqz v5, :cond_1b

    .line 1058
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1b
    if-eqz v7, :cond_1c

    .line 1062
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_1c
    if-eqz v6, :cond_1d

    .line 1066
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1068
    :cond_1d
    throw v0
.end method

.method public static makeUserKeyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    .line 464
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 466
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 469
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\u00a5\u00a5"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static moveDocumentsToTrash(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 180
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v0, p2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->moveDocumentsToTrash(Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 187
    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v3

    .line 188
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 195
    const-string v4, "beforeTags = %s"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->setTagToDocument(Ljava/lang/String;Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object v3

    .line 198
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->succeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 200
    const-string v3, "afterTags = %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 209
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "[ %s ] : [ %s ] : %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x19d

    .line 210
    invoke-static {p1, p0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static newNoteTemplate(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;Z)Lcom/metamoji/dvm/fw/IDvmDocumentEditor;
    .locals 1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return-object p3

    .line 149
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p3

    .line 153
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->newNoteTemplateBasedOnNoteWithDocId(Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->succeeded()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 155
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->editDocument(Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object p0

    .line 156
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p3
.end method

.method public static openEditorForQuickEdit(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/IDvmDocumentEditor;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 258
    :cond_0
    invoke-static {p0, p1}, Lcom/metamoji/dvm/DvmUtil;->getDocumentContents(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 261
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->editDocument(Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object p0

    .line 262
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static quickViewDocument(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/IDvmDocumentEditor;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 280
    :cond_0
    invoke-static {p0, p1}, Lcom/metamoji/dvm/DvmUtil;->getDocumentContents(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 283
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->openEditorForQuickEdit(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object p0

    .line 284
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static resolveUserName(Ljava/util/List;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 486
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_a

    .line 487
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 489
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    .line 490
    invoke-virtual {v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveAll()Ljava/util/List;

    move-result-object v2

    .line 491
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v3

    .line 493
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 495
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "userKey"

    const-string v7, "userId"

    if-eqz v5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 496
    const-string v8, "\u00a5\u00a5"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 497
    array-length v9, v8

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    .line 499
    aget-object v9, v8, v9

    const/4 v10, 0x1

    .line 500
    aget-object v8, v8, v10

    .line 502
    iget-object v10, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_0

    .line 505
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 506
    invoke-virtual {v10}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v10

    .line 507
    invoke-virtual {v10}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->normalizedMemberNameMapCache()Ljava/util/Map;

    move-result-object v10

    .line 509
    invoke-static {v10, v9}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 510
    invoke-static {v10, v9}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 517
    :cond_5
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 518
    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    invoke-virtual {v8, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 524
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    .line 525
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 527
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 529
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    .line 532
    invoke-virtual {v1, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v1

    .line 533
    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->updateNonMemberNameMapCache(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    .line 535
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 536
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 537
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    .line 539
    invoke-static {p0, v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 540
    invoke-static {p0, v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_a
    :goto_3
    return-object v0
.end method

.method public static reverseLink(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;
    .locals 4

    .line 1158
    new-instance v0, Lcom/metamoji/sd/SdValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    .line 1160
    invoke-static {p0}, Lcom/metamoji/dvm/DvmUtil;->isLink(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1161
    :cond_0
    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsInvalidError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    .line 1164
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    .line 1165
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v2

    .line 1166
    invoke-virtual {v2}, Lcom/metamoji/sd/SdPrivateDriveManager;->getCurrentPrivateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdPrivateDriveManager;->getDocumentManagerByPrivateId(Ljava/lang/String;)Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    move-result-object v2

    .line 1168
    invoke-virtual {v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/sd/cs/SdCloudService;->getContext()Lcom/metamoji/sd/cs/SdCloudServiceContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getDriveId()Ljava/lang/String;

    move-result-object v2

    .line 1170
    new-instance v3, Lcom/metamoji/cs/dc/params/CsReverseLinkParam;

    invoke-direct {v3}, Lcom/metamoji/cs/dc/params/CsReverseLinkParam;-><init>()V

    .line 1171
    iput-object p0, v3, Lcom/metamoji/cs/dc/params/CsReverseLinkParam;->uri:Ljava/lang/String;

    .line 1172
    invoke-static {v3}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsReverseLinkResponse;

    if-eqz p0, :cond_8

    .line 1174
    iget v3, p0, Lcom/metamoji/cs/dc/response/CsReverseLinkResponse;->errorCode:I

    if-nez v3, :cond_3

    if-eqz v2, :cond_2

    .line 1177
    iget-object v3, p0, Lcom/metamoji/cs/dc/response/CsReverseLinkResponse;->driveId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1178
    iput-object v1, p0, Lcom/metamoji/cs/dc/response/CsReverseLinkResponse;->driveId:Ljava/lang/String;

    .line 1181
    :cond_2
    new-instance v1, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;

    invoke-direct {v1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;-><init>()V

    new-instance v2, Lcom/metamoji/dvm/DvmUtil$4;

    invoke-direct {v2, p0}, Lcom/metamoji/dvm/DvmUtil$4;-><init>(Lcom/metamoji/cs/dc/response/CsReverseLinkResponse;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->initWithDictionary(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;

    goto :goto_0

    .line 1191
    :cond_3
    iget v2, p0, Lcom/metamoji/cs/dc/response/CsReverseLinkResponse;->errorCode:I

    new-instance v3, Lcom/metamoji/dvm/DvmUtil$5;

    invoke-direct {v3, v0}, Lcom/metamoji/dvm/DvmUtil$5;-><init>(Lcom/metamoji/sd/SdValue;)V

    invoke-static {v2, v3}, Lcom/metamoji/dvm/DvmUtil;->isLoginErrorCode(ILcom/metamoji/sd/SdParameterizedBlock;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1198
    iget p0, p0, Lcom/metamoji/cs/dc/response/CsReverseLinkResponse;->errorCode:I

    const/16 v2, -0x64

    if-eq p0, v2, :cond_7

    const/16 v2, 0x6a

    if-eq p0, v2, :cond_6

    const/16 v2, 0x6f

    if-eq p0, v2, :cond_5

    const/16 v2, 0xa3

    if-eq p0, v2, :cond_4

    .line 1212
    new-instance p0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->ServerError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1203
    :cond_4
    new-instance p0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsInvalidError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1200
    :cond_5
    new-instance p0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->NotFoundDataError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1206
    :cond_6
    new-instance p0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->NotLoginError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1209
    :cond_7
    new-instance p0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->NetworkError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1218
    :cond_8
    new-instance p0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    .line 1222
    :cond_9
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 1223
    new-instance p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;

    invoke-direct {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/SdError;

    invoke-virtual {p0, v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->initWithErrorInfo(Lcom/metamoji/sd/SdError;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;

    return-object p0

    :cond_a
    return-object v1
.end method

.method public static saveDocumentBinaryFileToStorage(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 325
    invoke-virtual {p1, p0, p2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->saveDocumentBinaryFileToStorage(Ljava/io/File;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;
    .locals 1

    .line 82
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    .line 83
    instance-of v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;

    if-eqz v0, :cond_0

    .line 84
    check-cast p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;

    invoke-virtual {p0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->sdDocumentManager()Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static searchCopiedShareNote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 680
    invoke-static {p0, p1}, Lcom/metamoji/dvm/DvmUtil;->openEditorForQuickEdit(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v0

    .line 681
    const-string v1, "collaboCompanyId"

    invoke-interface {v0, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 682
    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 683
    :goto_0
    const-string v3, "collaboRoomId"

    invoke-interface {v0, v3}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 684
    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 685
    :goto_1
    sget-object v4, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-static {v0, v4}, Lcom/metamoji/dvm/DvmUtil;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Z

    if-nez v3, :cond_2

    return-object v2

    :cond_2
    if-nez p0, :cond_3

    return-object p1

    .line 694
    :cond_3
    invoke-static {v3, v1}, Lcom/metamoji/dvm/DvmUtil;->searchShareNote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static searchShareNote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 701
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 702
    invoke-virtual {v0, p1, p0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIDsFromRoom(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 703
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 704
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 705
    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 706
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTrashed()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p1

    :cond_1
    return-object v1
.end method

.method public static sendOperationLog()V
    .locals 5

    .line 858
    :try_start_0
    sget-object v0, Lcom/metamoji/dvm/DvmUtil;->lockForSendLogOperation:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :try_start_1
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v0

    .line 861
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getCurrentPrivateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdPrivateDriveManager;->getDocumentManagerByPrivateId(Ljava/lang/String;)Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    move-result-object v0

    .line 862
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->logDirForOperation()Ljava/lang/String;

    move-result-object v0

    .line 865
    :goto_0
    sget-object v1, Lcom/metamoji/dvm/DvmUtil;->lockForLogOperation:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 867
    new-instance v1, Ljava/io/File;

    const-string v2, "op.log"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    new-instance v2, Ljava/io/File;

    const-string v3, "send_op.log"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 871
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_0

    .line 888
    :try_start_3
    sget-object v0, Lcom/metamoji/dvm/DvmUtil;->lockForLogOperation:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 875
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 877
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_1

    .line 888
    :try_start_5
    sget-object v0, Lcom/metamoji/dvm/DvmUtil;->lockForLogOperation:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 881
    :cond_1
    :try_start_6
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 882
    const-string v3, "]"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 883
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 884
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 888
    :cond_2
    :try_start_7
    sget-object v1, Lcom/metamoji/dvm/DvmUtil;->lockForLogOperation:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 891
    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->readFileAsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 892
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/metamoji/cm/CmJson;->jsonValueToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 893
    new-instance v3, Lcom/metamoji/cs/dc/params/CsAddApiLogParam;

    invoke-direct {v3}, Lcom/metamoji/cs/dc/params/CsAddApiLogParam;-><init>()V

    .line 894
    iput-object v1, v3, Lcom/metamoji/cs/dc/params/CsAddApiLogParam;->logList:Ljava/util/List;

    .line 896
    invoke-static {v3}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cs/dc/response/CsAddApiLogResponse;

    if-eqz v1, :cond_3

    .line 898
    iget v1, v1, Lcom/metamoji/cs/dc/response/CsAddApiLogResponse;->errorCode:I

    if-nez v1, :cond_3

    .line 900
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 908
    :cond_3
    :goto_1
    :try_start_8
    sget-object v0, Lcom/metamoji/dvm/DvmUtil;->lockForSendLogOperation:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    return-void

    :catchall_0
    move-exception v0

    .line 888
    :try_start_9
    sget-object v1, Lcom/metamoji/dvm/DvmUtil;->lockForLogOperation:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 889
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    .line 908
    :try_start_a
    sget-object v1, Lcom/metamoji/dvm/DvmUtil;->lockForSendLogOperation:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 909
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    .line 911
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method
