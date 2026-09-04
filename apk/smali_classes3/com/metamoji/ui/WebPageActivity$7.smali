.class Lcom/metamoji/ui/WebPageActivity$7;
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

    .line 364
    iput-object p1, p0, Lcom/metamoji/ui/WebPageActivity$7;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 368
    iget-object p1, p0, Lcom/metamoji/ui/WebPageActivity$7;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-static {p1}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$fget_url(Lcom/metamoji/ui/WebPageActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 371
    :try_start_0
    iget-object p1, p0, Lcom/metamoji/ui/WebPageActivity$7;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/WebPageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 374
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method
