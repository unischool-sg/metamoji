.class Lcom/metamoji/dm/fw/sync/DmIntentServiceController$1;
.super Ljava/lang/Object;
.source "DmIntentServiceController.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/fw/sync/DmIntentServiceController;-><init>()V
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
.field final synthetic this$0:Lcom/metamoji/dm/fw/sync/DmIntentServiceController;


# direct methods
.method constructor <init>(Lcom/metamoji/dm/fw/sync/DmIntentServiceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$1;->this$0:Lcom/metamoji/dm/fw/sync/DmIntentServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$1;->this$0:Lcom/metamoji/dm/fw/sync/DmIntentServiceController;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->dispatchEvent(Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 75
    check-cast p1, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;

    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$1;->invoke(Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V

    return-void
.end method
