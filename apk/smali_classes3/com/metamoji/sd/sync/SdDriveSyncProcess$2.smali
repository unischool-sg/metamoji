.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$2;
.super Lcom/metamoji/sd/SdSuccessBlock;
.source "SdDriveSyncProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doGetHome()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 352
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$2;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    invoke-direct {p0}, Lcom/metamoji/sd/SdSuccessBlock;-><init>()V

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

    .line 352
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
