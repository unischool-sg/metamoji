.class Lcom/metamoji/noteanytime/MainActivity$46;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->importWebDAV(Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 3052
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3053
    instance-of p2, p1, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz p2, :cond_0

    .line 3054
    invoke-static {}, Lcom/metamoji/ex/webdav/WebDAVManager;->getWebDAVInfo()Lcom/metamoji/ex/webdav/WebDAVInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/noteanytime/MainActivity;->selectNoteFromWebDav(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ex/webdav/WebDAVInfo;)V

    :cond_0
    return-void
.end method
