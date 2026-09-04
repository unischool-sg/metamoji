.class Lcom/metamoji/ui/WebPageActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/WebPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private _requrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/metamoji/ui/WebPageActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/WebPageActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/metamoji/ui/WebPageActivity$1;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private sanitizeQueryIntentActivitiesIntent(Landroid/content/Intent;)V
    .locals 2

    .line 248
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v1, 0x3c083810

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 249
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 250
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 194
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Lcom/metamoji/ui/WebPageActivity$1;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-static {p1, p2}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$fput_url(Lcom/metamoji/ui/WebPageActivity;Ljava/lang/String;)V

    .line 196
    iget-object p1, p0, Lcom/metamoji/ui/WebPageActivity$1;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-static {p1}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$fget_editText(Lcom/metamoji/ui/WebPageActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p1, p0, Lcom/metamoji/ui/WebPageActivity$1;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-static {p1}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$fget_back(Lcom/metamoji/ui/WebPageActivity;)Landroid/widget/ImageButton;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity$1;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-static {v0}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$fget_webView(Lcom/metamoji/ui/WebPageActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$menableButton(Lcom/metamoji/ui/WebPageActivity;Landroid/widget/ImageButton;Z)V

    .line 198
    iget-object p1, p0, Lcom/metamoji/ui/WebPageActivity$1;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-static {p1}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$fget_forward(Lcom/metamoji/ui/WebPageActivity;)Landroid/widget/ImageButton;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity$1;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-static {v0}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$fget_webView(Lcom/metamoji/ui/WebPageActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$menableButton(Lcom/metamoji/ui/WebPageActivity;Landroid/widget/ImageButton;Z)V

    .line 200
    iget-object p1, p0, Lcom/metamoji/ui/WebPageActivity$1;->this$0:Lcom/metamoji/ui/WebPageActivity;

    sget p2, Lcom/metamoji/noteanytime/R$id;->done:I

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$menableButton(Lcom/metamoji/ui/WebPageActivity;Lcom/metamoji/ui/common/UiButtonHeader;Z)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 217
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 219
    iget-object p1, p0, Lcom/metamoji/ui/WebPageActivity$1;->this$0:Lcom/metamoji/ui/WebPageActivity;

    sget p2, Lcom/metamoji/noteanytime/R$id;->done:I

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$menableButton(Lcom/metamoji/ui/WebPageActivity;Lcom/metamoji/ui/common/UiButtonHeader;Z)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity$1;->_requrl:Ljava/lang/String;

    invoke-static {p1, p2, p3, p4, v0}, Lcom/metamoji/network/NwProxyAuthManager;->handleOnReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 259
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/WebPageActivity$1;->_requrl:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 224
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "intent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    :try_start_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 230
    invoke-direct {p0, p1}, Lcom/metamoji/ui/WebPageActivity$1;->sanitizeQueryIntentActivitiesIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity$1;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/WebPageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 235
    :try_start_2
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return p2

    :catch_1
    move-exception p1

    .line 241
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
