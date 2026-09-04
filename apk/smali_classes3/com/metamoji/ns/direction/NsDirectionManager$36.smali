.class Lcom/metamoji/ns/direction/NsDirectionManager$36;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->collaboDirectionReceived(Ljava/lang/String;Ljava/lang/String;[BLcom/metamoji/ns/direction/NsDirectionReceiveInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$receiveInfo:Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;)V
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

    .line 2346
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$36;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$36;->val$receiveInfo:Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2350
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$36;->val$receiveInfo:Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->boothId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->startReceivingData(Ljava/lang/String;)V

    return-void
.end method
