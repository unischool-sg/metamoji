.class Lcom/metamoji/ui/library/item/LibraryViewDialog$9;
.super Landroid/os/AsyncTask;
.source "LibraryViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog;->downloadProductExec(Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;Lcom/metamoji/ui/library/item/LibraryStorePageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

.field final synthetic val$entityId:Ljava/lang/String;

.field final synthetic val$mode:Lcom/metamoji/lb/LbConstants$DownloadMode;

.field final synthetic val$productDic:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1640
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$9;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$9;->val$productDic:Ljava/util/Map;

    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$9;->val$mode:Lcom/metamoji/lb/LbConstants$DownloadMode;

    iput-object p4, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$9;->val$entityId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1640
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 1643
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$9;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$9;->val$productDic:Ljava/util/Map;

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$9;->val$mode:Lcom/metamoji/lb/LbConstants$DownloadMode;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->doDownload(Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;)Z

    move-result p1

    .line 1644
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 1645
    new-instance v1, Lcom/metamoji/ui/library/item/LibraryViewDialog$9$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$9$1;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$9;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return-object p1
.end method
