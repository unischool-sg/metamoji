.class Lcom/metamoji/forSchool/ui/UiHeaderListView$2;
.super Ljava/lang/Object;
.source "UiHeaderListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/UiHeaderListView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/UiHeaderListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 374
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$2;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 377
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$2;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_cellTapAction:Lcom/metamoji/forSchool/ui/UiHeaderListView$IHeaderListViewCellTapAction;

    if-nez p1, :cond_0

    return-void

    .line 384
    :cond_0
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$2;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_columnInfoDicArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move p4, p2

    move p5, p4

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 386
    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 388
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 392
    :goto_1
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr p5, v0

    .line 393
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$2;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget v0, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_touchPositionX:I

    if-ge v0, p5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 399
    :cond_3
    :goto_2
    new-instance p1, Landroid/graphics/Rect;

    iget-object p5, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$2;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget p5, p5, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_touchPositionX:I

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$2;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget v0, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_touchPositionY:I

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$2;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget v1, v1, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_touchPositionX:I

    add-int/lit8 v1, v1, 0xa

    iget-object v2, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$2;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget v2, v2, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_touchPositionY:I

    add-int/lit8 v2, v2, 0xa

    invoke-direct {p1, p5, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 400
    iget-object p5, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$2;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget-object p5, p5, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_listView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-static {p1, p5, v0}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 402
    iget-object p5, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$2;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget p5, p5, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_selectedItemPos:I

    if-ne p3, p5, :cond_4

    const/4 p2, 0x1

    .line 403
    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p2, :cond_5

    const-string v1, "true"

    goto :goto_3

    :cond_5
    const-string v1, "false"

    :goto_3
    filled-new-array {p5, v0, v1}, [Ljava/lang/Object;

    move-result-object p5

    const-string v0, "row : %d, column : %d, selectedCell : %s"

    invoke-static {v0, p5}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iget-object p5, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$2;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget-object p5, p5, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_cellTapAction:Lcom/metamoji/forSchool/ui/UiHeaderListView$IHeaderListViewCellTapAction;

    invoke-interface {p5, p3, p4, p1, p2}, Lcom/metamoji/forSchool/ui/UiHeaderListView$IHeaderListViewCellTapAction;->cellTap(IILandroid/graphics/Rect;Z)V

    return-void
.end method
