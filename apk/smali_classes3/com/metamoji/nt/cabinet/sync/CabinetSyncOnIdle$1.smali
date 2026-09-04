.class Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle$1;
.super Ljava/util/TimerTask;
.source "CabinetSyncOnIdle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->setTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle$1;->this$0:Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle$1;->this$0:Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;

    invoke-static {v0}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->-$$Nest$fgetm_syncCheckTimer(Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;)Lcom/metamoji/cm/UiTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle$1;->this$0:Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;

    invoke-static {v0}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->-$$Nest$mdoSyncOnIdleTimer(Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;)V

    :cond_0
    return-void
.end method
