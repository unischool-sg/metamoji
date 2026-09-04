.class Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10$1;
.super Ljava/lang/Object;
.source "NtDownloadManagerForMazecDic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 650
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10$1;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10$1;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 655
    iget-object v0, v0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void

    .line 657
    :cond_0
    iget-object p2, v0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;->val$listener2:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {p2, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method
