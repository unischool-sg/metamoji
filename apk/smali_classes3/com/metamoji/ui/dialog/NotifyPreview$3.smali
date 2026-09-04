.class Lcom/metamoji/ui/dialog/NotifyPreview$3;
.super Ljava/lang/Object;
.source "NotifyPreview.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/NotifyPreview;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/NotifyPreview;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/NotifyPreview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview$3;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    .line 174
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview$3;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 175
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview$3;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebView:Landroid/webkit/WebView;

    const-string p2, "about:blank"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview$3;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/NotifyPreview;->mNotifyPreviewListener:Lcom/metamoji/ui/dialog/NotifyPreview$OnNotifyPreviewClosedListener;

    if-eqz p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview$3;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/NotifyPreview;->mNotifyPreviewListener:Lcom/metamoji/ui/dialog/NotifyPreview$OnNotifyPreviewClosedListener;

    invoke-interface {p1}, Lcom/metamoji/ui/dialog/NotifyPreview$OnNotifyPreviewClosedListener;->onDialogClosed()V

    :cond_0
    return-void
.end method
