.class Lcom/metamoji/ui/library/item/LibraryStorePageView$1;
.super Landroid/os/AsyncTask;
.source "LibraryStorePageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryStorePageView;->configureServerMaintenanceCheckingPage()V
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
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

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

    .line 300
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryStorePageView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 303
    new-instance p1, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;-><init>(Z)V

    .line 304
    invoke-static {p1}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetMaitenanceInfoWitParams(Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;)Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    move-result-object p1

    .line 305
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/library/item/LibraryStorePageView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/library/item/LibraryStorePageView$1$1;-><init>(Lcom/metamoji/ui/library/item/LibraryStorePageView$1;Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return-object p1
.end method
