.class Lcom/metamoji/ui/library/item/LibraryStorePageView$3;
.super Ljava/lang/Object;
.source "LibraryStorePageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryStorePageView;->configurePageDataCompletedPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

.field final synthetic val$downloadMode:Lcom/metamoji/lb/LbConstants$DownloadMode;

.field final synthetic val$itemIndex:I

.field final synthetic val$productIndex:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;IILcom/metamoji/lb/LbConstants$DownloadMode;)V
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

    .line 700
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$3;->this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    iput p2, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$3;->val$productIndex:I

    iput p3, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$3;->val$itemIndex:I

    iput-object p4, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$3;->val$downloadMode:Lcom/metamoji/lb/LbConstants$DownloadMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 703
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$3;->this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    iget v1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$3;->val$productIndex:I

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$3;->val$itemIndex:I

    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$3;->val$downloadMode:Lcom/metamoji/lb/LbConstants$DownloadMode;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->onThumbnailTap(Landroid/view/View;IILcom/metamoji/lb/LbConstants$DownloadMode;)V

    return-void
.end method
