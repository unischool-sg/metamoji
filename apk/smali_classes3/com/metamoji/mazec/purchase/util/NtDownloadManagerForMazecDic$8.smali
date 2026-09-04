.class Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$8;
.super Ljava/lang/Object;
.source "NtDownloadManagerForMazecDic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->showConfirmMsg(Landroid/content/Context;Ljava/lang/String;ZLcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$errorMsg:Ljava/lang/String;

.field final synthetic val$listener:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;

.field final synthetic val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 607
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$8;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$8;->val$errorMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$8;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$8;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p5, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$8;->val$listener:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 609
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$8;->val$activity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 610
    iget-object v1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$8;->val$errorMsg:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$8;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$8;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->confirmDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 611
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isKindle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$8;->val$errorMsg:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$8;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$8;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, v2}, Lcom/metamoji/mazec/purchase/util/AddonStoreUtil;->showConfirmMsg(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$8;->val$listener:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 614
    invoke-interface {v0, v1}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;->onFinish(Z)V

    :cond_2
    return-void
.end method
