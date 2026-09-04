.class Lcom/metamoji/ns/NsCollaboCommand$32$1;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand$32;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboCommand$32;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboCommand$32;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2686
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$32$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 2

    .line 2694
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$32$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$32;

    if-eqz p1, :cond_0

    .line 2691
    iget-object p1, v0, Lcom/metamoji/ns/NsCollaboCommand$32;->val$afterAction:Lcom/metamoji/ns/INsCollaboAction;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    return-void

    .line 2694
    :cond_0
    iget-object p1, v0, Lcom/metamoji/ns/NsCollaboCommand$32;->val$deviceInfo:Lcom/metamoji/ns/NsCollaboDeviceInfo;

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$32$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$32;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$32;->val$afterAction:Lcom/metamoji/ns/INsCollaboAction;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboCommand$32$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$32;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboCommand$32;->val$startupMsgRollbackAction:Lcom/metamoji/ns/INsCollaboAction;

    invoke-static {p1, v0, v1}, Lcom/metamoji/ns/NsCollaboCommand;->checkDeviceId(Lcom/metamoji/ns/NsCollaboDeviceInfo;Lcom/metamoji/ns/INsCollaboAction;Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method
