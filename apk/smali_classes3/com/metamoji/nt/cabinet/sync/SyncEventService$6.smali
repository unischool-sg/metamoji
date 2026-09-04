.class Lcom/metamoji/nt/cabinet/sync/SyncEventService$6;
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

    .line 127
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/sync/SyncEventService$6;->this$0:Lcom/metamoji/nt/cabinet/sync/SyncEventService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 2

    .line 129
    const-string v0, "SyncEventService_SYNC_EVENT_NAME_A_SHAREDDRIVE_START"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/cabinet/sync/SyncEventService$6$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$6$1;-><init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService$6;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 139
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/metamoji/nt/cabinet/sync/SyncEventService$6$2;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$6$2;-><init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService$6;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V

    const-string/jumbo p1, "updateCacheThread"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

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

    .line 127
    check-cast p1, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$6;->invoke(Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V

    return-void
.end method
