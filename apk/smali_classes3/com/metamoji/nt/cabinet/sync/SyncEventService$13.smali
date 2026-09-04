.class Lcom/metamoji/nt/cabinet/sync/SyncEventService$13;
.super Ljava/lang/Object;
.source "SyncEventService.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/cabinet/sync/SyncEventService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/cabinet/sync/SyncEventService;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/sync/SyncEventService$13;->this$0:Lcom/metamoji/nt/cabinet/sync/SyncEventService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 2

    .line 257
    const-string v0, "SyncEventService_SYNC_EVENT_NAME_A_NOTE_CONFLICT"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/cabinet/sync/SyncEventService$13$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$13$1;-><init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService$13;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 255
    check-cast p1, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$13;->invoke(Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V

    return-void
.end method
