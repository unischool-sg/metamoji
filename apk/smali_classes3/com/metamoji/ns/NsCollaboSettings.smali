.class public Lcom/metamoji/ns/NsCollaboSettings;
.super Lcom/metamoji/df/controller/Settings;
.source "NsCollaboSettings.java"


# static fields
.field public static final MMJNS_COLLABO_SETTINGS_NICKNAME_KEY_SEPARATOR:Ljava/lang/String; = "@"

.field public static final MMJNS_COLLABO_SETTINGS_TYPE:Ljava/lang/String; = "MMJNsShareSettings"

.field public static final MMJNS_MODELPROPVALUE_COLLABOSETTINGS_SHARETYPE_FORSCHOOL:Ljava/lang/String; = "forSchool"

.field public static final MMJNS_MODELPROPVALUE_COLLABOSETTINGS_SHARETYPE_FORSCHOOL_WITHDEADLINE:Ljava/lang/String; = "forSchoolWithDeadline"

.field public static final MMJNS_MODELPROPVALUE_COLLABOSETTINGS_VERSION_1:I = 0x1

.field public static final MMJNS_MODELPROPVALUE_COLLABOSETTINGS_VERSION_2:I = 0x2

.field public static final MMJNS_MODELPROPVALUE_COLLABOSETTINGS_VERSION_LATEST:I = 0x2

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_ALLOW_TO_CHANGE_GROUP_BY_STUDENT:Ljava/lang/String; = "allowToChgGrp"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_ALLOW_TO_EDIT_OTHERS_WRITINGS:Ljava/lang/String; = "allowToEditOths"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_ALLOW_TO_JOIN_NOTE:Ljava/lang/String; = "allowToJoinNote"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_ALLOW_TO_OPERATION_PAGE:Ljava/lang/String; = "allowToOpePage"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_ALLOW_TO_SAVE_NOTE_AND_COPY_PAGE:Ljava/lang/String; = "allowToSaveNote"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_COMPANY_ID:Ljava/lang/String; = "companyId"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_NICKNAMES:Ljava/lang/String; = "nicknames"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_OWNER_DCUSERID:Ljava/lang/String; = "ownerDcUserId"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_OWNER_NICKNAME:Ljava/lang/String; = "ownerNickName"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_RECEIVED:Ljava/lang/String; = "received"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_ROOM_ID:Ljava/lang/String; = "roomIdForBiz"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_ROOM_ID_BIZ:Ljava/lang/String; = "roomIdForBiz"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_ROOM_ID_CONSUMER:Ljava/lang/String; = "roomId"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_ROOM_PASSWORD:Ljava/lang/String; = "roomPassword"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_SECURE_ROOM:Ljava/lang/String; = "secureRoom"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_SEED_REVISION:Ljava/lang/String; = "seedRevision"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_SENDING:Ljava/lang/String; = "sending"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_SENDING_DATA_BOOTHID:Ljava/lang/String; = "boothID"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_SENDING_DATA_DATA:Ljava/lang/String; = "data"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_SENDING_DATA_RIP_OFF_SIZE:Ljava/lang/String; = "ripOffSize"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_SENDING_DATA_SENDBACK:Ljava/lang/String; = "sendBack"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_SUBMITTER_DCUSERID:Ljava/lang/String; = "submitterDcUserId"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_SUBMITTER_NICKNAME:Ljava/lang/String; = "submitterNickName"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_SYARETYPE:Ljava/lang/String; = "shareType"

.field public static final MMJNS_MODELPROP_COLLABOSETTINGS_UPDATED_BOOTHIDS:Ljava/lang/String; = "updatedBoothIds"

.field public static final MMJNS_MODELTYPE_COLLABOSETTINGS_SENDING_DATA:Ljava/lang/String; = "shareSendingData"


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/Settings;-><init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static buildInitModel(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    const/4 v0, 0x1

    .line 241
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    return-void
.end method

.method public static makeNickNamesMapKeyForUserID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 282
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    const-string v0, "@"

    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s%s%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addNickName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 312
    invoke-static {p2, p3}, Lcom/metamoji/ns/NsCollaboSettings;->makeNickNamesMapKeyForUserID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getNickNamesMap()Ljava/util/Map;

    move-result-object p3

    .line 330
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboSettings;->_model:Lcom/metamoji/df/model/IModel;

    const-string p2, "nicknames"

    invoke-interface {p1, p2, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public addSendingData([BLjava/lang/String;ZLjava/lang/String;)Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;
    .locals 4

    .line 415
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 417
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    const-string/jumbo v2, "sending"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 419
    const-string v1, "node"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 420
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 423
    :cond_0
    const-string/jumbo v2, "shareSendingData"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 424
    new-instance v2, Lcom/metamoji/cm/Blob;

    const-string v3, "application/octet-stream"

    invoke-direct {v2, p1, v3}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    const-string p1, "data"

    invoke-interface {v0, p1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 425
    const-string p1, "boothID"

    invoke-interface {v0, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string/jumbo p1, "sendBack"

    invoke-interface {v0, p1, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    if-eqz p4, :cond_1

    .line 428
    const-string/jumbo p1, "ripOffSize"

    invoke-interface {v0, p1, p4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_1
    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 432
    new-instance p1, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;

    invoke-direct {p1, v0}, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;-><init>(Lcom/metamoji/df/model/IModel;)V

    return-object p1
.end method

.method public addUpdatedBoothId(Ljava/lang/String;)V
    .locals 2

    .line 481
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getUpdatedBoothIdArray()Ljava/util/List;

    move-result-object v0

    .line 482
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const-string/jumbo v1, "updatedBoothIds"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public allowToChangeGroupByStudent()Z
    .locals 3

    .line 203
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "allowToChgGrp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowToEditOthersWritings()Z
    .locals 3

    .line 194
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "allowToEditOths"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowToJoinNote()Z
    .locals 3

    .line 169
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "allowToJoinNote"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowToOperationPage()Z
    .locals 3

    .line 177
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "allowToOpePage"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowToSaveNoteAndCopyPage()Z
    .locals 3

    .line 185
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "allowToSaveNote"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public containsUpdatedBoothIdArray(Ljava/lang/String;)Z
    .locals 1

    .line 509
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getUpdatedBoothIdArray()Ljava/util/List;

    move-result-object v0

    .line 510
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public existUpdatedBooth()Z
    .locals 1

    .line 518
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getUpdatedBoothIdArray()Ljava/util/List;

    move-result-object v0

    .line 519
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCompanyId()Ljava/lang/String;
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "companyId"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNickNamesMap()Ljava/util/Map;
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboSettings;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "nicknames"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getOwnerDcUserId()Ljava/lang/String;
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "ownerDcUserId"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerNickName()Ljava/lang/String;
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "ownerNickName"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "roomIdForBiz"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoomPassword()Ljava/lang/String;
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "roomPassword"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecureRoom()Z
    .locals 3

    .line 138
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "secureRoom"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSeedRevision()I
    .locals 3

    .line 160
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "seedRevision"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getShareType()Ljava/lang/String;
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "shareType"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubmitterDcUserId()Ljava/lang/String;
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "submitterDcUserId"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubmitterNickName()Ljava/lang/String;
    .locals 2

    .line 224
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "submitterNickName"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUpdatedBoothIdArray()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 524
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "updatedBoothIds"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public lastReceivedSequenceNo()J
    .locals 6

    .line 394
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "received"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 397
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, -0x1

    .line 398
    invoke-interface {v0, v4, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    .line 399
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public lastReceivedSequenceNoForBooth(Ljava/lang/String;)J
    .locals 2

    .line 381
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "received"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const/4 v1, -0x1

    .line 386
    invoke-interface {v0, p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public nextSendingData(Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;)Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 457
    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;->dataModel:Lcom/metamoji/df/model/IModel;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 460
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_1

    .line 462
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const-string/jumbo v1, "sending"

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 464
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_3

    return-object v0

    .line 471
    :cond_3
    new-instance v0, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;

    invoke-direct {v0, p1}, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;-><init>(Lcom/metamoji/df/model/IModel;)V

    return-object v0
.end method

.method public overwriteBasicSettingsFrom(Lcom/metamoji/ns/NsCollaboBasicSettings;)V
    .locals 1

    .line 248
    iget-object v0, p1, Lcom/metamoji/ns/NsCollaboBasicSettings;->roomId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/NsCollaboSettings;->setRoomId(Ljava/lang/String;)V

    .line 249
    iget-object v0, p1, Lcom/metamoji/ns/NsCollaboBasicSettings;->roomPassword:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/NsCollaboSettings;->setRoomPassword(Ljava/lang/String;)V

    .line 250
    iget-object v0, p1, Lcom/metamoji/ns/NsCollaboBasicSettings;->companyId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/NsCollaboSettings;->setCompanyId(Ljava/lang/String;)V

    .line 251
    iget-object v0, p1, Lcom/metamoji/ns/NsCollaboBasicSettings;->shareType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/NsCollaboSettings;->setShareType(Ljava/lang/String;)V

    .line 252
    iget-object v0, p1, Lcom/metamoji/ns/NsCollaboBasicSettings;->ownerDcUserId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/NsCollaboSettings;->setOwnerDcUserId(Ljava/lang/String;)V

    .line 255
    iget-boolean v0, p1, Lcom/metamoji/ns/NsCollaboBasicSettings;->secureRoom:Z

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/NsCollaboSettings;->setSecureRoom(Z)V

    .line 258
    iget-boolean v0, p1, Lcom/metamoji/ns/NsCollaboBasicSettings;->allowToJoinNote:Z

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/NsCollaboSettings;->setAllowToJoinNote(Z)V

    .line 259
    iget-boolean v0, p1, Lcom/metamoji/ns/NsCollaboBasicSettings;->allowToOperationPage:Z

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/NsCollaboSettings;->setAllowToOperationPage(Z)V

    .line 262
    iget-boolean v0, p1, Lcom/metamoji/ns/NsCollaboBasicSettings;->allowToSaveNoteAndCopyPage:Z

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/NsCollaboSettings;->setAllowToSaveNoteAndCopyPage(Z)V

    .line 265
    iget-boolean v0, p1, Lcom/metamoji/ns/NsCollaboBasicSettings;->allowToEditOthersWritings:Z

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/NsCollaboSettings;->setAllowToEditOthersWritings(Z)V

    .line 268
    iget-boolean v0, p1, Lcom/metamoji/ns/NsCollaboBasicSettings;->allowToChangeGroupByStudent:Z

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/NsCollaboSettings;->setAllowToChangeGroupByStudent(Z)V

    .line 270
    iget-object v0, p1, Lcom/metamoji/ns/NsCollaboBasicSettings;->submitterDcUserId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/NsCollaboSettings;->setSubmitterDcUserId(Ljava/lang/String;)V

    .line 271
    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboBasicSettings;->submitterNickName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/ns/NsCollaboSettings;->setSubmitterNickName(Ljava/lang/String;)V

    return-void
.end method

.method public removeNickNameForUserID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 341
    invoke-static {p1, p2}, Lcom/metamoji/ns/NsCollaboSettings;->makeNickNamesMapKeyForUserID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ns/NsCollaboSettings;->_model:Lcom/metamoji/df/model/IModel;

    const-string v0, "nicknames"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 352
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboSettings;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {p1, v0, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeSendingData(Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;)V
    .locals 2

    .line 441
    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;->dataModel:Lcom/metamoji/df/model/IModel;

    .line 443
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "sending"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 447
    :cond_0
    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    .line 448
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->destroy()V

    return-void
.end method

.method public removeUpdatedBoothId(Ljava/lang/String;)Z
    .locals 2

    .line 494
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getUpdatedBoothIdArray()Ljava/util/List;

    move-result-object v0

    .line 495
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 498
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 499
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const-string/jumbo v1, "updatedBoothIds"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setAllowToChangeGroupByStudent(Z)V
    .locals 2

    .line 206
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "allowToChgGrp"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAllowToEditOthersWritings(Z)V
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "allowToEditOths"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAllowToJoinNote(Z)V
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "allowToJoinNote"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAllowToOperationPage(Z)V
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "allowToOpePage"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAllowToSaveNoteAndCopyPage(Z)V
    .locals 2

    .line 188
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "allowToSaveNote"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCompanyId(Ljava/lang/String;)V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "companyId"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLastReceivedSequenceNo(JLjava/lang/String;)V
    .locals 3

    .line 364
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 365
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    const-string v2, "received"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 367
    const-string v1, "map"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 368
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_0
    long-to-double p1, p1

    .line 371
    invoke-interface {v1, p3, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public setOwnerDcUserId(Ljava/lang/String;)V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "ownerDcUserId"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOwnerNickName(Ljava/lang/String;)V
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "ownerNickName"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRoomId(Ljava/lang/String;)V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "roomIdForBiz"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRoomPassword(Ljava/lang/String;)V
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "roomPassword"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSecureRoom(Z)V
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "secureRoom"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSeedRevision(I)V
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "seedRevision"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public setShareType(Ljava/lang/String;)V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "shareType"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "forSchoolWithDeadline"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    :cond_0
    return-void
.end method

.method public setSubmitterDcUserId(Ljava/lang/String;)V
    .locals 2

    .line 217
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "submitterDcUserId"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSubmitterNickName(Ljava/lang/String;)V
    .locals 2

    .line 227
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "submitterNickName"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public validateUpdatedBoothIdArray(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboSettings;->getUpdatedBoothIdArray()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 538
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 539
    check-cast v2, Ljava/lang/String;

    .line 545
    invoke-static {v2}, Lcom/metamoji/nt/NtPageController;->getPageIdFromCommonLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    .line 551
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 552
    invoke-virtual {p0, v2}, Lcom/metamoji/ns/NsCollaboSettings;->removeUpdatedBoothId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
