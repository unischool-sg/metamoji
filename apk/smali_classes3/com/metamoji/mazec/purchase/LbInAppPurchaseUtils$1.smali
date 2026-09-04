.class Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils$1;
.super Ljava/lang/Object;
.source "LbInAppPurchaseUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->showPurchasedMessage(Landroidx/fragment/app/FragmentActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$listener1:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$listener2:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils$1;->val$listener1:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils$1;->val$listener2:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 338
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "string.purchase_title_purchase"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "string.purchase_msg_purchased_product"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 340
    iget-object v2, p0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v3, p0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils$1;->val$listener1:Landroid/content/DialogInterface$OnClickListener;

    iget-object v4, p0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils$1;->val$listener2:Landroid/content/DialogInterface$OnCancelListener;

    invoke-static {v2, v1, v0, v3, v4}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->confirmDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
