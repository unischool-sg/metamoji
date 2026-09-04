.class Lcom/metamoji/nt/NtShare$WebdavAction$3;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare$WebdavAction;->doExport(Lcom/metamoji/ex/webdav/WebDAVInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

.field final synthetic val$info:Lcom/metamoji/ex/webdav/WebDAVInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/WebDavSelectDoc;Lcom/metamoji/ex/webdav/WebDAVInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1255
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$WebdavAction$3;->val$dlg:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    iput-object p2, p0, Lcom/metamoji/nt/NtShare$WebdavAction$3;->val$info:Lcom/metamoji/ex/webdav/WebDAVInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1259
    iget-object p1, p0, Lcom/metamoji/nt/NtShare$WebdavAction$3;->val$dlg:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 1260
    sget-object p2, Lcom/metamoji/nt/NtShare$WebdavAction;->mFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 1261
    new-instance p3, Lcom/metamoji/cm/mutable/MutableBoolean;

    invoke-direct {p3}, Lcom/metamoji/cm/mutable/MutableBoolean;-><init>()V

    .line 1262
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 1263
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtShare$WebdavAction$3$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/metamoji/nt/NtShare$WebdavAction$3$1;-><init>(Lcom/metamoji/nt/NtShare$WebdavAction$3;Lcom/metamoji/cm/mutable/MutableBoolean;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/metamoji/nt/NtShare$WebdavAction$3$2;

    invoke-direct {p1, p0, p3}, Lcom/metamoji/nt/NtShare$WebdavAction$3$2;-><init>(Lcom/metamoji/nt/NtShare$WebdavAction$3;Lcom/metamoji/cm/mutable/MutableBoolean;)V

    const/4 p2, 0x0

    invoke-virtual {v0, v1, p2, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :cond_0
    return-void
.end method
