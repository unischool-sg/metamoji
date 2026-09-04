.class Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$2;
.super Ljava/lang/Object;
.source "NtDownloadManagerForMazecDic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->performDownloadTaskInBackground(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;Ljava/util/LinkedHashMap;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;

.field final synthetic val$listener:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V
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

    .line 144
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$2;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;

    iput-object p2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$2;->val$listener:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 147
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$2;->val$listener:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 148
    invoke-interface {p1, p2}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;->onFinish(Z)V

    :cond_0
    return-void
.end method
