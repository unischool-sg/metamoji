.class public Lcom/metamoji/cs/dc/user/CsDCUserInfo;
.super Ljava/lang/Object;
.source "CsDCUserInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final SERVICE_SETTINGS_KEY_CUSTOMIZE:Ljava/lang/String; = "customize"

.field public static final SERVICE_SETTINGS_KEY_MAZEC:Ljava/lang/String; = "mazec"


# instance fields
.field public alreadyLogined:Z

.field public autoSync:Z

.field public autoSyncInterval:D

.field public autoSyncIntervalForFree:D

.field public autologin:Z

.field public basicCourseCheckPoint:D

.field public classGroupId:Ljava/lang/String;

.field public coLoginId:Ljava/lang/String;

.field public companyId:Ljava/lang/String;

.field public companyName:Ljava/lang/String;

.field public companyVersion:I

.field public completeRecovery:Z

.field public currentGroupId:Ljava/lang/String;

.field public dcPlanName:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public expireDate:Ljava/util/Date;

.field public expireDateStr:Ljava/lang/String;

.field public featureCustomizeSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public hasCRLicense:Z

.field public idNumber:Ljava/lang/String;

.field public inputedRootServer:Ljava/lang/String;

.field public isAdmin:Z

.field public isClassRoom:Z

.field public isGold:Z

.field public isOnPremise:Z

.field public lastDownloadSyncedTime:Ljava/util/Date;

.field public lastInviteToBasicDate:Ljava/util/Date;

.field public lastSyncedTime:Ljava/util/Date;

.field public licenseInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public locale:Ljava/lang/String;

.field public loginName:Ljava/lang/String;

.field public loginedPassword:Ljava/lang/String;

.field public loginedQwd:Ljava/lang/String;

.field public maintenanceCheckURL:Ljava/lang/String;

.field public needRecovery:Z

.field public nickname:Ljava/lang/String;

.field public passcode:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public previousUserId:Ljava/lang/String;

.field public qwd:Ljava/lang/String;

.field public readOnlyUser:Z

.field public remainingMonths:I

.field public restHost:Ljava/lang/String;

.field public serverDate:Ljava/util/Date;

.field public serverDeviceId:Ljava/lang/String;

.field public serverTimeCache:Ljava/util/Date;

.field public serverVersion:I

.field public serviceSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public syncWithCellular:Z

.field public timezone:Ljava/lang/String;

.field public useSync:Z

.field public userActionInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public userId:Ljava/lang/String;

.field public userLockToken:Ljava/lang/String;

.field public userType:I

.field public userUsageDiskSpace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clone()Lcom/metamoji/cs/dc/user/CsDCUserInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 262
    new-instance v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfo;-><init>()V

    .line 265
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 266
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->passcode:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->passcode:Ljava/lang/String;

    .line 269
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->restHost:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->restHost:Ljava/lang/String;

    .line 270
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->inputedRootServer:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->inputedRootServer:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    .line 272
    iget v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyVersion:I

    iput v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyVersion:I

    .line 273
    iget-boolean v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    iput-boolean v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    .line 274
    iget-boolean v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isClassRoom:Z

    iput-boolean v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isClassRoom:Z

    .line 277
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->currentGroupId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->currentGroupId:Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->classGroupId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->classGroupId:Ljava/lang/String;

    .line 279
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->idNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->idNumber:Ljava/lang/String;

    .line 281
    iget-boolean v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isAdmin:Z

    iput-boolean v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isAdmin:Z

    .line 283
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    .line 284
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 285
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    .line 286
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 287
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    .line 288
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    .line 289
    iget-boolean v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autologin:Z

    iput-boolean v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autologin:Z

    .line 290
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->maintenanceCheckURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->maintenanceCheckURL:Ljava/lang/String;

    .line 291
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    .line 292
    iget v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    iput v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    .line 293
    iget-boolean v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->alreadyLogined:Z

    iput-boolean v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->alreadyLogined:Z

    .line 294
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->previousUserId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->previousUserId:Ljava/lang/String;

    .line 295
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userLockToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userLockToken:Ljava/lang/String;

    .line 296
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->lastSyncedTime:Ljava/util/Date;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->lastSyncedTime:Ljava/util/Date;

    .line 298
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverDate:Ljava/util/Date;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverDate:Ljava/util/Date;

    .line 299
    iget-boolean v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isGold:Z

    iput-boolean v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isGold:Z

    .line 300
    iget v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->remainingMonths:I

    iput v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->remainingMonths:I

    .line 301
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->expireDate:Ljava/util/Date;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->expireDate:Ljava/util/Date;

    .line 302
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->expireDateStr:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->expireDateStr:Ljava/lang/String;

    .line 304
    iget-boolean v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->useSync:Z

    iput-boolean v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->useSync:Z

    .line 305
    iget-boolean v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autoSync:Z

    iput-boolean v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autoSync:Z

    .line 306
    iget-boolean v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->syncWithCellular:Z

    iput-boolean v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->syncWithCellular:Z

    .line 307
    iget-wide v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autoSyncInterval:D

    iput-wide v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autoSyncInterval:D

    .line 308
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->lastDownloadSyncedTime:Ljava/util/Date;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->lastDownloadSyncedTime:Ljava/util/Date;

    .line 309
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->dcPlanName:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->dcPlanName:Ljava/lang/String;

    .line 310
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userUsageDiskSpace:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userUsageDiskSpace:Ljava/lang/String;

    .line 311
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->licenseInfoCache:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 312
    new-instance v1, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->licenseInfoCache:Ljava/util/Map;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->licenseInfoCache:Ljava/util/Map;

    goto :goto_0

    .line 314
    :cond_0
    iput-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->licenseInfoCache:Ljava/util/Map;

    .line 316
    :goto_0
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userActionInfoCache:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 317
    new-instance v1, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userActionInfoCache:Ljava/util/Map;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userActionInfoCache:Ljava/util/Map;

    goto :goto_1

    .line 319
    :cond_1
    iput-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userActionInfoCache:Ljava/util/Map;

    .line 321
    :goto_1
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serviceSettings:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 322
    new-instance v1, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serviceSettings:Ljava/util/Map;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serviceSettings:Ljava/util/Map;

    goto :goto_2

    .line 324
    :cond_2
    iput-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serviceSettings:Ljava/util/Map;

    .line 326
    :goto_2
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->featureCustomizeSettings:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 327
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->featureCustomizeSettings:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->featureCustomizeSettings:Ljava/util/Map;

    goto :goto_3

    .line 329
    :cond_3
    iput-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->featureCustomizeSettings:Ljava/util/Map;

    .line 331
    :goto_3
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverTimeCache:Ljava/util/Date;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverTimeCache:Ljava/util/Date;

    .line 332
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->lastInviteToBasicDate:Ljava/util/Date;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->lastInviteToBasicDate:Ljava/util/Date;

    .line 333
    iget-wide v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->basicCourseCheckPoint:D

    iput-wide v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->basicCourseCheckPoint:D

    .line 334
    iget-wide v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autoSyncIntervalForFree:D

    iput-wide v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autoSyncIntervalForFree:D

    .line 335
    iget-boolean v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->needRecovery:Z

    iput-boolean v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->needRecovery:Z

    .line 336
    iget-boolean v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->completeRecovery:Z

    iput-boolean v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->completeRecovery:Z

    .line 337
    iget-boolean v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->hasCRLicense:Z

    iput-boolean v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->hasCRLicense:Z

    .line 338
    iget-boolean v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->readOnlyUser:Z

    iput-boolean v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->readOnlyUser:Z

    .line 339
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverDeviceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverDeviceId:Ljava/lang/String;

    .line 341
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->locale:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->locale:Ljava/lang/String;

    .line 342
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->timezone:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->timezone:Ljava/lang/String;

    .line 344
    iget v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverVersion:I

    iput v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverVersion:I

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->clone()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServiceSetting(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serviceSettings:Ljava/util/Map;

    if-nez v1, :cond_1

    return-object v0

    .line 243
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    .line 248
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 251
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-static {v1}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public hasLicense(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 157
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->licenseInfoCache:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_2

    .line 162
    :cond_0
    const-string v2, "licenselist"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    return v0

    :cond_1
    move v2, v0

    .line 168
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 170
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 171
    const-string v4, "licenseId"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_1

    .line 174
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v0
.end method

.method public isAppLicenseValid()Z
    .locals 1

    .line 219
    const-string v0, "CR"

    .line 226
    invoke-virtual {p0, v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isLicenseValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAvailablePremiumFunction(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isLicenseValid(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 114
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->licenseInfoCache:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_2

    .line 119
    :cond_0
    const-string v2, "licenselist"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    return v0

    :cond_1
    move v2, v0

    .line 125
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 127
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 128
    const-string v4, "licenseId"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 132
    const-string p1, "expireDateVal"

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 133
    invoke-static {p1, v1, v2}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Lcom/metamoji/dm/fw/DmUtils;->dateFromNumber(D)Ljava/util/Date;

    move-result-object p1

    .line 135
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 137
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverDate:Ljava/util/Date;

    invoke-virtual {p1, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-lez p1, :cond_3

    return v2

    :cond_3
    return v0

    .line 140
    :cond_4
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 141
    invoke-virtual {p1, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-lez p1, :cond_5

    return v2

    :cond_5
    return v0

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return v0
.end method

.method public declared-synchronized onSuccessLogin(Ljava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->previousUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->previousUserId:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->alreadyLogined:Z

    .line 190
    iput-object p1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 191
    iput-boolean p2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autologin:Z

    .line 193
    iget p1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    .line 194
    iput p2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
