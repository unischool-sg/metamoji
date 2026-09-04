.class Lcom/metamoji/noteanytime/MainActivity$47$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$47;->onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$47;

.field final synthetic val$result:Lcom/metamoji/cm/mutable/Mutable;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$47;Lcom/metamoji/cm/mutable/Mutable;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3088
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$47$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$47;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$47$1;->val$result:Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3092
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$47$1;->val$result:Lcom/metamoji/cm/mutable/Mutable;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$47$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$47;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$47;->val$info:Lcom/metamoji/ex/webdav/WebDAVInfo;

    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$47$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$47;

    iget-object v2, v2, Lcom/metamoji/noteanytime/MainActivity$47;->val$dlg:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    invoke-virtual {v2}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/ex/webdav/WebDAVManager;->download(Lcom/metamoji/ex/webdav/WebDAVInfo;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    .line 3093
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    return-void
.end method
