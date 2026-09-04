.class Landroidx/browser/customtabs/CustomTabsClient$2;
.super Landroid/support/customtabs/IAuthTabCallback$Stub;
.source "CustomTabsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient;->createAuthTabCallbackWrapper(Landroidx/browser/auth/AuthTabCallback;Ljava/util/concurrent/Executor;)Landroid/support/customtabs/IAuthTabCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Landroidx/browser/customtabs/CustomTabsClient;

.field final synthetic val$callback:Landroidx/browser/auth/AuthTabCallback;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$mCEi04OcFi8gu0FD463twzV2nG8(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroidx/browser/customtabs/CustomTabsClient;Ljava/util/concurrent/Executor;Landroidx/browser/auth/AuthTabCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 404
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->this$0:Landroidx/browser/customtabs/CustomTabsClient;

    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/auth/AuthTabCallback;

    invoke-direct {p0}, Landroid/support/customtabs/IAuthTabCallback$Stub;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    new-instance p1, Landroid/os/Handler;

    .line 406
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Landroidx/browser/customtabs/CustomTabsClient$2$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1}, Landroidx/browser/customtabs/CustomTabsClient$2$$ExternalSyntheticLambda3;-><init>(Landroid/os/Handler;)V

    :goto_0
    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic lambda$onExtraCallback$1(Landroidx/browser/auth/AuthTabCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 425
    invoke-interface {p0, p1, p2}, Landroidx/browser/auth/AuthTabCallback;->onExtraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$onNavigationEvent$0(Landroidx/browser/auth/AuthTabCallback;ILandroid/os/Bundle;)V
    .locals 0

    .line 414
    invoke-interface {p0, p1, p2}, Landroidx/browser/auth/AuthTabCallback;->onNavigationEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$onWarmupCompleted$2(Landroidx/browser/auth/AuthTabCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 448
    invoke-interface {p0, p1}, Landroidx/browser/auth/AuthTabCallback;->onWarmupCompleted(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onExtraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/auth/AuthTabCallback;

    if-nez v0, :cond_0

    return-void

    .line 423
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 425
    :try_start_0
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/auth/AuthTabCallback;

    new-instance v4, Landroidx/browser/customtabs/CustomTabsClient$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1, p2}, Landroidx/browser/customtabs/CustomTabsClient$2$$ExternalSyntheticLambda0;-><init>(Landroidx/browser/auth/AuthTabCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 428
    throw p1
.end method

.method public onExtraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/auth/AuthTabCallback;

    if-nez v0, :cond_0

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p1

    .line 435
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 437
    :try_start_0
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/auth/AuthTabCallback;

    invoke-interface {v2, p1, p2}, Landroidx/browser/auth/AuthTabCallback;->onExtraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 440
    throw p1
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/auth/AuthTabCallback;

    if-nez v0, :cond_0

    return-void

    .line 412
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 414
    :try_start_0
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/auth/AuthTabCallback;

    new-instance v4, Landroidx/browser/customtabs/CustomTabsClient$2$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, p1, p2}, Landroidx/browser/customtabs/CustomTabsClient$2$$ExternalSyntheticLambda1;-><init>(Landroidx/browser/auth/AuthTabCallback;ILandroid/os/Bundle;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 417
    throw p1
.end method

.method public onWarmupCompleted(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/auth/AuthTabCallback;

    if-nez v0, :cond_0

    return-void

    .line 446
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 448
    :try_start_0
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/auth/AuthTabCallback;

    new-instance v4, Landroidx/browser/customtabs/CustomTabsClient$2$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3, p1}, Landroidx/browser/customtabs/CustomTabsClient$2$$ExternalSyntheticLambda2;-><init>(Landroidx/browser/auth/AuthTabCallback;Landroid/os/Bundle;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    throw p1
.end method
