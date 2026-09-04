.class Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1$1;
.super Ljava/lang/Object;
.source "SdPrivateDriveManagerInitializer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;->call()Ljava/lang/Void;
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
.field final synthetic this$0:Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;

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

    .line 86
    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;

    iget-object v1, v1, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getCurrentPrivateDrive(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    move-result-object v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;

    iget-object v1, v1, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    const-string v2, "-1"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveWithoutMergingByUserId(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    invoke-direct {v0}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;

    iget-object v1, v1, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->generatePrivateId(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setId(Ljava/lang/String;)V

    .line 97
    invoke-static {v0, v2}, Lcom/metamoji/sd/entities/SdMOUtils;->initializeMOPrivateDrive(Lcom/metamoji/sd/entities/SdMOPrivateDrive;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    .line 100
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setCurrent(Ljava/lang/Boolean;)V

    .line 101
    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;

    iget-object v1, v1, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->createOrUpdatePrivateDrive(Lcom/metamoji/sd/entities/SdMOPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 102
    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1$1;->this$0:Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;

    iget-object v1, v1, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;->val$changedPrivateId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
