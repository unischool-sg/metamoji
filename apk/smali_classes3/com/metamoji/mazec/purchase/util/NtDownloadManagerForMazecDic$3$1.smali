.class Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3$1;
.super Ljava/lang/Object;
.source "NtDownloadManagerForMazecDic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;

.field final synthetic val$dlTask:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;)V
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

    .line 169
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3$1;->this$1:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;

    iput-object p2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3$1;->val$dlTask:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3$1;->val$dlTask:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
