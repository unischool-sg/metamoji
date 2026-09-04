.class public Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;
.super Ljava/lang/Object;
.source "CsShowRegisterDialogCallback.java"

# interfaces
.implements Lcom/metamoji/nt/cabinet/user/EntryUserTaskCallBack;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5ec5b390aae087f4L


# instance fields
.field private onDone:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;->onDone:Z

    return-void
.end method


# virtual methods
.method public OnClickCancelButton_EntryUserTaskCallBack()V
    .locals 1

    .line 29
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->onHandleCancelRegister()V

    return-void
.end method

.method public OnClickEntryButton_EntryUserTaskCallBack(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 20
    const-string v0, "nickname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21
    const-string v1, "mailaddress"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 22
    const-string v2, "password"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->onHandleRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnDismiss_EntryUserTaskCallBack()V
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;->onDone:Z

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->onHandleCancelRegister()V

    .line 42
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->onDismiss()V

    return-void
.end method

.method public OnDone_EntryUserTaskCallBack()V
    .locals 1

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;->onDone:Z

    return-void
.end method
