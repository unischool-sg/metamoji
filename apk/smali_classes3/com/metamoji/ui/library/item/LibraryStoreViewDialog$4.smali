.class Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$4;
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

.field final synthetic val$entityId:Ljava/lang/String;

.field final synthetic val$mode:Lcom/metamoji/lb/LbConstants$DownloadMode;

.field final synthetic val$productDic:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;Ljava/lang/String;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 411
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$4;->this$0:Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$4;->val$productDic:Ljava/util/Map;

    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$4;->val$mode:Lcom/metamoji/lb/LbConstants$DownloadMode;

    iput-object p4, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$4;->val$entityId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 414
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$4;->this$0:Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->backMainViewController()V

    .line 416
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$4;->this$0:Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;

    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_handler:Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;

    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$4;->val$productDic:Ljava/util/Map;

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$4;->val$mode:Lcom/metamoji/lb/LbConstants$DownloadMode;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$4;->val$entityId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;->downloadProduct(Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;Lcom/metamoji/ui/library/item/LibraryStorePageView;Ljava/lang/String;)V

    return-void
.end method
