.class public final Lcom/metamoji/ui/cabinet/CabinetUtils;
.super Ljava/lang/Object;
.source "CabinetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;,
        Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;
    }
.end annotation


# static fields
.field public static final ClearDriveReasonForDelete:I = 0x1

.field public static final ClearDriveReasonForLeaveGroup:I = 0x0

.field public static final DOCSTATUS_KEY_NAME:Ljava/lang/String; = "driveName"

.field public static final DOCSTATUS_KEY_STATUS:Ljava/lang/String; = "status"

.field static final TD_FOLDER_ROOT:Ljava/lang/String; = "/"

.field static final TD_PATH_SEPARATOR:Ljava/lang/String; = "/"

.field static s_onExport:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ObjectListToStringList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 719
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 720
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static afterExportNote()V
    .locals 2

    .line 1064
    sget-boolean v0, Lcom/metamoji/ui/cabinet/CabinetUtils;->s_onExport:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1065
    sput-boolean v0, Lcom/metamoji/ui/cabinet/CabinetUtils;->s_onExport:Z

    .line 1066
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppClearCopiedShareNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->clearAllCopiedShareNote()V

    :cond_0
    return-void
.end method

.method public static beforeExportNote()V
    .locals 1

    const/4 v0, 0x1

    .line 1059
    sput-boolean v0, Lcom/metamoji/ui/cabinet/CabinetUtils;->s_onExport:Z

    return-void
.end method

.method public static canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 852
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 856
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public static clearAllCopiedShareNote()V
    .locals 4

    .line 1096
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 1098
    :try_start_0
    new-instance v2, Lcom/metamoji/dvm/DvmDocumentSearchConditions;

    invoke-direct {v2}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;-><init>()V

    .line 1099
    sget-object v3, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->CopiedShareNote:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-virtual {v2, v3}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSearchDomainMask(Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;)V

    .line 1100
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIDs(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;)Ljava/util/List;

    move-result-object v1

    .line 1101
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1102
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1103
    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->deleteDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 1107
    const-string v1, "clearAllCopiedShareNote"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static clearAllDrive(Z)V
    .locals 5

    .line 1030
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 1031
    invoke-virtual {v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    if-eqz p0, :cond_0

    .line 1034
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/dvm/DvmDriveManager;->getDocumentManagerByDriveId(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->copyChangedDocumentsToLocal()V

    .line 1038
    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v4}, Lcom/metamoji/dvm/DvmDriveManager;->clearDrive(Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static clearCopiedShareNote(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;)Z
    .locals 5

    .line 1074
    sget-boolean v0, Lcom/metamoji/ui/cabinet/CabinetUtils;->s_onExport:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1077
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getDriveID()Ljava/lang/String;

    move-result-object v0

    .line 1078
    invoke-interface {p0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getDocumentID()Ljava/lang/String;

    move-result-object v2

    .line 1079
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v3

    sget-object v4, Lcom/metamoji/nt/NtFeature;->AppClearCopiedShareNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v3, v4}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 1082
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 1083
    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1084
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isCopiedShare()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1085
    sget-object v1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-virtual {v0, p0, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    .line 1086
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->clearAllCopiedShareNote()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static closeDocument(Lcom/metamoji/nt/doceditor/NtDocumentEditor;Z)Z
    .locals 1

    .line 1045
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->clearCopiedShareNote(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1047
    sget-object p1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    .line 1048
    :goto_0
    invoke-static {p0, p1}, Lcom/metamoji/dvm/DvmUtil;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static createAbsPath(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 520
    const-string v0, "/"

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 523
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 526
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 529
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static dvmErrorAnalize(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V
    .locals 0

    .line 507
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->GetErrorInfo()Lcom/metamoji/sd/SdError;

    move-result-object p0

    .line 508
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->sdErrorAnalize(Lcom/metamoji/sd/SdError;)V

    return-void
.end method

.method public static existDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1529
    :try_start_0
    invoke-static {p0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 1535
    :cond_0
    new-instance v1, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;

    invoke-direct {v1}, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;-><init>()V

    .line 1536
    iput-object p1, v1, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;->documentId:Ljava/lang/String;

    .line 1537
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object p0

    check-cast p0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;

    if-eqz p0, :cond_3

    .line 1539
    iget-object v1, p0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->meta:Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->documentId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 1542
    :cond_1
    iget p1, p0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->errorCode:I

    if-nez p1, :cond_4

    .line 1544
    iget-object p0, p0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->meta:Ljava/util/Map;

    invoke-static {p0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTrashed(Ljava/util/Map;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 1550
    const-string p1, "CabinetUtils:existDocument"

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_4
    return v0
.end method

.method public static getActiveGroupId()Ljava/lang/String;
    .locals 3

    .line 804
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 808
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 809
    iget v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 810
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->currentGroupId:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrentDrive()Ljava/lang/String;
    .locals 1

    .line 765
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dvm/DvmDriveManager;->getCurrentDrive()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentFolder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 781
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dvm/DvmDriveManager;->getCurrentFolder()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDocumentTitle()Ljava/lang/String;
    .locals 2

    .line 1672
    invoke-static {}, Lcom/metamoji/cm/TimeUtils;->getDateStringNowForTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtDocument;->getValidDocumentTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDocumentCount(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/cm/CmException;
        }
    .end annotation

    .line 144
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 155
    :pswitch_0
    invoke-static {p0, p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDvmDocumentCount(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDocumentCountInFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/cm/CmException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 132
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 134
    :goto_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagsObject()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentCountInFolder(Ljava/util/List;Ljava/util/List;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/cm/CmException;
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 195
    :pswitch_0
    invoke-static {p0, p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDvmDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDriveGroupId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 794
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 795
    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupIdFromDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDriveList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmDriveBean;",
            ">;"
        }
    .end annotation

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1564
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    .line 1565
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    .line 1566
    new-instance v2, Lcom/metamoji/cs/dc/params/CsGetDriveEntryParam;

    invoke-direct {v2}, Lcom/metamoji/cs/dc/params/CsGetDriveEntryParam;-><init>()V

    .line 1567
    invoke-static {v2}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v2

    check-cast v2, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;

    if-eqz v2, :cond_4

    .line 1569
    iget v3, v2, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;->errorCode:I

    if-nez v3, :cond_4

    .line 1571
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;->uid:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;->list:Ljava/util/List;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;->uid:Ljava/lang/String;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1572
    iget-object v1, v2, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1573
    invoke-static {v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getGroupId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    if-nez p0, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    if-eqz p0, :cond_0

    .line 1574
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1575
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1580
    :cond_3
    new-instance p0, Lcom/metamoji/ui/cabinet/CabinetUtils$5;

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils$5;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1616
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1617
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1618
    new-instance v2, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    invoke-direct {v2, v1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;-><init>(Ljava/util/Map;)V

    .line 1619
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object p0
.end method

.method public static getDriveName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 1141
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->localDriveTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1144
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 1145
    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object p0

    .line 1146
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDvmDocumentCount(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/cm/CmException;
        }
    .end annotation

    .line 171
    invoke-static {p0, p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getSearchConditions(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Lcom/metamoji/dvm/DvmDocumentSearchConditions;

    move-result-object p1

    .line 172
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 174
    invoke-virtual {p1, v1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setOnlyFolderTag(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagsObject()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentCount(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getDvmDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/cm/CmException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    move-object v0, p0

    move-object v1, p1

    .line 211
    invoke-static/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDvmDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getDvmDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;JJ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/cm/CmException;
        }
    .end annotation

    .line 214
    invoke-static {p0, p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getSearchConditions(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Lcom/metamoji/dvm/DvmDocumentSearchConditions;

    move-result-object v2

    .line 215
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object p1

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->RECYCLE_BIN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 218
    invoke-virtual {v2, p1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setOnlyFolderTag(Z)V

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagsObject()Ljava/util/ArrayList;

    move-result-object v1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIDs(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;JJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getNotePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1160
    const-string v0, "/"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1161
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1163
    instance-of v4, v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;

    if-nez v4, :cond_0

    goto/16 :goto_5

    .line 1166
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-virtual {v3, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p0

    if-nez p0, :cond_4

    .line 1178
    new-instance p0, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;

    invoke-direct {p0}, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;-><init>()V

    .line 1179
    iput-object p1, p0, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;->documentId:Ljava/lang/String;

    .line 1180
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->cloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object p0

    check-cast p0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;

    if-eqz p0, :cond_3

    .line 1181
    iget-object v3, p0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->meta:Ljava/util/Map;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->documentId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 1183
    :cond_1
    iget p1, p0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->errorCode:I

    if-nez p1, :cond_2

    .line 1184
    iget-object p1, p0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->meta:Ljava/util/Map;

    invoke-static {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isCopiedShare(Ljava/util/Map;)Z

    move-result p1

    .line 1185
    iget-object p0, p0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->meta:Ljava/util/Map;

    const-string/jumbo v3, "title"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 1187
    :cond_2
    iget p0, p0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->errorCode:I

    const/16 p1, 0x2af9

    if-eq p0, p1, :cond_3

    const/16 p1, 0x2aff

    if-eq p0, p1, :cond_3

    const/16 p1, 0x2b03

    if-eq p0, p1, :cond_3

    .line 1193
    sget p0, Lcom/metamoji/noteanytime/R$string;->DocInfo_Title_Unkown:I

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    move-object v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    return-object v1

    .line 1199
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isCopiedShare()Z

    move-result v5

    .line 1200
    invoke-virtual {v3, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1201
    invoke-virtual {v3, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getAbsPathMatchTags(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1202
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object p0

    move-object v3, p1

    move p1, v5

    :goto_2
    if-eqz p1, :cond_6

    .line 1207
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p1

    sget-object v3, Lcom/metamoji/nt/NtFeature;->AppClearCopiedShareNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p1, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v1

    .line 1210
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_CopiedShare:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    if-eqz v3, :cond_7

    .line 1213
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz p0, :cond_8

    .line 1219
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_9
    :goto_5
    return-object v1

    :catch_0
    move-exception p0

    .line 1224
    const-string p1, "getNotePath"

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getSearchConditions(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Lcom/metamoji/dvm/DvmDocumentSearchConditions;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/cm/CmException;
        }
    .end annotation

    .line 229
    new-instance v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;

    invoke-direct {v0}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;-><init>()V

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    new-instance v2, Lcom/metamoji/sd/SdSortCondition;

    sget-object v3, Lcom/metamoji/sd/SdSortCondition;->DOCUMENT_SEARCH_SORT_PRIORITY:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/metamoji/sd/SdSortCondition;-><init>(Ljava/lang/String;Z)V

    .line 235
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v2, Lcom/metamoji/sd/SdSortCondition;

    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListSortKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListAscending()Z

    move-result v5

    invoke-direct {v2, v3, v5}, Lcom/metamoji/sd/SdSortCondition;-><init>(Ljava/lang/String;Z)V

    .line 238
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListSortKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    new-instance v2, Lcom/metamoji/sd/SdSortCondition;

    const-string/jumbo v3, "update"

    invoke-direct {v2, v3, v4}, Lcom/metamoji/sd/SdSortCondition;-><init>(Ljava/lang/String;Z)V

    .line 242
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_0
    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSort(Ljava/util/List;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 248
    new-array v2, v1, [Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setMimeType(Ljava/util/List;)V

    .line 252
    :cond_1
    sget-object p1, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v2

    aget p1, p1, v2

    if-eq p1, v1, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    const/4 v2, 0x5

    if-eq p1, v2, :cond_3

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    .line 271
    sget-object p1, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->Folders:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSearchDomainMask(Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;)V

    goto :goto_0

    .line 259
    :cond_2
    sget-object p1, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->Trash:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSearchDomainMask(Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;)V

    goto :goto_0

    .line 263
    :cond_3
    sget-object p1, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->Templates:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSearchDomainMask(Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;)V

    goto :goto_0

    .line 267
    :cond_4
    sget-object p1, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->CopiedShareNote:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSearchDomainMask(Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;)V

    goto :goto_0

    .line 255
    :cond_5
    sget-object p1, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->All:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSearchDomainMask(Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;)V

    .line 275
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object p0

    .line 276
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSearchTags()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 278
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSearchTags()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 280
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 282
    :cond_6
    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setTags(Ljava/util/List;)V

    return-object v0

    .line 283
    :cond_7
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSearchTitleString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSearchTextString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 289
    :cond_8
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSearchNothings()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 291
    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setOnlyFolderTag(Z)V

    .line 292
    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setTags(Ljava/util/List;)V

    :cond_9
    return-object v0

    .line 285
    :cond_a
    :goto_2
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSearchTitleString()Ljava/lang/String;

    move-result-object p0

    .line 287
    invoke-static {p0}, Lcom/metamoji/un/text/SearchWordUtil;->trimmingPatternText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 288
    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setTitle(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSmallTagImageID(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 448
    :pswitch_0
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_small_bluegrey:I

    return p0

    .line 436
    :pswitch_1
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_small_grey:I

    return p0

    .line 427
    :pswitch_2
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_small_brown:I

    return p0

    .line 439
    :pswitch_3
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_small_green:I

    return p0

    .line 445
    :pswitch_4
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_small_emerald:I

    return p0

    .line 442
    :pswitch_5
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_small_sky:I

    return p0

    .line 430
    :pswitch_6
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_small_blue:I

    return p0

    .line 433
    :pswitch_7
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_small_purple:I

    return p0

    .line 451
    :pswitch_8
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_small_fuchsia:I

    return p0

    .line 424
    :pswitch_9
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_small_pink:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTagButtonImageID(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 374
    :pswitch_0
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_bluegrey_bottom:I

    return p0

    .line 362
    :pswitch_1
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_grey_bottom:I

    return p0

    .line 353
    :pswitch_2
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_brown_bottom:I

    return p0

    .line 365
    :pswitch_3
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_green_bottom:I

    return p0

    .line 371
    :pswitch_4
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_emerald_bottom:I

    return p0

    .line 368
    :pswitch_5
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_sky_bottom:I

    return p0

    .line 356
    :pswitch_6
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_blue_bottom:I

    return p0

    .line 359
    :pswitch_7
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_purple_bottom:I

    return p0

    .line 377
    :pswitch_8
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_fuchsia_bottom:I

    return p0

    .line 350
    :pswitch_9
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_pink_bottom:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTagImageID(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 485
    :pswitch_0
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_bluegrey:I

    return p0

    .line 473
    :pswitch_1
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_grey:I

    return p0

    .line 464
    :pswitch_2
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_brown:I

    return p0

    .line 476
    :pswitch_3
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_green:I

    return p0

    .line 482
    :pswitch_4
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_emerald:I

    return p0

    .line 479
    :pswitch_5
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_sky:I

    return p0

    .line 467
    :pswitch_6
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_blue:I

    return p0

    .line 470
    :pswitch_7
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_purple:I

    return p0

    .line 488
    :pswitch_8
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_fuchsia:I

    return p0

    .line 461
    :pswitch_9
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_pink:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTagNameList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 543
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 544
    array-length v0, p0

    .line 545
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 547
    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 548
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 549
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static getTagTopImageID(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 411
    :pswitch_0
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_bluegrey_top:I

    return p0

    .line 399
    :pswitch_1
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_grey_top:I

    return p0

    .line 390
    :pswitch_2
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_brown_top:I

    return p0

    .line 402
    :pswitch_3
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_green_top:I

    return p0

    .line 408
    :pswitch_4
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_emerald_top:I

    return p0

    .line 405
    :pswitch_5
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_sky_top:I

    return p0

    .line 393
    :pswitch_6
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_blue_top:I

    return p0

    .line 396
    :pswitch_7
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_purple_top:I

    return p0

    .line 414
    :pswitch_8
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_fuchsia_top:I

    return p0

    .line 387
    :pswitch_9
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tag_pink_top:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getValidDocumentTitleError(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 304
    invoke-static {p0, v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getValidTitleError(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getValidTitleError(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 309
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 310
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    sget p1, Lcom/metamoji/noteanytime/R$string;->Room_Msg_Title_Error_MaxCount:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Title_Error_MaxCount:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 314
    :cond_1
    const-string/jumbo v0, "\u00a5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    const-string/jumbo v0, "\u300c\u00a5\u300d"

    goto :goto_1

    .line 314
    :cond_2
    const-string v0, ""

    .line 318
    :goto_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 319
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    const-string/jumbo v1, "\u300c/\u300d"

    if-eqz p0, :cond_3

    move-object v0, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    .line 322
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    .line 323
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_5

    sget p1, Lcom/metamoji/noteanytime/R$string;->Room_Msg_Title_InvalidCahr:I

    goto :goto_3

    :cond_5
    sget p1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Title_InvalidCahr:I

    :goto_3
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\n\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0
.end method

.method public static hasFolder(Ljava/lang/String;)Z
    .locals 1

    .line 890
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 891
    invoke-virtual {p0, v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getSubFolderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 892
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static isAvailableDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
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

    .line 1446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1447
    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->Available:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    const-string/jumbo v2, "status"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    const-string v1, "driveName"

    if-eqz p0, :cond_0

    .line 1452
    :try_start_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1453
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1455
    sget-object p0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->HiddenDrive:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 1460
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v3

    if-eqz v3, :cond_6

    if-nez p1, :cond_1

    .line 1465
    sget-object p0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->Available:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 1468
    :cond_1
    invoke-virtual {v3, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1471
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTrashed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->existDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 1472
    sget-object p0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->Unavailable:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 1474
    :cond_2
    sget-object p0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->Available:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 1478
    :cond_3
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    .line 1482
    :cond_4
    invoke-static {p0, p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->existDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1483
    sget-object p0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->NeedSyncDrive:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 1486
    :cond_5
    sget-object p0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->NeedSyncDrive:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 1491
    :cond_6
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    .line 1496
    :cond_7
    sget-object p1, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->Unavailable:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object p1

    .line 1498
    invoke-virtual {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object p1

    .line 1499
    new-instance v3, Lcom/metamoji/cs/dc/params/CsGetDriveEntryParam;

    invoke-direct {v3}, Lcom/metamoji/cs/dc/params/CsGetDriveEntryParam;-><init>()V

    .line 1500
    invoke-static {v3}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v3

    check-cast v3, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;

    if-eqz v3, :cond_a

    .line 1502
    iget-object v4, v3, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;->list:Ljava/util/List;

    if-eqz v4, :cond_a

    iget-object v4, v3, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;->uid:Ljava/lang/String;

    if-eqz v4, :cond_a

    if-eqz p1, :cond_a

    iget-object v4, v3, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;->uid:Ljava/lang/String;

    iget-object p1, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1503
    iget-object p1, v3, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1504
    invoke-static {v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1506
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1507
    invoke-static {v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isHidden(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1508
    sget-object v4, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->HiddenDrive:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    invoke-static {v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1511
    :cond_9
    sget-object v3, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->AdditionalDrive:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_a
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 1518
    const-string p1, "CabinetUtils:isAvailableDocument"

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isCanEditDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1649
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    .line 1650
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1651
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsMimeType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->isCanEditMimeType(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isCanEditMimeType(Ljava/lang/String;)Z
    .locals 1

    .line 1661
    invoke-static {p0}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isShare(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1662
    invoke-static {}, Lcom/metamoji/Config;->isShareOpenEnabled()Z

    move-result p0

    return p0

    .line 1664
    :cond_0
    invoke-static {p0}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isNote(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isDisplayedMultiFolders(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 906
    invoke-static {p0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 908
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->isDisplayedMultiFolders(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isEdittingDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1687
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1689
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDriveID()Ljava/lang/String;

    move-result-object v1

    .line 1690
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    .line 1691
    invoke-static {p0, v1}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isFolderEmpty(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z
    .locals 1

    const/4 v0, 0x0

    .line 659
    :try_start_0
    invoke-static {p0, v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 660
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 662
    const-string v0, "isFolderEmpty"

    invoke-static {p0, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isNoteTemplate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1677
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    .line 1678
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1679
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTemplate()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isShowCabinetAlertDialog()Z
    .locals 1

    .line 84
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    instance-of v0, v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$showCabinetAlertDialog$0(Lcom/metamoji/ui/dialog/UiAlertDialog;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 118
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "CabinetUtils_showMsgDialog"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$showMessageAndClearDrive$1(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 684
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    .line 685
    invoke-virtual {p3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 686
    sget p0, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/metamoji/ui/cabinet/CabinetUtils$2;

    invoke-direct {p1, p2}, Lcom/metamoji/ui/cabinet/CabinetUtils$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p0, 0x0

    .line 705
    invoke-virtual {p3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 707
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Landroidx/appcompat/app/AlertDialog$Builder;)Z

    return-void
.end method

.method public static localDriveTitle()Ljava/lang/String;
    .locals 2

    .line 1125
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1127
    sget v1, Lcom/metamoji/noteanytime/R$string;->UI_Cabinet_PrivateBox:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static navigateToDrive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1240
    sget-object v4, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/CabinetUtils;->navigateToDrive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;)V

    return-void
.end method

.method public static navigateToDrive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1250
    invoke-static/range {v0 .. v6}, Lcom/metamoji/ui/cabinet/CabinetUtils;->navigateToDrive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;Ljava/util/Map;)V

    return-void
.end method

.method public static navigateToDrive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/metamoji/nt/NtEditorWindowController$EditOperation;",
            "Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1261
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x1

    :cond_0
    move v5, p3

    .line 1264
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;

    move-object v3, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p4

    move-object v1, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/ui/cabinet/CabinetUtils$3;-><init>(Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtEditorWindowController$EditOperation;Ljava/util/Map;)V

    invoke-static {v3, v2, v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->prepareAccessDocument(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V

    return-void
.end method

.method public static nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 870
    const-string v0, ""

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 874
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static prepareAccessDocument(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V
    .locals 2

    .line 1375
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/CabinetUtils$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ui/cabinet/CabinetUtils$4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method private static prepareDeleteMultiNoteMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 964
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 967
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 968
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 969
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 972
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 973
    invoke-static {p0, v6}, Lcom/metamoji/ui/cabinet/CabinetUtils;->isDisplayedMultiFolders(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 974
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 976
    :cond_0
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 981
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "\n"

    if-lez v5, :cond_5

    .line 982
    :try_start_1
    sget p1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Delete_Note_Multi_Folders_2:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 986
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 989
    :cond_2
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    const-string v2, "* "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-static {p0, v0}, Lcom/metamoji/dvm/DvmUtil;->getDocTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 995
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 996
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 999
    :cond_4
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    invoke-static {p0, v0}, Lcom/metamoji/dvm/DvmUtil;->getDocTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1006
    :cond_5
    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Delete_Note_Multi_Select:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1009
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 1012
    :cond_6
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    invoke-static {p0, v0}, Lcom/metamoji/dvm/DvmUtil;->getDocTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1021
    :catch_0
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static prepareDeleteNoteMessage(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 927
    invoke-static {p1, p2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->prepareDeleteMultiNoteMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 929
    :cond_0
    invoke-static {p1, p3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->prepareDeleteSingleNoteMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static prepareDeleteSingleNoteMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 943
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 947
    invoke-static {p0, p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->isDisplayedMultiFolders(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 948
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Delete_Note_Multi_Folders:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 950
    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Note_Delete_Message:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reloadAllView(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1116
    instance-of v0, p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-eqz v0, :cond_0

    .line 1117
    check-cast p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    invoke-interface {p0}, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;->reloadAllView()V

    :cond_0
    return-void
.end method

.method public static sdErrorAnalize(Lcom/metamoji/sd/SdError;)V
    .locals 1

    .line 496
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->sdGetErrorMessage(Lcom/metamoji/sd/SdError;)Ljava/lang/String;

    move-result-object p0

    .line 497
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static sdGetErrorMessage(Lcom/metamoji/sd/SdError;)Ljava/lang/String;
    .locals 3

    .line 556
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 558
    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetUtils$9;->$SwitchMap$com$metamoji$dvm$DvmErrCode:[I

    invoke-virtual {p0}, Lcom/metamoji/sd/SdError;->getErrCode()Lcom/metamoji/dvm/DvmErrCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/dvm/DvmErrCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 647
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Error_Default2:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 644
    :pswitch_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CURRENT_BOX_TAGFOLDER_NAME_TOO_LONG_ERROR_MSG:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 641
    :pswitch_1
    sget p0, Lcom/metamoji/noteanytime/R$string;->CABINET_MSG_NOT_ACCESS_TO_NOTE:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 638
    :pswitch_2
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_SdMsgDriveAccessDenied:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 635
    :pswitch_3
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Error_Message_DocumentNotRetrieved_Text:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 629
    :pswitch_4
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Error_Message_DriveAlreadyDeleted_Text:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 625
    :pswitch_5
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Error_Message_LicenseExpiryDate_Text:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 622
    :pswitch_6
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Error_Message_CopyDocToLocalFailed_Text:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 619
    :pswitch_7
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Error_Message_DocDownloadOperation_Text:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 616
    :pswitch_8
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Error_Message_TrafficQuotaExceed_Text:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 613
    :pswitch_9
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Error_Sync_Stop:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 604
    :pswitch_a
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Could_Not_Add_Tag:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 600
    :pswitch_b
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Not_Move_Folder:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 597
    :pswitch_c
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Error_Folder_Not_Found:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 593
    :pswitch_d
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_CreateFolder_Alert_Error2:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 589
    :pswitch_e
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Error_Folder_Restriction:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 584
    :pswitch_f
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Error_Input_Tag_Name_Already:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 581
    :pswitch_10
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Error_Input_Tag_Name_Invalid:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 578
    :pswitch_11
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Error_Tag_Restriction:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 575
    :pswitch_12
    invoke-virtual {p0}, Lcom/metamoji/sd/SdError;->getUserInfo()Ljava/util/Map;

    move-result-object p0

    const-string v0, "maintMessage"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 572
    :pswitch_13
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Network_Error:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 569
    :pswitch_14
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_General_Error:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 566
    :pswitch_15
    const-string p0, ""

    return-object p0

    .line 563
    :pswitch_16
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Error_Document_Not_Found:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 560
    :pswitch_17
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Error_Tag_Not_Found:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setCurrentDrive(Ljava/lang/String;)V
    .locals 1

    .line 757
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->setCurrentDrive(Ljava/lang/String;)V

    return-void
.end method

.method public static setCurrentFolder(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 773
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->setCurrentFolder(Ljava/util/List;)V

    return-void
.end method

.method public static setDriveHidden(Ljava/lang/String;Z)V
    .locals 2

    .line 1631
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/CabinetUtils$6;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/cabinet/CabinetUtils$6;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showCabinetAlertDialog(Landroidx/appcompat/app/AlertDialog$Builder;)Z
    .locals 2

    .line 115
    new-instance v0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    const/4 p0, 0x0

    .line 116
    invoke-virtual {v0, p0}, Lcom/metamoji/ui/dialog/UiAlertDialog;->setCancelable(Z)V

    .line 117
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p0

    .line 118
    new-instance v1, Lcom/metamoji/ui/cabinet/CabinetUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/metamoji/ui/cabinet/CabinetUtils$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ui/dialog/UiAlertDialog;)V

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static showCabinetAlertDialog(Ljava/lang/String;)Z
    .locals 0

    .line 101
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static showDvmError(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V
    .locals 0

    .line 503
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->dvmErrorAnalize(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    return-void
.end method

.method public static showMessageAndClearDrive(Ljava/lang/String;I)V
    .locals 3

    .line 673
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 677
    sget p1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Error_Message_DriveAlreadyDeleted_Text:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 679
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->Cabinet_SdMsgDriveAccessDenied:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 682
    :goto_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v1

    .line 683
    new-instance v2, Lcom/metamoji/ui/cabinet/CabinetUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0, p0}, Lcom/metamoji/ui/cabinet/CabinetUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method

.method public static showMsgDialog(Ljava/lang/String;)V
    .locals 2

    .line 330
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/CabinetUtils$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/CabinetUtils$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static showOpenResourceUrlDialog()V
    .locals 3

    .line 1752
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1753
    sget v0, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 1757
    :cond_0
    new-instance v0, Lcom/metamoji/ui/dialog/OpenUrlDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/OpenUrlDialog;-><init>()V

    .line 1758
    const-string v1, "openUrlDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/OpenUrlDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method public static showResourceUrlDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1707
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1708
    sget p0, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    const/4 p1, 0x0

    invoke-static {p0, p1, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 1711
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1712
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ui/cabinet/CabinetUtils$7;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/metamoji/ui/cabinet/CabinetUtils$7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance p0, Lcom/metamoji/ui/cabinet/CabinetUtils$8;

    invoke-direct {p0, v0, p3}, Lcom/metamoji/ui/cabinet/CabinetUtils$8;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v2, v3, v1, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public static showResourceUrlDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1703
    invoke-static {p0, p1, v0, p2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showResourceUrlDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static toDoSync(Z)Z
    .locals 1

    .line 729
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    .line 730
    invoke-virtual {v0, p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->toDoSync(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 733
    :cond_0
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->toDoSyncDrive(Z)Z

    move-result p0

    return p0
.end method

.method public static toDoSyncDrive(Z)Z
    .locals 4

    .line 740
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 741
    invoke-virtual {v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 742
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isHidden()Z

    move-result v3

    if-nez v3, :cond_0

    .line 743
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v2

    .line 744
    invoke-virtual {v2, p0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->needSyncFlag(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static userNameForDisplay(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 822
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 827
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 832
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    return-object p0

    .line 834
    :cond_3
    :goto_1
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 835
    sget p1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Sync_Unknown_Nickname:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 823
    :cond_4
    :goto_2
    const-string p0, ""

    return-object p0
.end method
