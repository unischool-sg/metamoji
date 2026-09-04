.class Lcom/metamoji/ui/dialog/AddWebDav$6$1;
.super Ljava/lang/Object;
.source "AddWebDav.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/AddWebDav$6;->onCompleted(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/AddWebDav$6;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/AddWebDav$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 260
    iput-object p1, p0, Lcom/metamoji/ui/dialog/AddWebDav$6$1;->this$1:Lcom/metamoji/ui/dialog/AddWebDav$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/metamoji/ui/dialog/AddWebDav$6$1;->this$1:Lcom/metamoji/ui/dialog/AddWebDav$6;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/AddWebDav$6;->val$result:Lcom/metamoji/cm/mutable/MutableBoolean;

    invoke-virtual {v0}, Lcom/metamoji/cm/mutable/MutableBoolean;->getValue()Z

    move-result v0

    .line 271
    iget-object v1, p0, Lcom/metamoji/ui/dialog/AddWebDav$6$1;->this$1:Lcom/metamoji/ui/dialog/AddWebDav$6;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, v1, Lcom/metamoji/ui/dialog/AddWebDav$6;->val$info:Lcom/metamoji/ex/webdav/WebDAVInfo;

    invoke-static {v0}, Lcom/metamoji/ex/webdav/WebDAVManager;->addWebDAVInfo(Lcom/metamoji/ex/webdav/WebDAVInfo;)V

    .line 266
    iget-object v0, p0, Lcom/metamoji/ui/dialog/AddWebDav$6$1;->this$1:Lcom/metamoji/ui/dialog/AddWebDav$6;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/AddWebDav$6;->this$0:Lcom/metamoji/ui/dialog/AddWebDav;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/AddWebDav;->afterAction:Lcom/metamoji/ui/dialog/AddWebDav$IAddWebDavDialogAfterAction;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/metamoji/ui/dialog/AddWebDav$6$1;->this$1:Lcom/metamoji/ui/dialog/AddWebDav$6;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/AddWebDav$6;->this$0:Lcom/metamoji/ui/dialog/AddWebDav;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/AddWebDav;->afterAction:Lcom/metamoji/ui/dialog/AddWebDav$IAddWebDavDialogAfterAction;

    invoke-interface {v0}, Lcom/metamoji/ui/dialog/AddWebDav$IAddWebDavDialogAfterAction;->action()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/AddWebDav$6$1;->this$1:Lcom/metamoji/ui/dialog/AddWebDav$6;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/AddWebDav$6;->this$0:Lcom/metamoji/ui/dialog/AddWebDav;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/AddWebDav$6$1;->this$1:Lcom/metamoji/ui/dialog/AddWebDav$6;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/AddWebDav$6;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/metamoji/ui/dialog/AddWebDav;->access$001(Lcom/metamoji/ui/dialog/AddWebDav;Landroid/view/View;)V

    return-void

    .line 271
    :cond_1
    iget-object v0, v1, Lcom/metamoji/ui/dialog/AddWebDav$6;->this$0:Lcom/metamoji/ui/dialog/AddWebDav;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/AddWebDav;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->WebDAV_Msg_Connect_Failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return-void
.end method
