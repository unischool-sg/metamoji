.class public Lcom/metamoji/nt/cabinet/cabinetWaitView;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "cabinetWaitView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;
    }
.end annotation


# instance fields
.field private _cancelAction:Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 10
    iput-object v0, p0, Lcom/metamoji/nt/cabinet/cabinetWaitView;->_cancelAction:Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/cabinetWaitView;->_cancelAction:Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;->action()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public hide()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-super {p0, v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->onCompleted(ZLjava/lang/Throwable;)V

    return-void
.end method

.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/metamoji/nt/cabinet/cabinetWaitView;->_cancelAction:Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;

    .line 31
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->doInBackground()V

    .line 32
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    return-void
.end method

.method public show(Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/cabinetWaitView;->_cancelAction:Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;

    .line 36
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->doInBackground()V

    return-void
.end method

.method public show(Lcom/metamoji/sd/cs/SdRequestCanceller;)V
    .locals 1

    .line 39
    new-instance v0, Lcom/metamoji/nt/cabinet/cabinetWaitView$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/nt/cabinet/cabinetWaitView$1;-><init>(Lcom/metamoji/nt/cabinet/cabinetWaitView;Lcom/metamoji/sd/cs/SdRequestCanceller;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->show(Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;)V

    return-void
.end method

.method protected taskExec()V
    .locals 0

    return-void
.end method
