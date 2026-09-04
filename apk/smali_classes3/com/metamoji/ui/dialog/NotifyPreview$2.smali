.class Lcom/metamoji/ui/dialog/NotifyPreview$2;
.super Landroid/webkit/WebViewClient;
.source "NotifyPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/NotifyPreview;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private _requrl:Ljava/lang/String;

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

    .line 126
    iput-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview$2;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview$2;->_requrl:Ljava/lang/String;

    invoke-static {p1, p2, p3, p4, v0}, Lcom/metamoji/network/NwProxyAuthManager;->handleOnReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 159
    iput-object p2, p0, Lcom/metamoji/ui/dialog/NotifyPreview$2;->_requrl:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 132
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".atdoc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview$2;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 134
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 143
    iget-object p2, p0, Lcom/metamoji/ui/dialog/NotifyPreview$2;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/NotifyPreview;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x14000000

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    const-string v1, "application/vnd.metamoji.atdoc"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-class p1, Lcom/metamoji/ui/ImportActivity;

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1

    .line 153
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
