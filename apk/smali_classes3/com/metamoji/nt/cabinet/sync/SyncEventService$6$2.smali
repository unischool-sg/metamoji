.class Lcom/metamoji/nt/cabinet/sync/SyncEventService$6$2;
.super Ljava/lang/Object;
.source "SyncEventService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/cabinet/sync/SyncEventService$6;->invoke(Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/cabinet/sync/SyncEventService$6;

.field final synthetic val$arg:Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService$6;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
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

    .line 139
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/sync/SyncEventService$6$2;->this$1:Lcom/metamoji/nt/cabinet/sync/SyncEventService$6;

    iput-object p2, p0, Lcom/metamoji/nt/cabinet/sync/SyncEventService$6$2;->val$arg:Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/sync/SyncEventService$6$2;->val$arg:Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->getExParams()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-string v1, "driveId"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 144
    invoke-static {v0, v1, v2}, Lcom/metamoji/noteanytime/MainActivity;->updateDriveAllowToParticipateBoxCache(Ljava/lang/String;ZLcom/metamoji/noteanytime/MainActivity$IUpdateDriveAllowToParticipateBoxCacheCompletionAction;)V

    :cond_0
    return-void
.end method
