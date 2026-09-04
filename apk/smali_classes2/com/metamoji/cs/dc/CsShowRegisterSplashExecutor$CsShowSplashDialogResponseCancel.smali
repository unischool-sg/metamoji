.class Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$CsShowSplashDialogResponseCancel;
.super Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
.source "CsShowRegisterSplashExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CsShowSplashDialogResponseCancel"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;-><init>()V

    const/16 v0, -0xc8

    .line 39
    iput v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$CsShowSplashDialogResponseCancel;->errorCode:I

    return-void
.end method
