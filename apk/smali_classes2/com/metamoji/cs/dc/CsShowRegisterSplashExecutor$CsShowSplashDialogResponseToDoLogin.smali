.class Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$CsShowSplashDialogResponseToDoLogin;
.super Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
.source "CsShowRegisterSplashExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CsShowSplashDialogResponseToDoLogin"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;-><init>()V

    const/16 v0, -0x44e

    .line 45
    iput v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$CsShowSplashDialogResponseToDoLogin;->errorCode:I

    return-void
.end method
