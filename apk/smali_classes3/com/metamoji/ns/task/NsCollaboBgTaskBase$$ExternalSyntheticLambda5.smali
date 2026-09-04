.class public final synthetic Lcom/metamoji/ns/task/NsCollaboBgTaskBase$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase$$ExternalSyntheticLambda5;->f$0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final action(Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase$$ExternalSyntheticLambda5;->f$0:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->lambda$isMaintenanceDCServer$3(Ljava/util/concurrent/CountDownLatch;Z)V

    return-void
.end method
