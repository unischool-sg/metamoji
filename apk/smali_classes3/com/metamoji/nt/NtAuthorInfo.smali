.class public Lcom/metamoji/nt/NtAuthorInfo;
.super Ljava/lang/Object;
.source "NtAuthorInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final KEY_COMPANYID:Ljava/lang/String; = "c"

.field public static final KEY_DCUSERID:Ljava/lang/String; = "d"

.field public static final KEY_DCUSERNAME:Ljava/lang/String; = "n"

.field public static final KEY_ROOMID:Ljava/lang/String; = "r"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "t"

.field public static final KEY_USERID:Ljava/lang/String; = "u"


# instance fields
.field private mActionTime:Ljava/util/Date;

.field private mCompanyId:Ljava/lang/String;

.field private mDcUserId:Ljava/lang/String;

.field private mDcUserName:Ljava/lang/String;

.field private mRoomId:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/metamoji/nt/NtAuthorInfo;->mRoomId:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/metamoji/nt/NtAuthorInfo;->mUserId:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcom/metamoji/nt/NtAuthorInfo;->mCompanyId:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/metamoji/nt/NtAuthorInfo;->mDcUserId:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/metamoji/nt/NtAuthorInfo;->mDcUserName:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/metamoji/nt/NtAuthorInfo;->mActionTime:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lcom/metamoji/nt/NtAuthorInfo;-><init>()V

    if-eqz p1, :cond_0

    .line 137
    const-string v0, "r"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/nt/NtAuthorInfo;->mRoomId:Ljava/lang/String;

    .line 138
    const-string/jumbo v0, "u"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/nt/NtAuthorInfo;->mUserId:Ljava/lang/String;

    .line 139
    const-string v0, "c"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/nt/NtAuthorInfo;->mCompanyId:Ljava/lang/String;

    .line 140
    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/nt/NtAuthorInfo;->mDcUserId:Ljava/lang/String;

    .line 141
    const-string v0, "n"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/nt/NtAuthorInfo;->mDcUserName:Ljava/lang/String;

    .line 142
    const-string/jumbo v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/metamoji/cm/TimeUtils;->unixtime2datetime(D)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mActionTime:Ljava/util/Date;

    :cond_0
    return-void
.end method

.method public static newAuthorInfoOfNow()Lcom/metamoji/nt/NtAuthorInfo;
    .locals 7

    .line 178
    new-instance v0, Lcom/metamoji/nt/NtAuthorInfo;

    invoke-direct {v0}, Lcom/metamoji/nt/NtAuthorInfo;-><init>()V

    .line 182
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->roomId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->userId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtAuthorInfo;->setRoomId(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtAuthorInfo;->setUserId(Ljava/lang/String;)V

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v5

    .line 191
    :goto_2
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 193
    invoke-virtual {v3}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 195
    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/metamoji/nt/NtAuthorInfo;->getRoomId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 197
    const-string v6, "MMJNsShareSettings"

    invoke-virtual {v3, v6}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ns/NsCollaboSettings;

    if-eqz v3, :cond_3

    .line 200
    invoke-virtual {v3}, Lcom/metamoji/ns/NsCollaboSettings;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtAuthorInfo;->setRoomId(Ljava/lang/String;)V

    move v1, v4

    .line 206
    :cond_3
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v3

    .line 207
    invoke-virtual {v3}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 208
    iget-object v6, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 210
    iget-object v1, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtAuthorInfo;->setDcUserId(Ljava/lang/String;)V

    .line 211
    iget-object v1, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtAuthorInfo;->setCompanyId(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Lcom/metamoji/nt/NtAuthorInfo;->getDcUserName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 215
    iget-object v1, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtAuthorInfo;->setDcUserName(Ljava/lang/String;)V

    :cond_4
    move v1, v4

    :cond_5
    if-nez v1, :cond_7

    .line 221
    invoke-static {v5}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance(Z)Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 222
    invoke-virtual {v1}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v1

    sget-object v3, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne v1, v3, :cond_6

    goto :goto_3

    :cond_6
    move v4, v5

    :goto_3
    move v1, v4

    :cond_7
    if-eqz v1, :cond_8

    .line 226
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtAuthorInfo;->setActionTime(Ljava/util/Date;)V

    return-object v0

    :cond_8
    return-object v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 240
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtAuthorInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    iget-object v1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mUserId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/nt/NtAuthorInfo;->mUserId:Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mRoomId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/nt/NtAuthorInfo;->mRoomId:Ljava/lang/String;

    .line 247
    iget-object v1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mCompanyId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/nt/NtAuthorInfo;->mCompanyId:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mDcUserId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/nt/NtAuthorInfo;->mDcUserId:Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mDcUserName:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/nt/NtAuthorInfo;->mDcUserName:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mActionTime:Ljava/util/Date;

    iput-object v1, v0, Lcom/metamoji/nt/NtAuthorInfo;->mActionTime:Ljava/util/Date;

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 264
    :cond_1
    instance-of v2, p1, Lcom/metamoji/nt/NtAuthorInfo;

    if-nez v2, :cond_2

    return v1

    .line 266
    :cond_2
    check-cast p1, Lcom/metamoji/nt/NtAuthorInfo;

    .line 268
    iget-object v2, p0, Lcom/metamoji/nt/NtAuthorInfo;->mUserId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/metamoji/nt/NtAuthorInfo;->mUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/metamoji/nt/NtAuthorInfo;->mUserId:Ljava/lang/String;

    if-nez v2, :cond_7

    :goto_0
    iget-object v2, p0, Lcom/metamoji/nt/NtAuthorInfo;->mRoomId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/metamoji/nt/NtAuthorInfo;->mRoomId:Ljava/lang/String;

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/metamoji/nt/NtAuthorInfo;->mRoomId:Ljava/lang/String;

    if-nez v2, :cond_7

    :goto_1
    iget-object v2, p0, Lcom/metamoji/nt/NtAuthorInfo;->mActionTime:Ljava/util/Date;

    iget-object v3, p1, Lcom/metamoji/nt/NtAuthorInfo;->mActionTime:Ljava/util/Date;

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/metamoji/nt/NtAuthorInfo;->mDcUserId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/metamoji/nt/NtAuthorInfo;->mDcUserId:Ljava/lang/String;

    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_5
    iget-object v2, p1, Lcom/metamoji/nt/NtAuthorInfo;->mDcUserId:Ljava/lang/String;

    if-nez v2, :cond_7

    :goto_2
    iget-object v2, p0, Lcom/metamoji/nt/NtAuthorInfo;->mCompanyId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object p1, p1, Lcom/metamoji/nt/NtAuthorInfo;->mCompanyId:Ljava/lang/String;

    .line 273
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_6
    iget-object p1, p1, Lcom/metamoji/nt/NtAuthorInfo;->mCompanyId:Ljava/lang/String;

    if-nez p1, :cond_7

    :goto_3
    return v0

    :cond_7
    return v1
.end method

.method public getActionTime()Ljava/util/Date;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/metamoji/nt/NtAuthorInfo;->mActionTime:Ljava/util/Date;

    return-object v0
.end method

.method public getActionTimeInUnixTimestamp()D
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/metamoji/nt/NtAuthorInfo;->mActionTime:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 115
    :cond_0
    invoke-static {v0}, Lcom/metamoji/cm/TimeUtils;->date2unixtime(Ljava/util/Date;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCompanyId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/metamoji/nt/NtAuthorInfo;->mCompanyId:Ljava/lang/String;

    return-object v0
.end method

.method public getDcUserId()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/metamoji/nt/NtAuthorInfo;->mDcUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getDcUserName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/metamoji/nt/NtAuthorInfo;->mDcUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/metamoji/nt/NtAuthorInfo;->mRoomId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/metamoji/nt/NtAuthorInfo;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setActionTime(D)V
    .locals 0

    .line 122
    invoke-static {p1, p2}, Lcom/metamoji/cm/TimeUtils;->unixtime2datetime(D)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mActionTime:Ljava/util/Date;

    return-void
.end method

.method public setActionTime(Ljava/util/Date;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mActionTime:Ljava/util/Date;

    return-void
.end method

.method public setCompanyId(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mCompanyId:Ljava/lang/String;

    return-void
.end method

.method public setDcUserId(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mDcUserId:Ljava/lang/String;

    return-void
.end method

.method public setDcUserName(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mDcUserName:Ljava/lang/String;

    return-void
.end method

.method public setRoomId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mRoomId:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public toDictionary()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mRoomId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 149
    const-string v2, "r"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mUserId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 152
    const-string/jumbo v2, "u"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mCompanyId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 155
    const-string v2, "c"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mDcUserId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 158
    const-string v2, "d"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_3
    iget-object v1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mDcUserName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 161
    const-string v2, "n"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_4
    iget-object v1, p0, Lcom/metamoji/nt/NtAuthorInfo;->mActionTime:Ljava/util/Date;

    if-eqz v1, :cond_5

    .line 164
    invoke-static {v1}, Lcom/metamoji/cm/TimeUtils;->date2unixtime(Ljava/util/Date;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "t"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v0, 0x0

    :cond_6
    return-object v0
.end method
