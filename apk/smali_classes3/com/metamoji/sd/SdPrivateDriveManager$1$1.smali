.class Lcom/metamoji/sd/SdPrivateDriveManager$1$1;
.super Ljava/lang/Object;
.source "SdPrivateDriveManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdPrivateDriveManager$1;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdPrivateDriveManager$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v1, v1, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getCurrentPrivateDrive(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 159
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getUserId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 189
    iget-object v4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    .line 160
    iget-object v2, v4, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$isFirstLogin:Lcom/metamoji/sd/SdValue;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    .line 166
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v3, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v4, v4, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveByUserId(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    move-result-object v2

    if-nez v2, :cond_2

    .line 170
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setUserId(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_0

    .line 172
    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setCurrent(Ljava/lang/Boolean;)V

    .line 173
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setCurrent(Ljava/lang/Boolean;)V

    .line 174
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setMerging(Ljava/lang/Boolean;)V

    .line 177
    new-instance v3, Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;

    invoke-direct {v3}, Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;-><init>()V

    .line 178
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;->setId(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;->setDestId(Ljava/lang/String;)V

    .line 181
    iget-object v4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v4, v4, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v5, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v5, v5, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v3, v5}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->createMergingPrivateDrive(Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 184
    :goto_0
    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v4, v4, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v0, v4}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->updatePrivateDrive(Lcom/metamoji/sd/entities/SdMOPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 185
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->updatePrivateDrive(Lcom/metamoji/sd/entities/SdMOPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 186
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$currentAfterFirstLogin:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    :goto_1
    return-object v1

    .line 189
    :cond_4
    iget-object v2, v4, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_2

    .line 211
    :cond_5
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    .line 215
    :cond_6
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v3, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v4, v4, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveWithoutMergingByUserId(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    move-result-object v2

    if-nez v2, :cond_7

    .line 218
    new-instance v2, Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    invoke-direct {v2}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;-><init>()V

    .line 219
    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v4, v4, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->generatePrivateId(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setId(Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v3, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setUserId(Ljava/lang/String;)V

    .line 221
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setCurrent(Ljava/lang/Boolean;)V

    .line 222
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setMerging(Ljava/lang/Boolean;)V

    .line 223
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setStatus(Ljava/lang/Integer;)V

    .line 226
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/sd/SdPrivateDriveManager;->preparePrivateDrive(Ljava/lang/String;)Z

    .line 229
    :cond_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setCurrent(Ljava/lang/Boolean;)V

    .line 230
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setCurrent(Ljava/lang/Boolean;)V

    .line 232
    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v4, v4, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v2, v4}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->createOrUpdatePrivateDrive(Lcom/metamoji/sd/entities/SdMOPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 233
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->updatePrivateDrive(Lcom/metamoji/sd/entities/SdMOPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_3

    .line 191
    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v4, v4, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveWithoutMergingByUserId(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    move-result-object v2

    if-nez v2, :cond_9

    .line 194
    new-instance v2, Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    invoke-direct {v2}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;-><init>()V

    .line 195
    iget-object v4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v4, v4, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v7, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v7, v7, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v7}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->generatePrivateId(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setId(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setUserId(Ljava/lang/String;)V

    .line 197
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setCurrent(Ljava/lang/Boolean;)V

    .line 198
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setMerging(Ljava/lang/Boolean;)V

    .line 199
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setStatus(Ljava/lang/Integer;)V

    .line 202
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/sd/SdPrivateDriveManager;->preparePrivateDrive(Ljava/lang/String;)Z

    .line 205
    :cond_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setCurrent(Ljava/lang/Boolean;)V

    .line 206
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setCurrent(Ljava/lang/Boolean;)V

    .line 208
    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v4, v4, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v2, v4}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->createOrUpdatePrivateDrive(Lcom/metamoji/sd/entities/SdMOPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 209
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->updatePrivateDrive(Lcom/metamoji/sd/entities/SdMOPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 237
    :goto_3
    new-instance v2, Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;

    invoke-direct {v2}, Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;-><init>()V

    .line 238
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;->setId(Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v4, v4, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v2, v4}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->createDiscardedPrivateDrive(Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 240
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager$1;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->deletePrivateDrive(Lcom/metamoji/sd/entities/SdMOPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 244
    :goto_4
    invoke-static {}, Lcom/metamoji/sd/cs/SdHttpClient;->clearCookies()V

    return-object v1
.end method
