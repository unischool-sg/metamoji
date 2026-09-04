.class Lcom/metamoji/ns/direction/NsDirectionManager$37$1;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager$37;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/direction/NsDirectionManager$37;

.field final synthetic val$boothID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager$37;Ljava/lang/String;)V
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

    .line 2393
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$37$1;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$37;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$37$1;->val$boothID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2397
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$37$1;->val$boothID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->endReceivingData(Ljava/lang/String;)V

    return-void
.end method
