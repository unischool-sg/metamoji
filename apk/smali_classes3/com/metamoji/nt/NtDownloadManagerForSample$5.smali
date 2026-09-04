.class Lcom/metamoji/nt/NtDownloadManagerForSample$5;
.super Ljava/lang/Object;
.source "NtDownloadManagerForSample.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtDownloadManagerForSample;->setCancelableTask(Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

.field final synthetic val$task:Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDownloadManagerForSample;Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;)V
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

    .line 388
    iput-object p1, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$5;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iput-object p2, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$5;->val$task:Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 391
    iget-object p1, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$5;->val$task:Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->cancel(Z)Z

    return-void
.end method
