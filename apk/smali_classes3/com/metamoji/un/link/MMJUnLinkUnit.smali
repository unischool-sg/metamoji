.class public Lcom/metamoji/un/link/MMJUnLinkUnit;
.super Ljava/lang/Object;
.source "MMJUnLinkUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/link/MMJUnLinkUnit$IAction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canHandleOpenURLString(Ljava/lang/String;)Z
    .locals 0

    .line 50
    :try_start_0
    invoke-static {p0}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->canHandleOpenURL(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static createLinkUnitLocationWithEncodedURLAsync(Ljava/lang/String;Lcom/metamoji/un/link/MMJUnLinkUnit$IAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/un/link/MMJUnLinkUnit$IAction<",
            "Ljava/lang/Boolean;",
            "Lcom/metamoji/un/link/MMJUnLinkUnitLocation;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->createWithEncodedURLAsync(Ljava/lang/String;)Lcom/metamoji/un/link/MMJUnLinkUnitLocation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/metamoji/un/link/MMJUnLinkUnit$IAction;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static performJumpWithURLString(Ljava/lang/String;ZLandroid/graphics/Rect;)V
    .locals 2

    .line 58
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_LINKUNIT_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/link/MMJUnLinkUnit$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/un/link/MMJUnLinkUnit$1;-><init>(Ljava/lang/String;ZLandroid/graphics/Rect;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :cond_0
    return-void
.end method
