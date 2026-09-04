.class Lcom/metamoji/ui/dialog/PreviewView$1;
.super Landroid/webkit/WebViewClient;
.source "PreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PreviewView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private _requrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/metamoji/ui/dialog/PreviewView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PreviewView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PreviewView$1;->this$0:Lcom/metamoji/ui/dialog/PreviewView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PreviewView$1;->this$0:Lcom/metamoji/ui/dialog/PreviewView;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/PreviewView;->mWebViewState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 115
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PreviewView$1;->this$0:Lcom/metamoji/ui/dialog/PreviewView;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/metamoji/ui/dialog/PreviewView;->mWebViewState:Landroid/os/Bundle;

    .line 116
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PreviewView$1;->this$0:Lcom/metamoji/ui/dialog/PreviewView;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/metamoji/ui/dialog/PreviewView$1;->this$0:Lcom/metamoji/ui/dialog/PreviewView;

    iget-object p2, p2, Lcom/metamoji/ui/dialog/PreviewView;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 120
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PreviewView$1;->_requrl:Ljava/lang/String;

    invoke-static {p1, p2, p3, p4, v0}, Lcom/metamoji/network/NwProxyAuthManager;->handleOnReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 125
    iput-object p2, p0, Lcom/metamoji/ui/dialog/PreviewView$1;->_requrl:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 83
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".atdoc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".btshare"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PreviewView$1;->this$0:Lcom/metamoji/ui/dialog/PreviewView;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 85
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 93
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return v0

    .line 98
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x14000000

    .line 99
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    const-string v2, "application/vnd.metamoji.atdoc"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-class p1, Lcom/metamoji/ui/ImportActivity;

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 106
    :cond_2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
