.class public Lcom/metamoji/ui/cabinet/user/OrganizationListView;
.super Landroid/widget/ListView;
.source "OrganizationListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# static fields
.field private static final DRAG_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;


# instance fields
.field private _dragViewHeight:I

.field private mActionDownEvent:Landroid/view/MotionEvent;

.field private mBitmapBackgroundColor:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragImageView:Landroid/widget/ImageView;

.field private mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

.field private mDragging:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mPositionFrom:I

.field private mSortable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->DRAG_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mSortable:Z

    .line 29
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragging:Z

    .line 30
    new-instance v0, Lcom/metamoji/ui/cabinet/SimpleDragListener;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/SimpleDragListener;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    const/16 v0, 0x80

    const/16 v1, 0xff

    .line 31
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mBitmapBackgroundColor:I

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 33
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragImageView:Landroid/widget/ImageView;

    .line 34
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mPositionFrom:I

    .line 160
    iput p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->_dragViewHeight:I

    .line 44
    invoke-virtual {p0, p0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mSortable:Z

    .line 29
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragging:Z

    .line 30
    new-instance p2, Lcom/metamoji/ui/cabinet/SimpleDragListener;

    invoke-direct {p2}, Lcom/metamoji/ui/cabinet/SimpleDragListener;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    const/16 p2, 0x80

    const/16 v0, 0xff

    .line 31
    invoke-static {p2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mBitmapBackgroundColor:I

    const/4 p2, 0x0

    .line 32
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 33
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragImageView:Landroid/widget/ImageView;

    .line 34
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, -0x1

    .line 36
    iput p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mPositionFrom:I

    .line 160
    iput p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->_dragViewHeight:I

    .line 53
    invoke-virtual {p0, p0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mSortable:Z

    .line 29
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragging:Z

    .line 30
    new-instance p2, Lcom/metamoji/ui/cabinet/SimpleDragListener;

    invoke-direct {p2}, Lcom/metamoji/ui/cabinet/SimpleDragListener;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    const/16 p2, 0x80

    const/16 p3, 0xff

    .line 31
    invoke-static {p2, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mBitmapBackgroundColor:I

    const/4 p2, 0x0

    .line 32
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 33
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragImageView:Landroid/widget/ImageView;

    .line 34
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, -0x1

    .line 36
    iput p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mPositionFrom:I

    .line 160
    iput p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->_dragViewHeight:I

    .line 64
    invoke-virtual {p0, p0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mSortable:Z

    .line 29
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragging:Z

    .line 30
    new-instance p2, Lcom/metamoji/ui/cabinet/SimpleDragListener;

    invoke-direct {p2}, Lcom/metamoji/ui/cabinet/SimpleDragListener;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    const/16 p2, 0x80

    const/16 p3, 0xff

    .line 31
    invoke-static {p2, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mBitmapBackgroundColor:I

    const/4 p2, 0x0

    .line 32
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 33
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragImageView:Landroid/widget/ImageView;

    .line 34
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, -0x1

    .line 36
    iput p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mPositionFrom:I

    .line 160
    iput p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->_dragViewHeight:I

    .line 76
    invoke-virtual {p0, p0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private duringDrag(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 214
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 218
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 220
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->getHeight()I

    move-result v3

    .line 221
    div-int/lit8 v4, v3, 0x2

    .line 225
    div-int/lit8 v5, v3, 0x9

    .line 226
    div-int/lit8 v6, v3, 0x4

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1f4

    cmp-long p1, v7, v9

    if-gez p1, :cond_2

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    if-ge v2, v6, :cond_4

    if-ge v2, v5, :cond_3

    const/16 p1, -0x19

    goto :goto_0

    :cond_3
    const/4 p1, -0x8

    goto :goto_0

    :cond_4
    sub-int p1, v3, v6

    if-le v2, p1, :cond_1

    sub-int/2addr v3, v5

    if-le v2, v3, :cond_5

    const/16 p1, 0x19

    goto :goto_0

    :cond_5
    const/16 p1, 0x8

    :goto_0
    if-eqz p1, :cond_7

    .line 241
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 242
    invoke-virtual {p0, v3, v4}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->pointToPosition(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    .line 244
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x40

    invoke-virtual {p0, v3, v4}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->pointToPosition(II)I

    move-result v5

    .line 247
    :cond_6
    invoke-direct {p0, v5}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->getChildByIndex(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 249
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {p0, v5, v3}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setSelectionFromTop(II)V

    .line 254
    :cond_7
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    .line 257
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragImageView:Landroid/widget/ImageView;

    if-gez p1, :cond_8

    const/4 p1, 0x4

    .line 255
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 257
    :cond_8
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    :goto_1
    invoke-direct {p0, v2}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->updateLayoutParams(I)V

    .line 260
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    if-eqz p1, :cond_9

    .line 262
    iget v1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mPositionFrom:I

    invoke-virtual {p0, v0, v2}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->pointToPosition(II)I

    move-result v3

    invoke-virtual {p1, v1, v3, v0, v2}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onDuringDrag(IIII)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mPositionFrom:I

    :cond_9
    const/4 p1, 0x1

    return p1

    :cond_a
    :goto_2
    return v1
.end method

.method private eventToPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->pointToPosition(II)I

    move-result p1

    return p1
.end method

.method private getChildByIndex(I)Landroid/view/View;
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .line 304
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method private initLayoutParams(I)V
    .locals 2

    .line 309
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    .line 310
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 311
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 312
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 313
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x298

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 317
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 318
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 321
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 322
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 323
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 324
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->getTop()I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->_dragViewHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method private startDrag(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 164
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mActionDownEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->eventToPosition(Landroid/view/MotionEvent;)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mPositionFrom:I

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 170
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragging:Z

    .line 173
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->getChildByIndex(I)Landroid/view/View;

    move-result-object p1

    .line 174
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 175
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->_dragViewHeight:I

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->_dragViewHeight:I

    sget-object v5, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->DRAG_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 180
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 184
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 185
    invoke-interface {v2, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 189
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mActionDownEvent:Landroid/view/MotionEvent;

    if-eqz p1, :cond_2

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int v0, p1

    .line 193
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez p1, :cond_3

    .line 194
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->initLayoutParams(I)V

    goto :goto_0

    .line 196
    :cond_3
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->updateLayoutParams(I)V

    .line 200
    :goto_0
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragImageView:Landroid/widget/ImageView;

    .line 201
    iget v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mBitmapBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 202
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 203
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    if-eqz p1, :cond_4

    .line 207
    iget v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mPositionFrom:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStartDrag(I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mPositionFrom:I

    .line 209
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mActionDownEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->duringDrag(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method private stopDrag(Landroid/view/MotionEvent;Z)Z
    .locals 4

    .line 269
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragging:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    if-eqz p2, :cond_1

    .line 274
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    if-eqz p2, :cond_1

    .line 275
    iget v3, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mPositionFrom:I

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->eventToPosition(Landroid/view/MotionEvent;)I

    move-result p1

    invoke-virtual {p2, v3, p1, v0, v2}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStopDrag(IIII)Z

    .line 277
    :cond_1
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragging:Z

    .line 278
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 280
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragImageView:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 285
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragImageView:Landroid/widget/ImageView;

    .line 288
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 290
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mActionDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    .line 291
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mActionDownEvent:Landroid/view/MotionEvent;

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private storeMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mActionDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 157
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mActionDownEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method private updateLayoutParams(I)V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->getTop()I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->_dragViewHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method


# virtual methods
.method public getSortable()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mSortable:Z

    return v0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 144
    iget-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mSortable:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 148
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->startDrag(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 109
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mSortable:Z

    if-nez v0, :cond_0

    .line 110
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->stopDrag(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 119
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->duringDrag(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 125
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->stopDrag(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 114
    :cond_4
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->storeMotionEvent(Landroid/view/MotionEvent;)V

    .line 138
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mBitmapBackgroundColor:I

    return-void
.end method

.method public setDragListener(Lcom/metamoji/ui/cabinet/SimpleDragListener;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    return-void
.end method

.method public setSortable(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->mSortable:Z

    return-void
.end method
