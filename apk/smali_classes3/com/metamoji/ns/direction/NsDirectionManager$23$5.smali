.class Lcom/metamoji/ns/direction/NsDirectionManager$23$5;
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

.field final synthetic val$notifyBoothIdDic:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager$23;Ljava/util/Map;)V
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

    .line 1565
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23$5;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$23;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23$5;->val$notifyBoothIdDic:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1568
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23$5;->val$notifyBoothIdDic:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->addNotifyBoothUpdated(Ljava/util/Map;)Ljava/lang/String;

    return-void
.end method
