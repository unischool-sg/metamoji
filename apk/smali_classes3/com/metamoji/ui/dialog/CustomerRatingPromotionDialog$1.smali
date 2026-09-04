.class Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog$1;
.super Ljava/lang/Object;
.source "CustomerRatingPromotionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog$1;->this$0:Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 53
    sget-object p1, Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 55
    iget-object p1, p0, Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog$1;->this$0:Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/CustomerRatingPromotionDialog;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
