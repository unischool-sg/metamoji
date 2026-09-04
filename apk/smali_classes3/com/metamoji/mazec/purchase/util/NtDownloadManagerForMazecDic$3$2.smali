.class Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3$2;
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

.field final synthetic val$dlTask:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDicKindle;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDicKindle;)V
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

    .line 186
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3$2;->this$1:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;

    iput-object p2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3$2;->val$dlTask:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDicKindle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3$2;->val$dlTask:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDicKindle;

    invoke-virtual {v0}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDicKindle;->execute()V

    return-void
.end method
