.class Lcom/metamoji/ns/NsCollaboManager$28;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->modeChangeForLog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$boothId:Ljava/lang/String;

.field final synthetic val$directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$logModeStatus_:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

.field final synthetic val$logMode_:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/ns/direction/NsDirectionManager;ZLjava/lang/String;Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;)V
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

    .line 2565
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$28;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager$28;->val$directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-boolean p3, p0, Lcom/metamoji/ns/NsCollaboManager$28;->val$logMode_:Z

    iput-object p4, p0, Lcom/metamoji/ns/NsCollaboManager$28;->val$boothId:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ns/NsCollaboManager$28;->val$logModeStatus_:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2571
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$28;->val$directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager$28;->val$logMode_:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->setLogMode(Z)V

    .line 2573
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboManager$28$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/NsCollaboManager$28$1;-><init>(Lcom/metamoji/ns/NsCollaboManager$28;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
