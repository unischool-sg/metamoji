.class Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;
.super Ljava/lang/Object;
.source "CsDCUserInfoSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

.field final synthetic val$encCoLoginId:[B

.field final synthetic val$encCompanyId:[B

.field final synthetic val$encCompanyName:[B

.field final synthetic val$encEmail:[B

.field final synthetic val$encInputedRootServer:[B

.field final synthetic val$encLoginName:[B

.field final synthetic val$encNickname:[B

.field final synthetic val$encPasscode:[B

.field final synthetic val$encPassword:[B

.field final synthetic val$encPreviousUserId:[B

.field final synthetic val$encQwd:[B

.field final synthetic val$encRestHost:[B

.field final synthetic val$encServerDeviceId:[B

.field final synthetic val$encUserId:[B

.field final synthetic val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;[B[B[B[B[B[B[BLcom/metamoji/cs/dc/user/CsDCUserInfo;[B[B[B[B[B[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->this$0:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    iput-object p2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encCompanyId:[B

    iput-object p3, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encCoLoginId:[B

    iput-object p4, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encLoginName:[B

    iput-object p5, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encPasscode:[B

    iput-object p6, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encRestHost:[B

    iput-object p7, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encInputedRootServer:[B

    iput-object p8, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encCompanyName:[B

    iput-object p9, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iput-object p10, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encUserId:[B

    iput-object p11, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encEmail:[B

    iput-object p12, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encPassword:[B

    iput-object p13, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encQwd:[B

    iput-object p14, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encNickname:[B

    iput-object p15, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encPreviousUserId:[B

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encServerDeviceId:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 347
    iget-object v0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->this$0:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encCompanyId:[B

    const-string v2, "companyId"

    const/4 v3, 0x0

    const-string v4, "application/octet-stream"

    if-eqz v1, :cond_0

    .line 363
    new-instance v1, Lcom/metamoji/cm/Blob;

    iget-object v5, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encCompanyId:[B

    invoke-direct {v1, v5, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 364
    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_0

    .line 367
    :cond_0
    invoke-interface {v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 371
    :goto_0
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encCoLoginId:[B

    const-string v2, "coLoginId"

    if-eqz v1, :cond_1

    .line 372
    new-instance v1, Lcom/metamoji/cm/Blob;

    iget-object v5, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encCoLoginId:[B

    invoke-direct {v1, v5, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 373
    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_1

    .line 376
    :cond_1
    invoke-interface {v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 380
    :goto_1
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encLoginName:[B

    const-string v2, "loginName"

    if-eqz v1, :cond_2

    .line 381
    new-instance v1, Lcom/metamoji/cm/Blob;

    iget-object v5, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encLoginName:[B

    invoke-direct {v1, v5, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 382
    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_2

    .line 385
    :cond_2
    invoke-interface {v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 389
    :goto_2
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encPasscode:[B

    const-string v2, "passcode"

    if-eqz v1, :cond_3

    .line 390
    new-instance v1, Lcom/metamoji/cm/Blob;

    iget-object v5, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encPasscode:[B

    invoke-direct {v1, v5, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 391
    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_3

    .line 394
    :cond_3
    invoke-interface {v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 398
    :goto_3
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encRestHost:[B

    const-string v2, "restHost"

    if-eqz v1, :cond_4

    .line 399
    new-instance v1, Lcom/metamoji/cm/Blob;

    iget-object v5, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encRestHost:[B

    invoke-direct {v1, v5, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 400
    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_4

    .line 403
    :cond_4
    invoke-interface {v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 407
    :goto_4
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encInputedRootServer:[B

    const-string v2, "inputedRootServer"

    if-eqz v1, :cond_5

    .line 408
    new-instance v1, Lcom/metamoji/cm/Blob;

    iget-object v5, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encInputedRootServer:[B

    invoke-direct {v1, v5, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 409
    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_5

    .line 412
    :cond_5
    invoke-interface {v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 416
    :goto_5
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encCompanyName:[B

    if-eqz v1, :cond_6

    .line 417
    new-instance v1, Lcom/metamoji/cm/Blob;

    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encCompanyName:[B

    invoke-direct {v1, v2, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 418
    const-string v2, "companyName"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_6

    .line 421
    :cond_6
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->this$0:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    invoke-static {v2}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->-$$Nest$fget_cache(Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;)Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    .line 425
    :goto_6
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyVersion:I

    const-string v2, "companyVersion"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 427
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-boolean v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    const-string v2, "isOnPremise"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 429
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-boolean v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isClassRoom:Z

    const-string v2, "isClassRoom"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 432
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-boolean v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isAdmin:Z

    const-string v2, "isAdmin"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 435
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encUserId:[B

    const-string v2, "userId"

    if-eqz v1, :cond_7

    .line 436
    new-instance v1, Lcom/metamoji/cm/Blob;

    iget-object v5, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encUserId:[B

    invoke-direct {v1, v5, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 437
    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_7

    .line 440
    :cond_7
    invoke-interface {v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 444
    :goto_7
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encEmail:[B

    const-string v2, "email"

    if-eqz v1, :cond_8

    .line 445
    new-instance v1, Lcom/metamoji/cm/Blob;

    iget-object v5, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encEmail:[B

    invoke-direct {v1, v5, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 446
    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_8

    .line 449
    :cond_8
    invoke-interface {v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 453
    :goto_8
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encPassword:[B

    const-string v2, "password"

    if-eqz v1, :cond_9

    .line 454
    new-instance v1, Lcom/metamoji/cm/Blob;

    iget-object v5, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encPassword:[B

    invoke-direct {v1, v5, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 455
    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_9

    .line 458
    :cond_9
    invoke-interface {v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 462
    :goto_9
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encQwd:[B

    const-string v2, "qwd"

    if-eqz v1, :cond_a

    .line 463
    new-instance v1, Lcom/metamoji/cm/Blob;

    iget-object v5, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encQwd:[B

    invoke-direct {v1, v5, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 464
    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_a

    .line 467
    :cond_a
    invoke-interface {v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 471
    :goto_a
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-boolean v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autologin:Z

    const-string v2, "autologin"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 474
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->maintenanceCheckURL:Ljava/lang/String;

    const-string v2, "maintCheckURL"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const-string v2, "userStatus"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 480
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encNickname:[B

    const-string v2, "nickname"

    if-eqz v1, :cond_b

    .line 481
    new-instance v1, Lcom/metamoji/cm/Blob;

    iget-object v5, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encNickname:[B

    invoke-direct {v1, v5, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 482
    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_b

    .line 485
    :cond_b
    invoke-interface {v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 488
    :goto_b
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encPreviousUserId:[B

    const-string v2, "prevUserId"

    if-eqz v1, :cond_c

    .line 489
    new-instance v1, Lcom/metamoji/cm/Blob;

    iget-object v5, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encPreviousUserId:[B

    invoke-direct {v1, v5, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 490
    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_c

    .line 493
    :cond_c
    invoke-interface {v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 496
    :goto_c
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encServerDeviceId:[B

    const-string v2, "serverDeviceId"

    if-eqz v1, :cond_d

    .line 497
    new-instance v1, Lcom/metamoji/cm/Blob;

    iget-object v3, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$encServerDeviceId:[B

    invoke-direct {v1, v3, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 498
    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_d

    .line 501
    :cond_d
    invoke-interface {v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 505
    :goto_d
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userLockToken:Ljava/lang/String;

    const-string v2, "userLockToken"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->lastSyncedTime:Ljava/util/Date;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->lastSyncedTime:Ljava/util/Date;

    goto :goto_e

    :cond_e
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_e
    invoke-static {v1}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v4

    .line 509
    const-string v1, "lastSyncedTime"

    invoke-interface {v0, v1, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 512
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->lastDownloadSyncedTime:Ljava/util/Date;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->lastDownloadSyncedTime:Ljava/util/Date;

    goto :goto_f

    :cond_f
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_f
    invoke-static {v1}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v4

    .line 513
    const-string v1, "lastDownloadSyncedTime"

    invoke-interface {v0, v1, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 515
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-boolean v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->useSync:Z

    const-string v4, "useSync"

    invoke-interface {v0, v4, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 517
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-boolean v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autoSync:Z

    const-string v4, "autoSync"

    invoke-interface {v0, v4, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 519
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-wide v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autoSyncInterval:D

    const-string v1, "autoSyncInterval"

    invoke-interface {v0, v1, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 521
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-wide v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autoSyncIntervalForFree:D

    const-string v1, "autoSyncIntervalForFree"

    invoke-interface {v0, v1, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 523
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-boolean v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->syncWithCellular:Z

    const-string v4, "syncWithCellular"

    invoke-interface {v0, v4, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 525
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->lastInviteToBasicDate:Ljava/util/Date;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->lastInviteToBasicDate:Ljava/util/Date;

    goto :goto_10

    :cond_10
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_10
    invoke-static {v1}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v4

    .line 526
    const-string v1, "lastInvitedBasicDate"

    invoke-interface {v0, v1, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 528
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->expireDate:Ljava/util/Date;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->expireDate:Ljava/util/Date;

    goto :goto_11

    :cond_11
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_11
    invoke-static {v1}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v4

    .line 529
    const-string v1, "expireDate"

    invoke-interface {v0, v1, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 531
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->expireDateStr:Ljava/lang/String;

    const-string v4, "expireDateStr"

    invoke-interface {v0, v4, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverDate:Ljava/util/Date;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverDate:Ljava/util/Date;

    goto :goto_12

    :cond_12
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_12
    invoke-static {v1}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v1

    .line 534
    const-string v3, "serverDate"

    invoke-interface {v0, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 536
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->licenseInfoCache:Ljava/util/Map;

    const-string v2, "licenseInfo"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 538
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serviceSettings:Ljava/util/Map;

    const-string v2, "serviceSettings"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 540
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->featureCustomizeSettings:Ljava/util/Map;

    const-string v2, "featureCustomizeSettings"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 542
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-wide v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->basicCourseCheckPoint:D

    const-string v3, "basicValidateCheckPoint"

    invoke-interface {v0, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 544
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->locale:Ljava/lang/String;

    const-string v2, "locale"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->timezone:Ljava/lang/String;

    const-string v2, "timezone"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-boolean v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->completeRecovery:Z

    const-string v2, "completeRecovery"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 550
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-boolean v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->hasCRLicense:Z

    const-string v2, "hasCRLicense"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 552
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-boolean v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->readOnlyUser:Z

    const-string v2, "readOnlyUser"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 554
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverVersion:I

    const-string v2, "serverVersion"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 558
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->currentGroupId:Ljava/lang/String;

    const-string v2, "currentGroupId"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->classGroupId:Ljava/lang/String;

    const-string v2, "classGroupId"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->idNumber:Ljava/lang/String;

    const-string v2, "idNumber"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->this$0:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->clone()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->-$$Nest$fput_cache(Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_13

    :catch_0
    move-exception v0

    .line 566
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 569
    :goto_13
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    new-instance v1, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {v1}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->ensureSaved(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    return-void
.end method
