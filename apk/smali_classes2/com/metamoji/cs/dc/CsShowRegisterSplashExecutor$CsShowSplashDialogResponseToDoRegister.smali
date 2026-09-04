.class Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$CsShowSplashDialogResponseToDoRegister;
.super Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
.source "CsShowRegisterSplashExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CsShowSplashDialogResponseToDoRegister"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;-><init>()V

    const/16 v0, -0x44f

    .line 34
    iput v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$CsShowSplashDialogResponseToDoRegister;->errorCode:I

    return-void
.end method
