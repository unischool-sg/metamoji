.class Lcom/metamoji/ns/NsCollaboCommand$ReceiveAllDataFinished;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/NsCollaboCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiveAllDataFinished"
.end annotation


# instance fields
.field private mAfterAction:Lcom/metamoji/ns/INsCollaboAction;

.field private mBgTask:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2372
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$ReceiveAllDataFinished;->mBgTask:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    .line 2373
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$ReceiveAllDataFinished;->mAfterAction:Lcom/metamoji/ns/INsCollaboAction;

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 2

    .line 2389
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$ReceiveAllDataFinished;->mBgTask:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->getResult()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2391
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_ShareRecvPageDataDisconnected:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2397
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    .line 2400
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$ReceiveAllDataFinished;->mAfterAction:Lcom/metamoji/ns/INsCollaboAction;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 2401
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$ReceiveAllDataFinished;->mBgTask:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    invoke-virtual {p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->getResult()I

    move-result p1

    if-nez p1, :cond_2

    .line 2403
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$ReceiveAllDataFinished;->mAfterAction:Lcom/metamoji/ns/INsCollaboAction;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    return-void

    .line 2406
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$ReceiveAllDataFinished;->mAfterAction:Lcom/metamoji/ns/INsCollaboAction;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    :cond_3
    return-void
.end method

.method public setAfterAction(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 2383
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$ReceiveAllDataFinished;->mAfterAction:Lcom/metamoji/ns/INsCollaboAction;

    return-void
.end method

.method public setBgTask(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;)V
    .locals 0

    .line 2379
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$ReceiveAllDataFinished;->mBgTask:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    return-void
.end method
