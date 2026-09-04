.class Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$5;
.super Ljava/lang/Object;
.source "NtDownloadManagerForMazecDic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->showNoUpdateMsg(Landroid/content/Context;ZZLandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 535
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$5;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$5;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$5;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$5;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 537
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$5;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$5;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$5;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$5;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->confirmDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
