.class Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;
.super Ljava/lang/Object;
.source "CsDCUserInfoSettings.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->initUserInfo(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/cs/dc/user/CsDCUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/user/CsDCUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

.field final synthetic val$model:Lcom/metamoji/df/model/IModel;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;Lcom/metamoji/df/model/IModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 598
    iput-object p1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->this$0:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    iput-object p2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/user/CsDCUserInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 601
    new-instance v0, Lcom/metamoji/cm/PBE;

    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v2, "init"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/cm/PBE;-><init>(Ljava/lang/String;)V

    .line 603
    new-instance v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfo;-><init>()V

    .line 608
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "companyId"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 610
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/PBE;->decryptString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 614
    :cond_0
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "coLoginId"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 616
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/PBE;->decryptString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    .line 620
    :cond_1
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "loginName"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 622
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/PBE;->decryptString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    .line 626
    :cond_2
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "passcode"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 628
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/PBE;->decryptString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->passcode:Ljava/lang/String;

    .line 632
    :cond_3
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "restHost"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 634
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/PBE;->decryptString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->restHost:Ljava/lang/String;

    .line 638
    :cond_4
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "inputedRootServer"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 640
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/PBE;->decryptString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->inputedRootServer:Ljava/lang/String;

    .line 644
    :cond_5
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "companyName"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 646
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/PBE;->decryptString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    .line 650
    :cond_6
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "companyVersion"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyVersion:I

    .line 651
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "isOnPremise"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    .line 652
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "isClassRoom"

    invoke-interface {v2, v3, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isClassRoom:Z

    .line 655
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "isAdmin"

    invoke-interface {v2, v3, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isAdmin:Z

    .line 658
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "userId"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 660
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/PBE;->decryptString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    .line 664
    :cond_7
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "email"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 666
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/PBE;->decryptString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 670
    :cond_8
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "password"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 672
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/PBE;->decryptString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    .line 676
    :cond_9
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "qwd"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 678
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/PBE;->decryptString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    .line 682
    :cond_a
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "autologin"

    invoke-interface {v2, v3, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autologin:Z

    .line 685
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "maintCheckURL"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->maintenanceCheckURL:Ljava/lang/String;

    .line 688
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "nickname"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 690
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/PBE;->decryptString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    .line 694
    :cond_b
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "userStatus"

    invoke-interface {v2, v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    .line 697
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "prevUserId"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 699
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/PBE;->decryptString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->previousUserId:Ljava/lang/String;

    .line 703
    :cond_c
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "userLockToken"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userLockToken:Ljava/lang/String;

    .line 706
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "lastSyncedTime"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v3, v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 707
    invoke-static {v2, v3}, Lcom/metamoji/dm/fw/DmUtils;->dateFromNumber(D)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->lastSyncedTime:Ljava/util/Date;

    .line 710
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "lastDownloadSyncedTime"

    invoke-interface {v2, v3, v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v2, v8

    const/4 v11, 0x0

    if-lez v10, :cond_d

    .line 712
    invoke-static {v2, v3}, Lcom/metamoji/dm/fw/DmUtils;->dateFromNumber(D)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->lastDownloadSyncedTime:Ljava/util/Date;

    goto :goto_0

    .line 714
    :cond_d
    iput-object v11, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->lastDownloadSyncedTime:Ljava/util/Date;

    .line 718
    :goto_0
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "useSync"

    invoke-interface {v2, v3, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->useSync:Z

    .line 721
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "autoSync"

    invoke-interface {v2, v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autoSync:Z

    .line 724
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "syncWithCellular"

    invoke-interface {v2, v3, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->syncWithCellular:Z

    .line 726
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "autoSyncInterval"

    sget-wide v12, Lcom/metamoji/cs/dc/user/CsDCPremiumUserAutoSyncInterval;->INTERVAL60MIN:D

    invoke-interface {v2, v3, v12, v13}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 727
    iput-wide v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autoSyncInterval:D

    .line 729
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "autoSyncIntervalForFree"

    const-wide v12, 0x40f5180000000000L    # 86400.0

    invoke-interface {v2, v3, v12, v13}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 730
    iput-wide v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autoSyncIntervalForFree:D

    .line 732
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "lastInvitedBasicDate"

    invoke-interface {v2, v3, v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    cmpl-double v10, v2, v8

    if-lez v10, :cond_e

    .line 734
    invoke-static {v2, v3}, Lcom/metamoji/dm/fw/DmUtils;->dateFromNumber(D)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->lastInviteToBasicDate:Ljava/util/Date;

    goto :goto_1

    .line 736
    :cond_e
    iput-object v11, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->lastInviteToBasicDate:Ljava/util/Date;

    .line 739
    :goto_1
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "expireDate"

    invoke-interface {v2, v3, v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    cmpl-double v10, v2, v8

    if-lez v10, :cond_f

    .line 741
    invoke-static {v2, v3}, Lcom/metamoji/dm/fw/DmUtils;->dateFromNumber(D)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->expireDate:Ljava/util/Date;

    goto :goto_2

    .line 743
    :cond_f
    iput-object v11, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->expireDate:Ljava/util/Date;

    .line 746
    :goto_2
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "expireDateStr"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->expireDateStr:Ljava/lang/String;

    .line 748
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "licenseInfo"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->licenseInfoCache:Ljava/util/Map;

    .line 750
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "serviceSettings"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serviceSettings:Ljava/util/Map;

    .line 752
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "featureCustomizeSettings"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->featureCustomizeSettings:Ljava/util/Map;

    .line 754
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "serverDate"

    invoke-interface {v2, v3, v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    cmpl-double v6, v2, v8

    if-lez v6, :cond_10

    .line 756
    invoke-static {v2, v3}, Lcom/metamoji/dm/fw/DmUtils;->dateFromNumber(D)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverDate:Ljava/util/Date;

    goto :goto_3

    .line 758
    :cond_10
    iput-object v11, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverDate:Ljava/util/Date;

    .line 761
    :goto_3
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "basicValidateCheckPoint"

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-interface {v2, v3, v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->basicCourseCheckPoint:D

    .line 764
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "locale"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->locale:Ljava/lang/String;

    .line 767
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "timezone"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->timezone:Ljava/lang/String;

    .line 769
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "completeRecovery"

    invoke-interface {v2, v3, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->completeRecovery:Z

    .line 771
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "hasCRLicense"

    invoke-interface {v2, v3, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->hasCRLicense:Z

    .line 773
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "readOnlyUser"

    invoke-interface {v2, v3, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->readOnlyUser:Z

    .line 775
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "serverVersion"

    invoke-interface {v2, v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverVersion:I

    .line 777
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v3, "serverDeviceId"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 779
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/PBE;->decryptString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverDeviceId:Ljava/lang/String;

    .line 784
    :cond_11
    iget-object v0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v2, "currentGroupId"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->currentGroupId:Ljava/lang/String;

    .line 785
    iget-object v0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v2, "classGroupId"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->classGroupId:Ljava/lang/String;

    .line 786
    iget-object v0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->val$model:Lcom/metamoji/df/model/IModel;

    const-string v2, "idNumber"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->idNumber:Ljava/lang/String;

    .line 789
    iget-object v0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->this$0:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->-$$Nest$fput_cache(Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 598
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings$2;->call()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    return-object v0
.end method
