.class Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;
.super Ljava/lang/Object;
.source "NtDownloadManagerForMazecDic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->showDownloadSelectDialog(Landroid/content/Context;ZLandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$later:Ljava/lang/String;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$listener2:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$now:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 645
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$later:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$now:Ljava/lang/String;

    iput-object p6, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p7, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$listener2:Landroid/content/DialogInterface$OnCancelListener;

    iput-object p8, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 647
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$activity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 648
    iget-object v1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$msg:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$later:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$now:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v6, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$listener2:Landroid/content/DialogInterface$OnCancelListener;

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->selectDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)V

    goto :goto_0

    .line 649
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isKindle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    new-instance v5, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10$1;

    invoke-direct {v5, p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10$1;-><init>(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;)V

    .line 661
    iget-object v1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$msg:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$now:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$later:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/metamoji/mazec/purchase/util/AddonStoreUtil;->selectDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 664
    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 668
    :cond_2
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 669
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 671
    iget-object v1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 672
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_update_query_date"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
