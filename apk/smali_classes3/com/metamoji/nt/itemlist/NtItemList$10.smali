.class Lcom/metamoji/nt/itemlist/NtItemList$10;
.super Ljava/lang/Object;
.source "NtItemList.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtItemList;->onLongPress(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private m_contextMenuCanceled:Z

.field private final m_drag_threshold:I

.field private m_exited:Z

.field private final m_scrollout_threshold:I

.field private m_start:Landroid/graphics/Point;

.field private m_vertical:Z

.field private m_width:I

.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtItemList;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemList;ILandroid/view/View;)V
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

    .line 827
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iput p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->val$position:I

    iput-object p3, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 828
    iput-boolean p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_contextMenuCanceled:Z

    const/16 p2, 0xa

    .line 830
    iput p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_drag_threshold:I

    .line 831
    iput-boolean p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_exited:Z

    const/4 p1, 0x1

    .line 833
    iput-boolean p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_vertical:Z

    const/16 p1, 0x64

    .line 834
    iput p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_scrollout_threshold:I

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6

    .line 838
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x64

    const/4 v4, -0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 870
    :pswitch_0
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->val$view:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 871
    iget-boolean p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_contextMenuCanceled:Z

    if-eqz p1, :cond_a

    .line 872
    iput-boolean v2, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_exited:Z

    goto/16 :goto_3

    .line 864
    :pswitch_1
    iget-boolean p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_contextMenuCanceled:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_exited:Z

    if-eqz p1, :cond_a

    .line 865
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 866
    iput-boolean v5, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_exited:Z

    goto/16 :goto_3

    .line 859
    :pswitch_2
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget-object p1, p1, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 860
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-static {p1, v3}, Lcom/metamoji/nt/itemlist/NtItemList;->-$$Nest$mautoScrollStop(Lcom/metamoji/nt/itemlist/NtItemList;I)V

    .line 861
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-static {p1, v4}, Lcom/metamoji/nt/itemlist/NtItemList;->-$$Nest$fputm_dragItemPosition(Lcom/metamoji/nt/itemlist/NtItemList;I)V

    goto/16 :goto_3

    .line 906
    :pswitch_3
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Lcom/metamoji/nt/itemlist/NtItemList;->pointToPosition(II)I

    move-result p1

    const/4 p2, -0x3

    if-eq p1, p2, :cond_3

    const/4 p2, -0x2

    if-eq p1, p2, :cond_2

    if-eq p1, v4, :cond_1

    if-ltz p1, :cond_0

    .line 920
    iget-object p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-virtual {p2}, Lcom/metamoji/nt/itemlist/NtItemList;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    goto :goto_0

    .line 923
    :cond_0
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget-object p1, p1, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 924
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-static {p1, v3}, Lcom/metamoji/nt/itemlist/NtItemList;->-$$Nest$mautoScrollStop(Lcom/metamoji/nt/itemlist/NtItemList;I)V

    .line 925
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-static {p1, v4}, Lcom/metamoji/nt/itemlist/NtItemList;->-$$Nest$fputm_dragItemPosition(Lcom/metamoji/nt/itemlist/NtItemList;I)V

    return v5

    .line 915
    :cond_1
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget-object p1, p1, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 916
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-static {p1, v3}, Lcom/metamoji/nt/itemlist/NtItemList;->-$$Nest$mautoScrollStop(Lcom/metamoji/nt/itemlist/NtItemList;I)V

    .line 917
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-static {p1, v4}, Lcom/metamoji/nt/itemlist/NtItemList;->-$$Nest$fputm_dragItemPosition(Lcom/metamoji/nt/itemlist/NtItemList;I)V

    return v5

    :cond_2
    move p1, v5

    goto :goto_0

    .line 912
    :cond_3
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtItemList;->getCount()I

    move-result p1

    sub-int/2addr p1, v2

    .line 929
    :goto_0
    iget p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->val$position:I

    if-eq p1, p2, :cond_4

    .line 930
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-virtual {v0, p2, p1}, Lcom/metamoji/nt/itemlist/NtItemList;->move(II)V

    .line 932
    :cond_4
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->val$view:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 876
    :pswitch_4
    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p1, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 878
    iget-object p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_start:Landroid/graphics/Point;

    if-nez p2, :cond_5

    .line 879
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_start:Landroid/graphics/Point;

    goto :goto_1

    .line 880
    :cond_5
    iget-boolean p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_contextMenuCanceled:Z

    if-nez p2, :cond_7

    .line 882
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_start:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 883
    iget v1, p1, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_start:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 884
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xa

    if-le v4, v1, :cond_6

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-gt v4, p2, :cond_7

    .line 889
    :cond_6
    iget-object p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->val$view:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 890
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->cancelAllMenus()V

    .line 891
    iput-boolean v2, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_contextMenuCanceled:Z

    .line 896
    :cond_7
    :goto_1
    iget-boolean p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_vertical:Z

    .line 899
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    if-eqz p2, :cond_8

    .line 897
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget-object p2, p2, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    check-cast p2, Lcom/metamoji/nt/itemlist/NtItemListScrollView;

    invoke-interface {p2}, Lcom/metamoji/nt/itemlist/NtItemListScrollView;->getDistance()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {v0, p1}, Lcom/metamoji/nt/itemlist/NtItemList;->-$$Nest$fputm_tapPointXY(Lcom/metamoji/nt/itemlist/NtItemList;I)V

    goto :goto_2

    .line 899
    :cond_8
    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget-object p2, p2, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    check-cast p2, Lcom/metamoji/nt/itemlist/NtItemListScrollView;

    invoke-interface {p2}, Lcom/metamoji/nt/itemlist/NtItemListScrollView;->getDistance()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {v0, p1}, Lcom/metamoji/nt/itemlist/NtItemList;->-$$Nest$fputm_tapPointXY(Lcom/metamoji/nt/itemlist/NtItemList;I)V

    .line 901
    :goto_2
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_width:I

    iget-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_vertical:Z

    invoke-static {p1, v3, p2, v0}, Lcom/metamoji/nt/itemlist/NtItemList;->-$$Nest$mautoScroll(Lcom/metamoji/nt/itemlist/NtItemList;IIZ)V

    goto :goto_3

    .line 842
    :pswitch_5
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 843
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_MOVE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 845
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget-object p1, p1, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 846
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-static {p1, v3}, Lcom/metamoji/nt/itemlist/NtItemList;->-$$Nest$mautoScrollStop(Lcom/metamoji/nt/itemlist/NtItemList;I)V

    .line 847
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-static {p1, v4}, Lcom/metamoji/nt/itemlist/NtItemList;->-$$Nest$fputm_dragItemPosition(Lcom/metamoji/nt/itemlist/NtItemList;I)V

    .line 854
    :cond_9
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget-object p1, p1, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    check-cast p1, Lcom/metamoji/nt/itemlist/NtItemListScrollView;

    invoke-interface {p1}, Lcom/metamoji/nt/itemlist/NtItemListScrollView;->isVertical()Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_vertical:Z

    .line 855
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget-object p1, p1, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    check-cast p1, Lcom/metamoji/nt/itemlist/NtItemListScrollView;

    invoke-interface {p1}, Lcom/metamoji/nt/itemlist/NtItemListScrollView;->getLength()I

    move-result p1

    iput p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->m_width:I

    .line 856
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$10;->val$position:I

    invoke-static {p1, p2}, Lcom/metamoji/nt/itemlist/NtItemList;->-$$Nest$fputm_dragItemPosition(Lcom/metamoji/nt/itemlist/NtItemList;I)V

    :cond_a
    :goto_3
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
