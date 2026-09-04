.class Lcom/metamoji/ui/dialog/AddWebDav$6;
.super Ljava/lang/Object;
.source "AddWebDav.java"

# interfaces
.implements Lcom/metamoji/cm/CmTaskManager$IOnCompleted;


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

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/AddWebDav;Lcom/metamoji/cm/mutable/MutableBoolean;Lcom/metamoji/ex/webdav/WebDAVInfo;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 257
    iput-object p1, p0, Lcom/metamoji/ui/dialog/AddWebDav$6;->this$0:Lcom/metamoji/ui/dialog/AddWebDav;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/AddWebDav$6;->val$result:Lcom/metamoji/cm/mutable/MutableBoolean;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/AddWebDav$6;->val$info:Lcom/metamoji/ex/webdav/WebDAVInfo;

    iput-object p4, p0, Lcom/metamoji/ui/dialog/AddWebDav$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Throwable;)V
    .locals 1

    .line 260
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/dialog/AddWebDav$6$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/AddWebDav$6$1;-><init>(Lcom/metamoji/ui/dialog/AddWebDav$6;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
