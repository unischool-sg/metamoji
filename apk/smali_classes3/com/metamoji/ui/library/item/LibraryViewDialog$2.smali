.class Lcom/metamoji/ui/library/item/LibraryViewDialog$2;
.super Ljava/lang/Object;
.source "LibraryViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 388
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$2;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 391
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$2;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 393
    const-string v0, "LibraryStoreViewDialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$2;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->stopArrangementModeAllPages()V

    .line 400
    new-instance v1, Lcom/metamoji/ui/library/item/LibraryViewDialog$2$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$2$1;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$2;)V

    .line 401
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$2;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->createLibraryStoreViewDialog()Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;

    move-result-object v2

    .line 402
    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$2;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->setStorePageViewHandler(Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;)V

    .line 403
    invoke-virtual {v2, v1}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->setStorePageDataArray(Ljava/util/List;)V

    .line 404
    invoke-virtual {v2, p1, v0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
