.class public Lcom/metamoji/ui/cabinet/DriveListView;
.super Landroid/widget/ListView;
.source "DriveListView.java"

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

    .line 27
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/metamoji/ui/cabinet/DriveListView;->DRAG_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/ui/cabinet/DriveListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/cabinet/DriveListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mSortable:Z

    .line 30
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragging:Z

    .line 31
    new-instance p2, Lcom/metamoji/ui/cabinet/SimpleDragListener;

    invoke-direct {p2}, Lcom/metamoji/ui/cabinet/SimpleDragListener;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    const/16 p2, 0x80

    const/16 p3, 0xff

    .line 32
    invoke-static {p2, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mBitmapBackgroundColor:I

    const/4 p2, 0x0

    .line 33
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 34
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragImageView:Landroid/widget/ImageView;

    .line 35
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, -0x1

    .line 37
    iput p2, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mPositionFrom:I

    .line 126
    iput p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->_dragViewHeight:I

    .line 50
    invoke-virtual {p0, p0}, Lcom/metamoji/ui/cabinet/DriveListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private duringDrag(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 180
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 186
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/DriveListView;->getHeight()I

    move-result v3

    .line 187
    div-int/lit8 v4, v3, 0x2

    .line 191
    div-int/lit8 v5, v3, 0x9

    .line 192
    div-int/lit8 v6, v3, 0x4

    .line 193
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

    .line 207
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/DriveListView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 208
    invoke-virtual {p0, v3, v4}, Lcom/metamoji/ui/cabinet/DriveListView;->pointToPosition(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    .line 210
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/DriveListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x40

    invoke-virtual {p0, v3, v4}, Lcom/metamoji/ui/cabinet/DriveListView;->pointToPosition(II)I

    move-result v5

    .line 213
    :cond_6
    invoke-direct {p0, v5}, Lcom/metamoji/ui/cabinet/DriveListView;->getChildByIndex(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 215
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {p0, v5, v3}, Lcom/metamoji/ui/cabinet/DriveListView;->setSelectionFromTop(II)V

    .line 220
    :cond_7
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    .line 223
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragImageView:Landroid/widget/ImageView;

    if-gez p1, :cond_8

    const/4 p1, 0x4

    .line 221
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 223
    :cond_8
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    :goto_1
    invoke-direct {p0, v2}, Lcom/metamoji/ui/cabinet/DriveListView;->updateLayoutParams(I)V

    .line 226
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/DriveListView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    if-eqz p1, :cond_9

    .line 228
    iget v1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mPositionFrom:I

    invoke-virtual {p0, v0, v2}, Lcom/metamoji/ui/cabinet/DriveListView;->pointToPosition(II)I

    move-result v3

    invoke-virtual {p1, v1, v3, v0, v2}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onDuringDrag(IIII)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mPositionFrom:I

    :cond_9
    const/4 p1, 0x1

    return p1

    :cond_a
    :goto_2
    return v1
.end method

.method private eventToPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/cabinet/DriveListView;->pointToPosition(II)I

    move-result p1

    return p1
.end method

.method private getChildByIndex(I)Landroid/view/View;
    .locals 1

    .line 265
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/DriveListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/DriveListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .line 270
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/DriveListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method private initLayoutParams(I)V
    .locals 2

    .line 275
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    .line 276
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 277
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 278
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 279
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x298

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 283
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 284
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 287
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 288
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/DriveListView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 289
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 290
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/DriveListView;->getTop()I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->_dragViewHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method private startDrag(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 130
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mActionDownEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/DriveListView;->eventToPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mPositionFrom:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    .line 136
    iput-boolean v2, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragging:Z

    .line 139
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/DriveListView;->getChildByIndex(I)Landroid/view/View;

    move-result-object v0

    .line 140
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 141
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/DriveListView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/metamoji/ui/cabinet/DriveListView;->_dragViewHeight:I

    .line 145
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/metamoji/ui/cabinet/DriveListView;->_dragViewHeight:I

    sget-object v6, Lcom/metamoji/ui/cabinet/DriveListView;->DRAG_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 146
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 150
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 151
    invoke-interface {v3, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int v1, p1

    .line 159
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez p1, :cond_3

    .line 160
    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/DriveListView;->initLayoutParams(I)V

    goto :goto_0

    .line 162
    :cond_3
    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/DriveListView;->updateLayoutParams(I)V

    .line 166
    :goto_0
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/DriveListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragImageView:Landroid/widget/ImageView;

    .line 167
    iget v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mBitmapBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 168
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    if-eqz p1, :cond_4

    .line 173
    iget v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mPositionFrom:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStartDrag(I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mPositionFrom:I

    .line 175
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mActionDownEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/DriveListView;->duringDrag(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method private stopDrag(Landroid/view/MotionEvent;Z)Z
    .locals 4

    .line 235
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragging:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 238
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    if-eqz p2, :cond_1

    .line 240
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    if-eqz p2, :cond_1

    .line 241
    iget v3, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mPositionFrom:I

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/DriveListView;->eventToPosition(Landroid/view/MotionEvent;)I

    move-result p1

    invoke-virtual {p2, v3, p1, v0, v2}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStopDrag(IIII)Z

    .line 243
    :cond_1
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragging:Z

    .line 244
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 246
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/DriveListView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragImageView:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 251
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragImageView:Landroid/widget/ImageView;

    .line 254
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2

    .line 255
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 257
    :cond_2
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method private storeMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mActionDownEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method private updateLayoutParams(I)V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/DriveListView;->getTop()I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->_dragViewHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method


# virtual methods
.method public getSortable()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mSortable:Z

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

    const/4 p1, 0x0

    .line 118
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/DriveListView;->startDrag(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 83
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mSortable:Z

    if-nez v0, :cond_0

    .line 84
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 86
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

    .line 106
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/DriveListView;->stopDrag(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 93
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/DriveListView;->duringDrag(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 99
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/metamoji/ui/cabinet/DriveListView;->stopDrag(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 88
    :cond_4
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/DriveListView;->storeMotionEvent(Landroid/view/MotionEvent;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/DriveListView;->startDrag(Landroid/view/MotionEvent;)Z

    .line 112
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mBitmapBackgroundColor:I

    return-void
.end method

.method public setDragListener(Lcom/metamoji/ui/cabinet/SimpleDragListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    return-void
.end method

.method public setSortable(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/DriveListView;->mSortable:Z

    return-void
.end method
