.class Landroidx/browser/customtabs/CustomTabsClient$3;
.super Landroid/support/customtabs/ICustomTabsCallback$Stub;
.source "CustomTabsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient;->createCallbackWrapper(Landroidx/browser/customtabs/CustomTabsCallback;)Landroid/support/customtabs/ICustomTabsCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroidx/browser/customtabs/CustomTabsClient;

.field final synthetic val$callback:Landroidx/browser/customtabs/CustomTabsCallback;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsClient;Landroidx/browser/customtabs/CustomTabsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 508
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->this$0:Landroidx/browser/customtabs/CustomTabsClient;

    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    invoke-direct {p0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;-><init>()V

    .line 509
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_0

    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$2;

    invoke-direct {v1, p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsClient$3$2;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 540
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsCallback;->extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public onActivityLayout(IIIIILandroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_0

    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$8;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Landroidx/browser/customtabs/CustomTabsClient$3$8;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;IIIIILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onActivityResized(IILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_0

    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$6;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/browser/customtabs/CustomTabsClient$3$6;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;IILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 546
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_0

    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$3;

    invoke-direct {v1, p0, p1}, Landroidx/browser/customtabs/CustomTabsClient$3$3;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMinimized(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_0

    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$9;

    invoke-direct {v1, p0, p1}, Landroidx/browser/customtabs/CustomTabsClient$3$9;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 2

    .line 513
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_0

    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsClient$3$1;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_0

    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$4;

    invoke-direct {v1, p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsClient$3$4;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 571
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_0

    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$5;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/browser/customtabs/CustomTabsClient$3$5;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUnminimized(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 634
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_0

    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$10;

    invoke-direct {v1, p0, p1}, Landroidx/browser/customtabs/CustomTabsClient$3$10;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWarmupCompleted(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    if-nez v0, :cond_0

    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$7;

    invoke-direct {v1, p0, p1}, Landroidx/browser/customtabs/CustomTabsClient$3$7;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
