.class Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3;
.super Ljava/lang/Object;
.source "LibraryStoreViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->downloadProduct(Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;Lcom/metamoji/ui/library/item/LibraryStorePageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 367
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3;->this$0:Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 370
    new-instance p1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    invoke-direct {p1}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;-><init>()V

    .line 371
    invoke-static {}, Lcom/metamoji/ui/dialog/UiDialog;->hideAllDialogs()V

    .line 372
    sget-object p2, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialog:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    new-instance v0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3$1;-><init>(Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3;)V

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->openCabinetUserDialog(Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    return-void
.end method
