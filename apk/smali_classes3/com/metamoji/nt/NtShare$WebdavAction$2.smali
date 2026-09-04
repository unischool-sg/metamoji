.class Lcom/metamoji/nt/NtShare$WebdavAction$2;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare$WebdavAction;->selectWebDavServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/WebDavSelectServer;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/WebDavSelectServer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1228
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$WebdavAction$2;->val$dlg:Lcom/metamoji/ui/dialog/WebDavSelectServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDialogClosed$0(Lcom/metamoji/ex/webdav/WebDAVInfo;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1239
    instance-of p1, p1, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz p1, :cond_0

    .line 1241
    invoke-static {p0}, Lcom/metamoji/nt/NtShare$WebdavAction;->doExport(Lcom/metamoji/ex/webdav/WebDAVInfo;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onDialogClosed$1(Lcom/metamoji/ex/webdav/WebDAVInfo;)V
    .locals 2

    .line 1237
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 1238
    new-instance v1, Lcom/metamoji/nt/NtShare$WebdavAction$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtShare$WebdavAction$2$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ex/webdav/WebDAVInfo;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1231
    iget-object p1, p0, Lcom/metamoji/nt/NtShare$WebdavAction$2;->val$dlg:Lcom/metamoji/ui/dialog/WebDavSelectServer;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/WebDavSelectServer;->getSelectServer()Lcom/metamoji/ex/webdav/WebDAVInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1233
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance p3, Lcom/metamoji/nt/NtShare$WebdavAction$2$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1}, Lcom/metamoji/nt/NtShare$WebdavAction$2$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ex/webdav/WebDAVInfo;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p2, p3, v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
