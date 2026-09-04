.class Lcom/metamoji/lb/LbLibraryItemManager$2;
.super Ljava/lang/Object;
.source "LbLibraryItemManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lb/LbLibraryItemManager;->downloadProductInner(Ljava/util/Map;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/lb/LbLibraryItemManager;

.field final synthetic val$progressDialog:Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;


# direct methods
.method constructor <init>(Lcom/metamoji/lb/LbLibraryItemManager;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)V
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

    .line 1603
    iput-object p1, p0, Lcom/metamoji/lb/LbLibraryItemManager$2;->this$0:Lcom/metamoji/lb/LbLibraryItemManager;

    iput-object p2, p0, Lcom/metamoji/lb/LbLibraryItemManager$2;->val$progressDialog:Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1606
    iget-object v0, p0, Lcom/metamoji/lb/LbLibraryItemManager$2;->val$progressDialog:Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;->setProgressBarIndeterminate(Z)V

    return-void
.end method
