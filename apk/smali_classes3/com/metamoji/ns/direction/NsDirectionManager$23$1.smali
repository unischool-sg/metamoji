.class Lcom/metamoji/ns/direction/NsDirectionManager$23$1;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/direction/NsDirectionManager$23;

.field final synthetic val$collaboSettings:Lcom/metamoji/ns/NsCollaboSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager$23;Lcom/metamoji/ns/NsCollaboSettings;)V
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

    .line 1494
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23$1;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$23;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23$1;->val$collaboSettings:Lcom/metamoji/ns/NsCollaboSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1497
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23$1;->val$collaboSettings:Lcom/metamoji/ns/NsCollaboSettings;

    const-string v1, "ROOM"

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboSettings;->lastReceivedSequenceNoForBooth(Ljava/lang/String;)J

    move-result-wide v2

    .line 1498
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23$1;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$23;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$mattachBooth(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;J)V

    return-void
.end method
