.class Lcom/metamoji/dvm/DvmDriveManager$2;
.super Ljava/lang/Object;
.source "DvmDriveManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dvm/DvmDriveManager;->clearDrive(Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/dvm/DvmDriveManager;


# direct methods
.method constructor <init>(Lcom/metamoji/dvm/DvmDriveManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 322
    iput-object p1, p0, Lcom/metamoji/dvm/DvmDriveManager$2;->this$0:Lcom/metamoji/dvm/DvmDriveManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager$2;->this$0:Lcom/metamoji/dvm/DvmDriveManager;

    invoke-virtual {v0}, Lcom/metamoji/dvm/DvmDriveManager;->clearnupDiscardedDrives()V

    return-void
.end method
