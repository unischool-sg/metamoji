.class Lcom/metamoji/ui/library/item/LibraryStorePageView$4;
.super Ljava/lang/Object;
.source "LibraryStorePageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryStorePageView;->createBtn(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryStorePageView$btnType;ILjava/util/Map;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

.field final synthetic val$type:Lcom/metamoji/ui/library/item/LibraryStorePageView$btnType;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;Lcom/metamoji/ui/library/item/LibraryStorePageView$btnType;)V
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

    .line 771
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$4;->this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$4;->val$type:Lcom/metamoji/ui/library/item/LibraryStorePageView$btnType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$4;->val$type:Lcom/metamoji/ui/library/item/LibraryStorePageView$btnType;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryStorePageView$btnType;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$4;->this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    check-cast p1, Lcom/metamoji/ui/common/UiButton;

    invoke-static {v0, p1}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->-$$Nest$monPurchaseBtnClick(Lcom/metamoji/ui/library/item/LibraryStorePageView;Lcom/metamoji/ui/common/UiButton;)V

    return-void

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$4;->this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    check-cast p1, Lcom/metamoji/ui/common/UiButton;

    invoke-static {v0, p1}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->-$$Nest$monTrialBtnClick(Lcom/metamoji/ui/library/item/LibraryStorePageView;Lcom/metamoji/ui/common/UiButton;)V

    return-void

    .line 776
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$4;->this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    check-cast p1, Lcom/metamoji/ui/common/UiButton;

    invoke-static {v0, p1}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->-$$Nest$monDownloadBtnClick(Lcom/metamoji/ui/library/item/LibraryStorePageView;Lcom/metamoji/ui/common/UiButton;)V

    return-void
.end method
