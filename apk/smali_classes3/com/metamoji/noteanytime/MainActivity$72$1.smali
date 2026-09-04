.class Lcom/metamoji/noteanytime/MainActivity$72$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$72;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$72;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$72;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4897
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$72$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$72;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 1

    .line 4900
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4901
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->stopSync()V

    return-void

    .line 4903
    :cond_0
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$smcallAutoSyncCallBack()V

    return-void
.end method
