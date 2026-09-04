.class Lcom/metamoji/dm/impl/sync/DmDCSyncManager$5;
.super Ljava/lang/Object;
.source "DmDCSyncManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isProcessing()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;


# direct methods
.method constructor <init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 503
    iput-object p1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$5;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$5;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    invoke-static {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$fgetrunningode(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->getInstance()Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->isRunningAny()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 503
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$5;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
