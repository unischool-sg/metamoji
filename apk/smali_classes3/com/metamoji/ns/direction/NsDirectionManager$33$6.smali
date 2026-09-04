.class Lcom/metamoji/ns/direction/NsDirectionManager$33$6;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager$33;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/direction/NsDirectionManager$33;

.field final synthetic val$pageId:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager$33;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 2205
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$6;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$33;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$6;->val$pageId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$6;->val$userId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$6;->val$userName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2208
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 2209
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$6;->val$pageId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$6;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$6;->val$userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->studentViewingPageChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
