.class Lcom/metamoji/nt/cabinet/sync/SyncEventService$4$1;
.super Ljava/lang/Object;
.source "SyncEventService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/cabinet/sync/SyncEventService$4;->invoke(Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/cabinet/sync/SyncEventService$4;

.field final synthetic val$arg:Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService$4;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
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

    .line 98
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/sync/SyncEventService$4$1;->this$1:Lcom/metamoji/nt/cabinet/sync/SyncEventService$4;

    iput-object p2, p0, Lcom/metamoji/nt/cabinet/sync/SyncEventService$4$1;->val$arg:Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/metamoji/nt/cabinet/sync/SyncEventService$4$1;->val$arg:Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;

    invoke-static {v0, v1}, Lcom/metamoji/noteanytime/MainActivity;->syncEventHandler_LibraryItemsEnd(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V

    :cond_0
    return-void
.end method
