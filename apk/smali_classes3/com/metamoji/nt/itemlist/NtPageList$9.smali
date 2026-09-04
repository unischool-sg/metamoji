.class Lcom/metamoji/nt/itemlist/NtPageList$9;
.super Ljava/lang/Object;
.source "NtPageList.java"

# interfaces
.implements Lcom/metamoji/nt/itemlist/NtItemList$SingleSelectAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtPageList;->getSingleSelectAction()Lcom/metamoji/nt/itemlist/NtItemList$SingleSelectAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtPageList;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtPageList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 850
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList$9;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method convertPoint(Landroid/view/View;Landroid/graphics/Point;Landroid/view/View;)V
    .locals 2

    .line 894
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->offset(II)V

    :goto_0
    if-eqz p3, :cond_0

    .line 895
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 896
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 897
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->offset(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isShowContextMenuOnSelectedItemShortTap(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList$9;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtPageList;->isShowContextMenuOnSelectedItemShortTap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/itemlist/NtPageList$9;->isTappedVoiceTag(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method isTappedVoiceTag(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 871
    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->getTagInstances()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 872
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 875
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->nt_itemlist_tag_view:I

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/ContentsTagView;

    if-nez v0, :cond_1

    return v1

    .line 880
    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {v1, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 881
    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, v1, v0}, Lcom/metamoji/nt/itemlist/NtPageList$9;->convertPoint(Landroid/view/View;Landroid/graphics/Point;Landroid/view/View;)V

    .line 883
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/ContentsTagView;->isHit(Landroid/graphics/Point;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public performAdditionalAction(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;Landroid/view/MotionEvent;)V
    .locals 0

    .line 858
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/itemlist/NtPageList$9;->isTappedVoiceTag(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 859
    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->getTagInstances()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 861
    invoke-static {p1}, Lcom/metamoji/media/voice/VcUtil;->playFromVoiceTagInstances(Ljava/util/List;)Z

    :cond_0
    return-void
.end method
