.class Lcom/metamoji/ui/WebPageActivity$2;
.super Ljava/lang/Object;
.source "WebPageActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/WebPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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

    .line 272
    iput-object p1, p0, Lcom/metamoji/ui/WebPageActivity$2;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 275
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez p3, :cond_2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    .line 277
    :cond_1
    iget-object p2, p0, Lcom/metamoji/ui/WebPageActivity$2;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$fput_url(Lcom/metamoji/ui/WebPageActivity;Ljava/lang/String;)V

    .line 279
    iget-object p2, p0, Lcom/metamoji/ui/WebPageActivity$2;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-static {p2}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$fget_webView(Lcom/metamoji/ui/WebPageActivity;)Landroid/webkit/WebView;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/ui/WebPageActivity$2;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-static {p3}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$fget_url(Lcom/metamoji/ui/WebPageActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 280
    iget-object p2, p0, Lcom/metamoji/ui/WebPageActivity$2;->this$0:Lcom/metamoji/ui/WebPageActivity;

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/WebPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method
