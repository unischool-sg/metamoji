.class Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx$1;
.super Ljava/lang/Object;
.source "LibrarySheetPageViewEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx;->deletePart(Lcom/metamoji/ui/library/item/LibraryPartView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx;

.field final synthetic val$categoryNo:I

.field final synthetic val$entityId:Ljava/lang/String;

.field final synthetic val$list:[I

.field final synthetic val$partView:Lcom/metamoji/ui/library/item/LibraryPartView;

.field final synthetic val$type:Lcom/metamoji/lb/LbConstants$LbPageType;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx;Lcom/metamoji/ui/library/item/LibraryPartView;I[ILcom/metamoji/lb/LbConstants$LbPageType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    .line 151
    iput-object p1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx$1;->this$0:Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx;

    iput-object p2, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx$1;->val$partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iput p3, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx$1;->val$categoryNo:I

    iput-object p4, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx$1;->val$list:[I

    iput-object p5, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx$1;->val$type:Lcom/metamoji/lb/LbConstants$LbPageType;

    iput-object p6, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx$1;->val$entityId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 154
    iget-object p1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx$1;->this$0:Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx;

    iget-object p2, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx$1;->val$partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iget v0, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx$1;->val$categoryNo:I

    iget-object v1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx$1;->val$list:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-static {p1, p2, v0, v3, v1}, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx;->access$000(Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx;Lcom/metamoji/ui/library/item/LibraryPartView;III)V

    .line 156
    iget-object p1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx$1;->this$0:Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx;

    invoke-static {p1}, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx;->access$100(Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx;)Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx$1;->val$type:Lcom/metamoji/lb/LbConstants$LbPageType;

    iget-object v0, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx$1;->val$entityId:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->deletePart(Lcom/metamoji/lb/LbConstants$LbPageType;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx$1;->this$0:Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx;

    invoke-static {p1}, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx;->access$200(Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 161
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr v2, p2

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 165
    iget-object p1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx$1;->this$0:Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx;

    invoke-static {p1}, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx;->access$300(Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx;)V

    :cond_1
    return-void
.end method
