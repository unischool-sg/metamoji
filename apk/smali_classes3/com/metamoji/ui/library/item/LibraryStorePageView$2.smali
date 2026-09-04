.class Lcom/metamoji/ui/library/item/LibraryStorePageView$2;
.super Ljava/lang/Object;
.source "LibraryStorePageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryStorePageView;->configureIndexDataCompletedPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

.field final synthetic val$pageButton:Lcom/metamoji/ui/common/UiButton;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;Lcom/metamoji/ui/common/UiButton;)V
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

    .line 488
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$2;->this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$2;->val$pageButton:Lcom/metamoji/ui/common/UiButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 491
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$2;->this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    check-cast p1, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$2;->val$pageButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;->navigationStorePage(I)V

    return-void
.end method
