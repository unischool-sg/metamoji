.class Landroidx/browser/auth/AuthTabSessionToken$1;
.super Ljava/lang/Object;
.source "AuthTabSessionToken.java"

# interfaces
.implements Landroidx/browser/auth/AuthTabCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/auth/AuthTabSessionToken;-><init>(Landroid/support/customtabs/IAuthTabCallback;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/auth/AuthTabSessionToken;


# direct methods
.method constructor <init>(Landroidx/browser/auth/AuthTabSessionToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77
    iput-object p1, p0, Landroidx/browser/auth/AuthTabSessionToken$1;->this$0:Landroidx/browser/auth/AuthTabSessionToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 90
    :try_start_0
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken$1;->this$0:Landroidx/browser/auth/AuthTabSessionToken;

    invoke-static {v0}, Landroidx/browser/auth/AuthTabSessionToken;->access$000(Landroidx/browser/auth/AuthTabSessionToken;)Landroid/support/customtabs/IAuthTabCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/IAuthTabCallback;->onExtraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 92
    :catch_0
    const-string p1, "AuthTabSessionToken"

    const-string p2, "RemoteException during IAuthTabCallback transaction"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onExtraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 101
    :try_start_0
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken$1;->this$0:Landroidx/browser/auth/AuthTabSessionToken;

    invoke-static {v0}, Landroidx/browser/auth/AuthTabSessionToken;->access$000(Landroidx/browser/auth/AuthTabSessionToken;)Landroid/support/customtabs/IAuthTabCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/IAuthTabCallback;->onExtraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 103
    :catch_0
    const-string p1, "AuthTabSessionToken"

    const-string p2, "RemoteException during IAuthTabCallback transaction"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p1
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 1

    .line 81
    :try_start_0
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken$1;->this$0:Landroidx/browser/auth/AuthTabSessionToken;

    invoke-static {v0}, Landroidx/browser/auth/AuthTabSessionToken;->access$000(Landroidx/browser/auth/AuthTabSessionToken;)Landroid/support/customtabs/IAuthTabCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/IAuthTabCallback;->onNavigationEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 83
    :catch_0
    const-string p1, "AuthTabSessionToken"

    const-string p2, "RemoteException during IAuthTabCallback transaction"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWarmupCompleted(Landroid/os/Bundle;)V
    .locals 1

    .line 111
    :try_start_0
    iget-object v0, p0, Landroidx/browser/auth/AuthTabSessionToken$1;->this$0:Landroidx/browser/auth/AuthTabSessionToken;

    invoke-static {v0}, Landroidx/browser/auth/AuthTabSessionToken;->access$000(Landroidx/browser/auth/AuthTabSessionToken;)Landroid/support/customtabs/IAuthTabCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/customtabs/IAuthTabCallback;->onWarmupCompleted(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 113
    :catch_0
    const-string p1, "AuthTabSessionToken"

    const-string v0, "RemoteException during IAuthTabCallback transaction"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
