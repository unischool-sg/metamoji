.class Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$1;
.super Ljava/lang/Object;
.source "WebDavSelectDoc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;->action(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;

.field final synthetic val$result:Lcom/metamoji/cm/mutable/MutableInt;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;Lcom/metamoji/cm/mutable/MutableInt;Ljava/lang/String;)V
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

    .line 187
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$1;->this$1:Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$1;->val$result:Lcom/metamoji/cm/mutable/MutableInt;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$1;->val$result:Lcom/metamoji/cm/mutable/MutableInt;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$1;->this$1:Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->-$$Nest$fget_wevdavinfo(Lcom/metamoji/ui/dialog/WebDavSelectDoc;)Lcom/metamoji/ex/webdav/WebDAVInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$1;->val$url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/metamoji/ex/webdav/WebDAVManager;->CreateDirectory(Lcom/metamoji/ex/webdav/WebDAVInfo;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    .line 191
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    return-void
.end method
