.class Lcom/metamoji/noteanytime/MainActivity$47;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->selectNoteFromWebDav(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ex/webdav/WebDAVInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

.field final synthetic val$info:Lcom/metamoji/ex/webdav/WebDAVInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/ex/webdav/WebDAVInfo;Lcom/metamoji/ui/dialog/WebDavSelectDoc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3082
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$47;->val$info:Lcom/metamoji/ex/webdav/WebDAVInfo;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$47;->val$dlg:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 3086
    new-instance p1, Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {p1}, Lcom/metamoji/cm/mutable/Mutable;-><init>()V

    .line 3087
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 3088
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance p3, Lcom/metamoji/noteanytime/MainActivity$47$1;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/noteanytime/MainActivity$47$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$47;Lcom/metamoji/cm/mutable/Mutable;)V

    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$47$2;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/noteanytime/MainActivity$47$2;-><init>(Lcom/metamoji/noteanytime/MainActivity$47;Lcom/metamoji/cm/mutable/Mutable;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p3, p1, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :cond_0
    return-void
.end method
