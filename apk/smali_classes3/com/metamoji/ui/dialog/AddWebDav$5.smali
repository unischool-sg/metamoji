.class Lcom/metamoji/ui/dialog/AddWebDav$5;
.super Ljava/lang/Object;
.source "AddWebDav.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/AddWebDav;->tryConnectAndClose(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/AddWebDav;

.field final synthetic val$info:Lcom/metamoji/ex/webdav/WebDAVInfo;

.field final synthetic val$result:Lcom/metamoji/cm/mutable/MutableBoolean;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/AddWebDav;Lcom/metamoji/cm/mutable/MutableBoolean;Lcom/metamoji/ex/webdav/WebDAVInfo;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/metamoji/ui/dialog/AddWebDav$5;->this$0:Lcom/metamoji/ui/dialog/AddWebDav;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/AddWebDav$5;->val$result:Lcom/metamoji/cm/mutable/MutableBoolean;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/AddWebDav$5;->val$info:Lcom/metamoji/ex/webdav/WebDAVInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/metamoji/ui/dialog/AddWebDav$5;->val$result:Lcom/metamoji/cm/mutable/MutableBoolean;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/AddWebDav$5;->val$info:Lcom/metamoji/ex/webdav/WebDAVInfo;

    invoke-static {v1}, Lcom/metamoji/ex/webdav/WebDAVManager;->tryConnect(Lcom/metamoji/ex/webdav/WebDAVInfo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/mutable/MutableBoolean;->setValue(Z)V

    .line 255
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    return-void
.end method
