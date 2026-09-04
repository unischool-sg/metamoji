.class Lcom/metamoji/ns/direction/NsDirectionManager$32$1;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager$32;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/direction/NsDirectionManager$32;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager$32;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1988
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$32$1;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1992
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v0

    .line 1993
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 1994
    invoke-virtual {v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->roomMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "free"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1996
    invoke-virtual {v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->endOfflineEditMode()V

    :cond_0
    return-void
.end method
