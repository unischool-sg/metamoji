.class Lcom/metamoji/ns/direction/NsDirectionManager$24$2;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/direction/NsDirectionManager$24;

.field final synthetic val$offlineEditManager:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager$24;Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;)V
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

    .line 1692
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$24$2;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$24;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$24$2;->val$offlineEditManager:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1696
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$24$2;->val$offlineEditManager:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->updateOfflineEditModeInfo(Z)V

    return-void
.end method
