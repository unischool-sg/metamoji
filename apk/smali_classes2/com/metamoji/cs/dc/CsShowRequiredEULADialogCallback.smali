.class public Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;
.super Ljava/lang/Object;
.source "CsShowRequiredEULADialogCallback.java"

# interfaces
.implements Lcom/metamoji/nt/cabinet/user/RequiredEulaTaskCallBack;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7549910ecb21a23bL


# instance fields
.field private onDone:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;->onDone:Z

    return-void
.end method


# virtual methods
.method public OnClickNoButton_RequiredEulaTaskCallBack()V
    .locals 1

    .line 25
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->onHandleCancel()V

    return-void
.end method

.method public OnClickYesButton_RequiredEulaTaskCallBack()V
    .locals 1

    .line 18
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->onHandeAgree()V

    return-void
.end method

.method public OnDestroyView_RequiredEulaTaskCallBack()V
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;->onDone:Z

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->onHandleCancel()V

    .line 37
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->onDestroyView()V

    return-void
.end method

.method public OnDone_RequiredEulaTaskCallBack()V
    .locals 1

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;->onDone:Z

    return-void
.end method
