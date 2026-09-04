.class Lcom/metamoji/nt/itemlist/NtItemList$7$1;
.super Ljava/lang/Object;
.source "NtItemList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtItemList$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/itemlist/NtItemList$7;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemList$7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 518
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$7$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemList$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$7$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemList$7;

    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemList$7;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList$7$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemList$7;

    iget v1, v1, Lcom/metamoji/nt/itemlist/NtItemList$7;->val$position:I

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/itemlist/NtItemList;->getViewAt(I)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 524
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 525
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtItemList$7$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemList$7;

    iget-object v2, v2, Lcom/metamoji/nt/itemlist/NtItemList$7;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget-object v2, v2, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtItemList$7$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemList$7;

    iget-object v2, v2, Lcom/metamoji/nt/itemlist/NtItemList$7;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget-object v2, v2, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_1
    :goto_0
    return-void
.end method
