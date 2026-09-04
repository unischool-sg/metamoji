.class Lcom/metamoji/ui/WebPageActivity$9;
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

    .line 401
    iput-object p1, p0, Lcom/metamoji/ui/WebPageActivity$9;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 404
    iget-object p1, p0, Lcom/metamoji/ui/WebPageActivity$9;->this$0:Lcom/metamoji/ui/WebPageActivity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/WebPageActivity;->setResult(ILandroid/content/Intent;)V

    .line 405
    iget-object p1, p0, Lcom/metamoji/ui/WebPageActivity$9;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-virtual {p1}, Lcom/metamoji/ui/WebPageActivity;->finish()V

    return-void
.end method
