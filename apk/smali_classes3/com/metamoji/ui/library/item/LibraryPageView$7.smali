.class Lcom/metamoji/ui/library/item/LibraryPageView$7;
.super Ljava/lang/Object;
.source "LibraryPageView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryPageView;->deletePart(Lcom/metamoji/ui/library/item/LibraryPartView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

.field final synthetic val$entityId:Ljava/lang/String;

.field final synthetic val$partView:Lcom/metamoji/ui/library/item/LibraryPartView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryPageView;Lcom/metamoji/ui/library/item/LibraryPartView;Ljava/lang/String;)V
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

    .line 1245
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$7;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryPageView$7;->val$partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryPageView$7;->val$entityId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1248
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$7;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryPageView$7;->val$partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/library/item/LibraryPageView;->removePartView(Lcom/metamoji/ui/library/item/LibraryPartView;)V

    .line 1250
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$7;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryPageView$7;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {p2}, Lcom/metamoji/ui/library/item/LibraryPageView;->pageType()Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView$7;->val$entityId:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->deletePart(Lcom/metamoji/lb/LbConstants$LbPageType;Ljava/lang/String;)V

    .line 1252
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$7;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 1254
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$7;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->stopArrangementModeAllPages()V

    :cond_0
    return-void
.end method
