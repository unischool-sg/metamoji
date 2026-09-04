.class Lcom/metamoji/sd/SdPrivateDriveManager$1;
.super Ljava/lang/Object;
.source "SdPrivateDriveManager.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdPrivateDriveManager;->handleChangeUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/sd/SdBlock<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

.field final synthetic val$currentAfterFirstLogin:Lcom/metamoji/sd/SdValue;

.field final synthetic val$isFirstLogin:Lcom/metamoji/sd/SdValue;

.field final synthetic val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

.field final synthetic val$pdmgr:Lcom/metamoji/sd/SdPrivateDriveManager;

.field final synthetic val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdPrivateDriveMOManager;Lcom/metamoji/cs/dc/user/CsDCUserInfo;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdPrivateDriveManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iput-object p3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iput-object p4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$isFirstLogin:Lcom/metamoji/sd/SdValue;

    iput-object p5, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$currentAfterFirstLogin:Lcom/metamoji/sd/SdValue;

    iput-object p6, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$pdmgr:Lcom/metamoji/sd/SdPrivateDriveManager;

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

    .line 147
    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveManager$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v1, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/sd/SdPrivateDriveManager$1$1;-><init>(Lcom/metamoji/sd/SdPrivateDriveManager$1;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$isFirstLogin:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$currentAfterFirstLogin:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    .line 253
    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$1;->val$pdmgr:Lcom/metamoji/sd/SdPrivateDriveManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdPrivateDriveManager;->getDocumentManagerByPrivateId(Ljava/lang/String;)Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/sd/cs/SdCloudService;->getContext()Lcom/metamoji/sd/cs/SdCloudServiceContext;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->setUserId(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
