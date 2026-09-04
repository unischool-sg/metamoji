.class public Lcom/metamoji/ui/dialog/NotifyPreview;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "NotifyPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/NotifyPreview$OnNotifyPreviewClosedListener;,
        Lcom/metamoji/ui/dialog/NotifyPreview$FullscreenHolder;
    }
.end annotation


# static fields
.field private static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field private static Key_WebViewState:Ljava/lang/String; = "webviewstate"


# instance fields
.field private mBackPressedHideCustomView:Z

.field private mContentView:Landroid/view/ViewGroup;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field mDialog:Landroid/app/Dialog;

.field private mFullscreenContainer:Landroid/widget/FrameLayout;

.field mNotifyPreviewListener:Lcom/metamoji/ui/dialog/NotifyPreview$OnNotifyPreviewClosedListener;

.field private mOriginalOrientation:I

.field private mSelfHideCustomView:Z

.field mUrl:Ljava/lang/String;

.field mWebView:Landroid/webkit/WebView;

.field mWebViewState:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCustomView(Lcom/metamoji/ui/dialog/NotifyPreview;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomViewCallback(Lcom/metamoji/ui/dialog/NotifyPreview;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelfHideCustomView(Lcom/metamoji/ui/dialog/NotifyPreview;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mSelfHideCustomView:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmBackPressedHideCustomView(Lcom/metamoji/ui/dialog/NotifyPreview;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mBackPressedHideCustomView:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSelfHideCustomView(Lcom/metamoji/ui/dialog/NotifyPreview;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mSelfHideCustomView:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCustomView(Lcom/metamoji/ui/dialog/NotifyPreview;Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NotifyPreview;->showCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/metamoji/ui/dialog/NotifyPreview;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebView:Landroid/webkit/WebView;

    .line 37
    iput-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mUrl:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mNotifyPreviewListener:Lcom/metamoji/ui/dialog/NotifyPreview$OnNotifyPreviewClosedListener;

    .line 39
    iput-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebViewState:Landroid/os/Bundle;

    .line 40
    iput-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mSelfHideCustomView:Z

    .line 49
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mBackPressedHideCustomView:Z

    return-void
.end method

.method private setFullscreen(Z)V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 227
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 229
    :cond_1
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x401

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 230
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mCustomView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 231
    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mContentView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 233
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 236
    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private showCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NotifyPreview;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mOriginalOrientation:I

    .line 247
    iput-object p3, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 248
    iput-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mCustomView:Landroid/view/View;

    .line 249
    iget-object p3, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    const v1, 0x1020002

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mContentView:Landroid/view/ViewGroup;

    .line 250
    new-instance p3, Lcom/metamoji/ui/dialog/NotifyPreview$FullscreenHolder;

    invoke-direct {p3, v0}, Lcom/metamoji/ui/dialog/NotifyPreview$FullscreenHolder;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 251
    sget-object v1, Lcom/metamoji/ui/dialog/NotifyPreview;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p3, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mContentView:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mFullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 253
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/NotifyPreview;->setFullscreen(Z)V

    .line 254
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    return-void
.end method


# virtual methods
.method public hideCustomView()V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NotifyPreview;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    .line 262
    invoke-direct {p0, v1}, Lcom/metamoji/ui/dialog/NotifyPreview;->setFullscreen(Z)V

    .line 263
    iget-object v2, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mFullscreenContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 264
    iget-object v2, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mContentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mFullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v2, 0x0

    .line 265
    iput-object v2, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 266
    iput-object v2, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mCustomView:Landroid/view/View;

    .line 267
    iget-boolean v2, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mBackPressedHideCustomView:Z

    if-nez v2, :cond_1

    .line 268
    iget-object v2, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 270
    :cond_1
    iget v2, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mOriginalOrientation:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 271
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mBackPressedHideCustomView:Z

    return-void
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 305
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 65
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_notify_preview:I

    iput v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mViewId:I

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mDone:Z

    .line 67
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mCancel:Z

    .line 68
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mBack:Z

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mClose:Z

    .line 73
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mDialog:Landroid/app/Dialog;

    .line 74
    sget v2, Lcom/metamoji/noteanytime/R$id;->webPreview:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebView:Landroid/webkit/WebView;

    .line 75
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 76
    iget-object v1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 77
    iget-object v1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 78
    iget-object v1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 79
    iget-object v1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 80
    iget-object v1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setInitialScale(I)V

    if-eqz p1, :cond_0

    .line 86
    sget-object v0, Lcom/metamoji/ui/dialog/NotifyPreview;->Key_WebViewState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebViewState:Landroid/os/Bundle;

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebViewState:Landroid/os/Bundle;

    .line 92
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebView:Landroid/webkit/WebView;

    if-nez p1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 94
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/metamoji/ui/dialog/NotifyPreview$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/NotifyPreview$1;-><init>(Lcom/metamoji/ui/dialog/NotifyPreview;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 125
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/metamoji/ui/dialog/NotifyPreview$2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/NotifyPreview$2;-><init>(Lcom/metamoji/ui/dialog/NotifyPreview;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 169
    new-instance p1, Lcom/metamoji/ui/dialog/NotifyPreview$3;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/dialog/NotifyPreview$3;-><init>(Lcom/metamoji/ui/dialog/NotifyPreview;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/NotifyPreview;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 181
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/metamoji/ui/dialog/NotifyPreview$4;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/NotifyPreview$4;-><init>(Lcom/metamoji/ui/dialog/NotifyPreview;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 215
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/NotifyPreview;->restoreInstanceStateIfAvailable(Landroid/app/Dialog;)Z

    .line 216
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 310
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 311
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 312
    instance-of v0, p1, Lcom/metamoji/ui/NotifyPreviewActivity;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 0

    .line 299
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 276
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 277
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebViewState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebViewState:Landroid/os/Bundle;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebViewState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    if-eqz p1, :cond_1

    .line 284
    sget-object v0, Lcom/metamoji/ui/dialog/NotifyPreview;->Key_WebViewState:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mWebViewState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public setOnNotifyPreviewClosedListener(Lcom/metamoji/ui/dialog/NotifyPreview$OnNotifyPreviewClosedListener;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mNotifyPreviewListener:Lcom/metamoji/ui/dialog/NotifyPreview$OnNotifyPreviewClosedListener;

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 318
    iput p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mTitleId:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview;->mUrl:Ljava/lang/String;

    return-void
.end method
