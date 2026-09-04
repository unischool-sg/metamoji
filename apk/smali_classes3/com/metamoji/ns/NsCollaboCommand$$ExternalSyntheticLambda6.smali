.class public final synthetic Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

.field public final synthetic f$1:Lcom/metamoji/ns/INsCollaboAction;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda6;->f$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda6;->f$1:Lcom/metamoji/ns/INsCollaboAction;

    return-void
.end method


# virtual methods
.method public final action(Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda6;->f$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda6;->f$1:Lcom/metamoji/ns/INsCollaboAction;

    invoke-static {v0, v1, p1}, Lcom/metamoji/ns/NsCollaboCommand;->lambda$collaboReceiveAllPageDataExec$6(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;Lcom/metamoji/ns/INsCollaboAction;Z)V

    return-void
.end method
