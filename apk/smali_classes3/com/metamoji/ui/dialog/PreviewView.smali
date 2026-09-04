.class public Lcom/metamoji/ui/dialog/PreviewView;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "PreviewView.java"


# instance fields
.field mIsBack:Z

.field mUrl:Ljava/lang/String;

.field mWebView:Landroid/webkit/WebView;

.field mWebViewState:Landroid/os/Bundle;

.field m_listener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    .line 31
    iput-object v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->mUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 32
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/PreviewView;->mIsBack:Z

    .line 33
    iput-object v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebViewState:Landroid/os/Bundle;

    .line 35
    iput-object v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->m_listener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 194
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 41
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_previewview:I

    iput v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->mViewId:I

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->mDone:Z

    .line 43
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->mCancel:Z

    .line 44
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->mIsBack:Z

    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->mBack:Z

    .line 45
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->mIsBack:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->mClose:Z

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 48
    sget p2, Lcom/metamoji/noteanytime/R$id;->webview_preview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    .line 49
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 50
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    sget-object p3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 51
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 52
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 53
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 54
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    sget-object p3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 55
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/16 p3, 0x14

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 60
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 65
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebViewState:Landroid/os/Bundle;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 67
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 68
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/CookieManager;->flush()V

    .line 70
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->mUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 75
    :goto_0
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 76
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/metamoji/ui/dialog/PreviewView$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/PreviewView$1;-><init>(Lcom/metamoji/ui/dialog/PreviewView;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 138
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PreviewView;->m_listener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    if-eqz p2, :cond_2

    .line 139
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 141
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->m_listener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 143
    :cond_1
    iput-object p3, p0, Lcom/metamoji/ui/dialog/PreviewView;->m_listener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    .line 145
    :cond_2
    new-instance p2, Lcom/metamoji/ui/dialog/PreviewView$2;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/dialog/PreviewView$2;-><init>(Lcom/metamoji/ui/dialog/PreviewView;)V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PreviewView;->m_listener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    .line 158
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 160
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/ui/dialog/PreviewView;->m_listener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 163
    :cond_3
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/PreviewView;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 0

    .line 188
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 169
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebViewState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebViewState:Landroid/os/Bundle;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebViewState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 178
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PreviewView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 182
    :cond_1
    sget-object v0, Lcom/metamoji/ui/dialog/PreviewView;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHeaderButton(Z)V
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/PreviewView;->mIsBack:Z

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/metamoji/ui/dialog/PreviewView;->mTitleId:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PreviewView;->mUrl:Ljava/lang/String;

    return-void
.end method
