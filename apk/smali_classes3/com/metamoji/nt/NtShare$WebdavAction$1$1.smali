.class Lcom/metamoji/nt/NtShare$WebdavAction$1$1;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare$WebdavAction$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtShare$WebdavAction$1;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtShare$WebdavAction$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1198
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$WebdavAction$1$1;->this$1:Lcom/metamoji/nt/NtShare$WebdavAction$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDialogClosed$0(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1204
    instance-of p0, p0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz p0, :cond_0

    .line 1205
    invoke-static {}, Lcom/metamoji/ex/webdav/WebDAVManager;->getWebDAVInfo()Lcom/metamoji/ex/webdav/WebDAVInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/nt/NtShare$WebdavAction;->doExport(Lcom/metamoji/ex/webdav/WebDAVInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1202
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    .line 1203
    new-instance p2, Lcom/metamoji/nt/NtShare$WebdavAction$1$1$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/metamoji/nt/NtShare$WebdavAction$1$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    :cond_0
    return-void
.end method
