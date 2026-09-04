.class public Lcom/metamoji/ui/cabinet/TreeView;
.super Landroid/widget/ListView;
.source "TreeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/TreeView$OnTreeItemClickListener;
    }
.end annotation


# instance fields
.field private _context:Landroid/content/Context;

.field private _dragImageView:Landroid/widget/ImageView;

.field _dragListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;

.field _dragging:Z

.field _draggingByNoteList:Z

.field private _layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private _lisner:Lcom/metamoji/ui/cabinet/TreeView$OnTreeItemClickListener;

.field private _originPoint:I

.field private _positionFrom:I

.field private _scrollX:I

.field private _treeAdapter:Lcom/metamoji/ui/cabinet/TreeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/ui/cabinet/TreeAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field private _windowManager:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fget_lisner(Lcom/metamoji/ui/cabinet/TreeView;)Lcom/metamoji/ui/cabinet/TreeView$OnTreeItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_lisner:Lcom/metamoji/ui/cabinet/TreeView$OnTreeItemClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_treeAdapter(Lcom/metamoji/ui/cabinet/TreeView;)Lcom/metamoji/ui/cabinet/TreeAdapter;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_treeAdapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/TreeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 42
    iput p2, p0, Lcom/metamoji/ui/cabinet/TreeView;->_positionFrom:I

    const/4 p2, 0x0

    .line 44
    iput-boolean p2, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragging:Z

    .line 46
    iput-boolean p2, p0, Lcom/metamoji/ui/cabinet/TreeView;->_draggingByNoteList:Z

    .line 56
    iput p2, p0, Lcom/metamoji/ui/cabinet/TreeView;->_originPoint:I

    .line 67
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_context:Landroid/content/Context;

    .line 70
    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragImageView:Landroid/widget/ImageView;

    .line 71
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragImageView:Landroid/widget/ImageView;

    sget v0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumb_folder:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragImageView:Landroid/widget/ImageView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 74
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 75
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragImageView:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 76
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragImageView:Landroid/widget/ImageView;

    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_HIGHT:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 77
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragImageView:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/TreeView;->initLayoutParams()V

    .line 82
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_context:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_windowManager:Landroid/view/WindowManager;

    .line 84
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/cabinet/TreeView;->setDividerHeight(I)V

    .line 88
    new-instance p1, Lcom/metamoji/ui/cabinet/TreeView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/cabinet/TreeView$1;-><init>(Lcom/metamoji/ui/cabinet/TreeView;)V

    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private duringDrag(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 276
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragging:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 280
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v7, v2

    .line 282
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeView;->getHeight()I

    move-result v2

    .line 283
    div-int/lit8 v3, v2, 0x2

    .line 287
    div-int/lit8 v4, v2, 0x9

    .line 288
    div-int/lit8 v5, v2, 0x4

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1f4

    cmp-long p1, v8, v10

    const/16 v6, 0x8

    if-gez p1, :cond_2

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    if-ge v7, v5, :cond_4

    if-ge v7, v4, :cond_3

    const/16 p1, -0x19

    goto :goto_0

    :cond_3
    const/4 p1, -0x8

    goto :goto_0

    :cond_4
    sub-int p1, v2, v5

    if-le v7, p1, :cond_1

    sub-int/2addr v2, v4

    if-le v7, v2, :cond_5

    const/16 p1, 0x19

    goto :goto_0

    :cond_5
    move p1, v6

    :goto_0
    if-eqz p1, :cond_7

    .line 303
    invoke-virtual {p0, v1, v3}, Lcom/metamoji/ui/cabinet/TreeView;->pointToPosition(II)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_6

    .line 305
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeView;->getDividerHeight()I

    move-result v2

    add-int/2addr v3, v2

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_SIZE:I

    add-int/2addr v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/metamoji/ui/cabinet/TreeView;->pointToPosition(II)I

    move-result v2

    .line 307
    :cond_6
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/cabinet/TreeView;->getChildByIndex(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 309
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {p0, v2, v3}, Lcom/metamoji/ui/cabinet/TreeView;->setSelectionFromTop(II)V

    .line 314
    :cond_7
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    .line 317
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragImageView:Landroid/widget/ImageView;

    if-gez p1, :cond_8

    .line 315
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 317
    :cond_8
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    :goto_1
    iget p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_originPoint:I

    if-nez p1, :cond_9

    .line 321
    iput v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_originPoint:I

    .line 323
    :cond_9
    iget p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_originPoint:I

    sub-int p1, v0, p1

    .line 324
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeView;->getWidth()I

    move-result v1

    if-le p1, v1, :cond_a

    .line 325
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeView;->getWidth()I

    move-result p1

    .line 327
    :cond_a
    div-int/lit8 p1, p1, 0x2

    sub-int v1, v0, p1

    .line 328
    iget v2, p0, Lcom/metamoji/ui/cabinet/TreeView;->_scrollX:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, v7}, Lcom/metamoji/ui/cabinet/TreeView;->updateLayoutParams(II)V

    .line 330
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/TreeView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;

    if-eqz v3, :cond_b

    .line 332
    iget v4, p0, Lcom/metamoji/ui/cabinet/TreeView;->_positionFrom:I

    invoke-virtual {p0, v0, v7}, Lcom/metamoji/ui/cabinet/TreeView;->pointToPosition(II)I

    move-result v5

    iget v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_scrollX:I

    add-int v6, p1, v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->onDuringDrag(IIIIZLcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    :cond_b
    const/4 p1, 0x1

    return p1
.end method

.method private initLayoutParams()V
    .locals 2

    .line 368
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    .line 369
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 370
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 371
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 372
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x298

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 376
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 377
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;Z)Z
    .locals 4

    .line 339
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragging:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 342
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;

    if-eqz p2, :cond_1

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 345
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;

    iget v2, p0, Lcom/metamoji/ui/cabinet/TreeView;->_positionFrom:I

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ui/cabinet/TreeView;->pointToPosition(II)I

    move-result v3

    invoke-virtual {v0, v2, v3, p2, p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->onStopDrag(IIII)V

    .line 348
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_windowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragImageView:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 349
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragging:Z

    .line 350
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragImageView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    iput v1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_originPoint:I

    const/4 p1, -0x1

    .line 352
    iput p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_positionFrom:I

    const/4 p1, 0x1

    return p1
.end method

.method private updateLayoutParams(II)V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_HIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 383
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method


# virtual methods
.method clearOnDraggingBackground()V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_treeAdapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->clearOnDraggingBackground()V

    return-void
.end method

.method duringDragByNoteList(IIZLcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 9

    .line 151
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_draggingByNoteList:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 155
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 156
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/TreeView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 157
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int v6, p2, v1

    .line 158
    iget p2, v0, Landroid/graphics/Rect;->right:I

    sub-int p2, p1, p2

    if-lez p2, :cond_1

    goto/16 :goto_1

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeView;->getHeight()I

    move-result p2

    .line 163
    div-int/lit8 v0, p2, 0x2

    .line 167
    div-int/lit8 v1, p2, 0x9

    .line 168
    div-int/lit8 v2, p2, 0x4

    const/4 v3, 0x0

    if-ge v6, v2, :cond_3

    if-ge v6, v1, :cond_2

    const/16 p2, -0x19

    goto :goto_0

    :cond_2
    const/4 p2, -0x8

    goto :goto_0

    :cond_3
    sub-int v2, p2, v2

    if-le v6, v2, :cond_5

    sub-int/2addr p2, v1

    if-le v6, p2, :cond_4

    const/16 p2, 0x19

    goto :goto_0

    :cond_4
    const/16 p2, 0x8

    goto :goto_0

    :cond_5
    move p2, v3

    :goto_0
    if-eqz p2, :cond_7

    .line 180
    invoke-virtual {p0, v3, v0}, Lcom/metamoji/ui/cabinet/TreeView;->pointToPosition(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 182
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeView;->getDividerHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_SIZE:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/metamoji/ui/cabinet/TreeView;->pointToPosition(II)I

    move-result v1

    .line 184
    :cond_6
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/TreeView;->getChildByIndex(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ui/cabinet/TreeView;->setSelectionFromTop(II)V

    .line 190
    :cond_7
    iget p2, p0, Lcom/metamoji/ui/cabinet/TreeView;->_originPoint:I

    if-nez p2, :cond_8

    .line 191
    iput p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_originPoint:I

    .line 193
    :cond_8
    iget p2, p0, Lcom/metamoji/ui/cabinet/TreeView;->_originPoint:I

    sub-int p2, p1, p2

    .line 194
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeView;->getWidth()I

    move-result v0

    if-le p2, v0, :cond_9

    .line 195
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeView;->getWidth()I

    move-result p2

    .line 197
    :cond_9
    div-int/lit8 p2, p2, 0x2

    .line 199
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;

    if-eqz v2, :cond_a

    .line 200
    iget v3, p0, Lcom/metamoji/ui/cabinet/TreeView;->_positionFrom:I

    invoke-virtual {p0, p1, v6}, Lcom/metamoji/ui/cabinet/TreeView;->pointToPosition(II)I

    move-result v4

    iget p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_scrollX:I

    add-int v5, p2, p1

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->onDuringDrag(IIIIZLcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    :cond_a
    :goto_1
    return-void
.end method

.method getChildByIndex(I)Landroid/view/View;
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/TreeView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/TreeView;->stopDrag(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 120
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/TreeView;->duringDrag(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 126
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/metamoji/ui/cabinet/TreeView;->stopDrag(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 140
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnTreeItemClickListener(Lcom/metamoji/ui/cabinet/TreeView$OnTreeItemClickListener;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_lisner:Lcom/metamoji/ui/cabinet/TreeView$OnTreeItemClickListener;

    return-void
.end method

.method public setTreeAdapter(Lcom/metamoji/ui/cabinet/TreeAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/TreeAdapter<",
            "*>;)V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_treeAdapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    .line 108
    invoke-virtual {p1, p0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->setTreeView(Lcom/metamoji/ui/cabinet/TreeView;)V

    .line 109
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_treeAdapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method startDrag(Landroid/view/MotionEvent;II)Z
    .locals 1

    .line 247
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 251
    :cond_0
    iget-boolean p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragging:Z

    if-eqz p1, :cond_1

    return v0

    .line 255
    :cond_1
    iput p2, p0, Lcom/metamoji/ui/cabinet/TreeView;->_positionFrom:I

    .line 256
    iput p3, p0, Lcom/metamoji/ui/cabinet/TreeView;->_scrollX:I

    if-gez p2, :cond_2

    return v0

    .line 264
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_windowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragImageView:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/TreeView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    .line 269
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragging:Z

    return p1
.end method

.method startDragByNoteList()V
    .locals 1

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_draggingByNoteList:Z

    return-void
.end method

.method stopDragByNoteList(Lcom/metamoji/ui/cabinet/CabinetTreeItem;II)V
    .locals 2

    .line 207
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_draggingByNoteList:Z

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 213
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/TreeView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 214
    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, v0

    .line 216
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/ui/cabinet/TreeView;->pointToPosition(II)I

    move-result v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->onStopDrag(Lcom/metamoji/ui/cabinet/CabinetTreeItem;III)V

    :cond_1
    const/4 p1, 0x0

    .line 220
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_draggingByNoteList:Z

    .line 221
    iput p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_originPoint:I

    return-void
.end method

.method stopDragByNoteList(Ljava/lang/String;Ljava/util/ArrayList;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 226
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/TreeView;->_draggingByNoteList:Z

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 232
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/TreeView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 233
    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v6, p4, v0

    .line 235
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_dragListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;

    if-eqz v1, :cond_1

    .line 236
    invoke-virtual {p0, p3, v6}, Lcom/metamoji/ui/cabinet/TreeView;->pointToPosition(II)I

    move-result v4

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->onStopDrag(Ljava/lang/String;Ljava/util/ArrayList;III)V

    :cond_1
    const/4 p1, 0x0

    .line 239
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_draggingByNoteList:Z

    .line 240
    iput p1, p0, Lcom/metamoji/ui/cabinet/TreeView;->_originPoint:I

    return-void
.end method
