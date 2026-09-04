.class Lcom/metamoji/ui/library/sheet/LibrarySheetPageView$1;
.super Ljava/lang/Object;
.source "LibrarySheetPageView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;->deletePart(Lcom/metamoji/ui/library/item/LibraryPartView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;

.field final synthetic val$entityId:Ljava/lang/String;

.field final synthetic val$partView:Lcom/metamoji/ui/library/item/LibraryPartView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;Lcom/metamoji/ui/library/item/LibraryPartView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 100
    iput-object p1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView$1;->this$0:Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;

    iput-object p2, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView$1;->val$partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iput-object p3, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView$1;->val$entityId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView$1;->this$0:Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;

    iget-object p2, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView$1;->val$partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-static {p1, p2}, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;->access$000(Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;Lcom/metamoji/ui/library/item/LibraryPartView;)V

    .line 105
    iget-object p1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView$1;->this$0:Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;

    invoke-static {p1}, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;->access$100(Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;)Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView$1;->this$0:Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;

    invoke-virtual {p2}, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;->pageType()Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView$1;->val$entityId:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->deletePart(Lcom/metamoji/lb/LbConstants$LbPageType;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView$1;->this$0:Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;

    invoke-static {p1}, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;->access$200(Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView$1;->this$0:Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;

    invoke-static {p1}, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;->access$300(Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;)V

    :cond_0
    return-void
.end method
