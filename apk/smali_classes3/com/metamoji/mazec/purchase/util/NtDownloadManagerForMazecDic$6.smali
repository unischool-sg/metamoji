.class Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$6;
.super Ljava/lang/Object;
.source "NtDownloadManagerForMazecDic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->showOfflineMsg(Landroid/content/Context;ZZZLandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$titleId:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 573
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$6;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput p2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$6;->val$titleId:I

    iput-object p3, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$6;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 575
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$6;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget v1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$6;->val$titleId:I

    iget-object v2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$6;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, v2}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->showOfflineMsg(Landroidx/fragment/app/FragmentActivity;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
