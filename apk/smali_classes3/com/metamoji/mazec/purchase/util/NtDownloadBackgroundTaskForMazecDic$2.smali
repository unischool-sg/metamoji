.class Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$2;
.super Ljava/lang/Object;
.source "NtDownloadBackgroundTaskForMazecDic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->setCancelableTask(Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

.field final synthetic val$task:Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$2;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    iput-object p2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$2;->val$task:Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 274
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$2;->val$task:Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->cancel(Z)Z

    return-void
.end method
