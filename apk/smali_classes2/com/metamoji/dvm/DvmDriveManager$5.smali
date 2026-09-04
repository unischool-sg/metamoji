.class Lcom/metamoji/dvm/DvmDriveManager$5;
.super Ljava/lang/Object;
.source "DvmDriveManager.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dvm/DvmDriveManager;->putDriveStatusOff(Ljava/lang/String;I)Z
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
.field final synthetic this$0:Lcom/metamoji/dvm/DvmDriveManager;

.field final synthetic val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$flags:I

.field final synthetic val$hasError:Lcom/metamoji/sd/SdValue;


# direct methods
.method constructor <init>(Lcom/metamoji/dvm/DvmDriveManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/lang/String;Lcom/metamoji/sd/SdValue;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 433
    iput-object p1, p0, Lcom/metamoji/dvm/DvmDriveManager$5;->this$0:Lcom/metamoji/dvm/DvmDriveManager;

    iput-object p2, p0, Lcom/metamoji/dvm/DvmDriveManager$5;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p3, p0, Lcom/metamoji/dvm/DvmDriveManager$5;->val$driveId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/dvm/DvmDriveManager$5;->val$hasError:Lcom/metamoji/sd/SdValue;

    iput p5, p0, Lcom/metamoji/dvm/DvmDriveManager$5;->val$flags:I

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

    .line 433
    invoke-virtual {p0}, Lcom/metamoji/dvm/DvmDriveManager$5;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager$5;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v1, Lcom/metamoji/dvm/DvmDriveManager$5$1;

    invoke-direct {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager$5$1;-><init>(Lcom/metamoji/dvm/DvmDriveManager$5;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
