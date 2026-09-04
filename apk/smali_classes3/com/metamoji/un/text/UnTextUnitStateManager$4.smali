.class Lcom/metamoji/un/text/UnTextUnitStateManager$4;
.super Ljava/lang/Object;
.source "UnTextUnitStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnitStateManager;->checkEditUserEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnitStateManager;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnitStateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 717
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager$4;->this$0:Lcom/metamoji/un/text/UnTextUnitStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 719
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager$4;->this$0:Lcom/metamoji/un/text/UnTextUnitStateManager;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->-$$Nest$mstopUserCheckTimer(Lcom/metamoji/un/text/UnTextUnitStateManager;)V

    .line 721
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 722
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->userInfoArray()Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 724
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager$4;->this$0:Lcom/metamoji/un/text/UnTextUnitStateManager;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->-$$Nest$fput_editUserCheckTimer(Lcom/metamoji/un/text/UnTextUnitStateManager;Ljava/util/Timer;)V

    .line 729
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager$4;->this$0:Lcom/metamoji/un/text/UnTextUnitStateManager;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->-$$Nest$fget_editUserCheckTimer(Lcom/metamoji/un/text/UnTextUnitStateManager;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextUnitStateManager$4$1;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextUnitStateManager$4$1;-><init>(Lcom/metamoji/un/text/UnTextUnitStateManager$4;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    .line 725
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager$4;->this$0:Lcom/metamoji/un/text/UnTextUnitStateManager;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->-$$Nest$mremoveAllEditUserInfo(Lcom/metamoji/un/text/UnTextUnitStateManager;)V

    return-void
.end method
