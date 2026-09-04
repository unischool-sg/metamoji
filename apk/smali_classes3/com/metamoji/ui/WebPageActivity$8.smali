.class Lcom/metamoji/ui/WebPageActivity$8;
.super Ljava/lang/Object;
.source "WebPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 381
    iput-object p1, p0, Lcom/metamoji/ui/WebPageActivity$8;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 385
    iget-object p1, p0, Lcom/metamoji/ui/WebPageActivity$8;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-virtual {p1}, Lcom/metamoji/ui/WebPageActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/metamoji/ui/WebPageActivity$8;->this$0:Lcom/metamoji/ui/WebPageActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/WebPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 392
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/WebPageActivity$8;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-static {p1}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$fget_readOnly(Lcom/metamoji/ui/WebPageActivity;)Z

    move-result p1

    .line 395
    iget-object v1, p0, Lcom/metamoji/ui/WebPageActivity$8;->this$0:Lcom/metamoji/ui/WebPageActivity;

    if-nez p1, :cond_1

    .line 393
    invoke-static {v1}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$mcaptureAndFinish(Lcom/metamoji/ui/WebPageActivity;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 395
    invoke-virtual {v1, v0, p1}, Lcom/metamoji/ui/WebPageActivity;->setResult(ILandroid/content/Intent;)V

    .line 396
    iget-object p1, p0, Lcom/metamoji/ui/WebPageActivity$8;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-virtual {p1}, Lcom/metamoji/ui/WebPageActivity;->finish()V

    return-void
.end method
