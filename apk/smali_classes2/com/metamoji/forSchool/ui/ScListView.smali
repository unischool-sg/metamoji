.class public Lcom/metamoji/forSchool/ui/ScListView;
.super Landroid/widget/ListView;
.source "ScListView.java"


# static fields
.field private static final DRAG_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;


# instance fields
.field private _dragViewHeight:I

.field private mActionDownEvent:Landroid/view/MotionEvent;

.field private mBaseY:I

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

    .line 31
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/metamoji/forSchool/ui/ScListView;->DRAG_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mSortable:Z

    .line 34
    iput-boolean p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragging:Z

    .line 35
    new-instance v0, Lcom/metamoji/ui/cabinet/SimpleDragListener;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/SimpleDragListener;-><init>()V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    const/16 v0, 0x80

    const/16 v1, 0xff

    .line 36
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mBitmapBackgroundColor:I

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 38
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragImageView:Landroid/widget/ImageView;

    .line 39
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mPositionFrom:I

    .line 150
    iput p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->_dragViewHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mSortable:Z

    .line 34
    iput-boolean p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragging:Z

    .line 35
    new-instance p2, Lcom/metamoji/ui/cabinet/SimpleDragListener;

    invoke-direct {p2}, Lcom/metamoji/ui/cabinet/SimpleDragListener;-><init>()V

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    const/16 p2, 0x80

    const/16 v0, 0xff

    .line 36
    invoke-static {p2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    iput p2, p0, Lcom/metamoji/forSchool/ui/ScListView;->mBitmapBackgroundColor:I

    const/4 p2, 0x0

    .line 37
    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 38
    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragImageView:Landroid/widget/ImageView;

    .line 39
    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, -0x1

    .line 41
    iput p2, p0, Lcom/metamoji/forSchool/ui/ScListView;->mPositionFrom:I

    .line 150
    iput p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->_dragViewHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mSortable:Z

    .line 34
    iput-boolean p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragging:Z

    .line 35
    new-instance p2, Lcom/metamoji/ui/cabinet/SimpleDragListener;

    invoke-direct {p2}, Lcom/metamoji/ui/cabinet/SimpleDragListener;-><init>()V

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    const/16 p2, 0x80

    const/16 p3, 0xff

    .line 36
    invoke-static {p2, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    iput p2, p0, Lcom/metamoji/forSchool/ui/ScListView;->mBitmapBackgroundColor:I

    const/4 p2, 0x0

    .line 37
    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 38
    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragImageView:Landroid/widget/ImageView;

    .line 39
    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, -0x1

    .line 41
    iput p2, p0, Lcom/metamoji/forSchool/ui/ScListView;->mPositionFrom:I

    .line 150
    iput p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->_dragViewHeight:I

    return-void
.end method

.method private duringDrag(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 206
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 212
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScListView;->getHeight()I

    move-result v3

    .line 213
    div-int/lit8 v4, v3, 0x2

    .line 217
    div-int/lit8 v5, v3, 0x9

    .line 218
    div-int/lit8 v6, v3, 0x4

    .line 219
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

    .line 233
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScListView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 234
    invoke-virtual {p0, v3, v4}, Lcom/metamoji/forSchool/ui/ScListView;->pointToPosition(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    .line 236
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x40

    invoke-virtual {p0, v3, v4}, Lcom/metamoji/forSchool/ui/ScListView;->pointToPosition(II)I

    move-result v5

    .line 239
    :cond_6
    invoke-direct {p0, v5}, Lcom/metamoji/forSchool/ui/ScListView;->getChildByIndex(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 241
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {p0, v5, v3}, Lcom/metamoji/forSchool/ui/ScListView;->setSelectionFromTop(II)V

    .line 246
    :cond_7
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    .line 249
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragImageView:Landroid/widget/ImageView;

    if-gez p1, :cond_8

    const/4 p1, 0x4

    .line 247
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 249
    :cond_8
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    :goto_1
    invoke-direct {p0, v2}, Lcom/metamoji/forSchool/ui/ScListView;->updateLayoutParams(I)V

    .line 252
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScListView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    if-eqz p1, :cond_9

    .line 254
    iget v1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mPositionFrom:I

    invoke-virtual {p0, v0, v2}, Lcom/metamoji/forSchool/ui/ScListView;->pointToPosition(II)I

    move-result v3

    invoke-virtual {p1, v1, v3, v0, v2}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onDuringDrag(IIII)I

    move-result p1

    iput p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mPositionFrom:I

    :cond_9
    const/4 p1, 0x1

    return p1

    :cond_a
    :goto_2
    return v1
.end method

.method private eventToPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/forSchool/ui/ScListView;->pointToPosition(II)I

    move-result p1

    return p1
.end method

.method private getChildByIndex(I)Landroid/view/View;
    .locals 1

    .line 294
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .line 299
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method private initLayoutParams(I)V
    .locals 2

    .line 304
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    .line 305
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 306
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 307
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 308
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x398

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 313
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 314
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 316
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScListView;->updateLayoutParams(I)V

    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;Z)Z
    .locals 4

    .line 261
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragging:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 264
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    if-eqz p2, :cond_1

    .line 266
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    if-eqz p2, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScListView;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/forSchool/ui/ScListView;->pointToPosition(II)I

    move-result p2

    .line 269
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    iget v3, p0, Lcom/metamoji/forSchool/ui/ScListView;->mPositionFrom:I

    invoke-virtual {v2, v3, p2, v0, p1}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStopDrag(IIII)Z

    :cond_1
    const/4 p1, 0x0

    .line 271
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 272
    iput-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragging:Z

    .line 273
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    .line 275
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScListView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragImageView:Landroid/widget/ImageView;

    invoke-interface {p2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :catch_0
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragImageView:Landroid/widget/ImageView;

    .line 283
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 285
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScListView;->mActionDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    .line 286
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mActionDownEvent:Landroid/view/MotionEvent;

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private storeMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mActionDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 147
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mActionDownEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method private updateLayoutParams(I)V
    .locals 6

    .line 321
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 322
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    .line 323
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 326
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->isChromeOs(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 328
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 330
    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    move v0, v3

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    .line 334
    new-array v4, v2, [I

    .line 335
    invoke-virtual {p0, v4}, Lcom/metamoji/forSchool/ui/ScListView;->getLocationOnScreen([I)V

    .line 336
    iget-object v5, p0, Lcom/metamoji/forSchool/ui/ScListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    aget v3, v4, v3

    sub-int/2addr v3, v1

    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 337
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    aget v3, v4, v3

    add-int/2addr p1, v3

    iget v3, p0, Lcom/metamoji/forSchool/ui/ScListView;->_dragViewHeight:I

    div-int/2addr v3, v2

    sub-int/2addr p1, v3

    sub-int/2addr p1, v0

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method


# virtual methods
.method public getSortable()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mSortable:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 99
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mSortable:Z

    if-nez v0, :cond_0

    .line 100
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 102
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

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/metamoji/forSchool/ui/ScListView;->stopDrag(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 109
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScListView;->duringDrag(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 115
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/metamoji/forSchool/ui/ScListView;->stopDrag(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 104
    :cond_4
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScListView;->storeMotionEvent(Landroid/view/MotionEvent;)V

    .line 128
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mBitmapBackgroundColor:I

    return-void
.end method

.method public setDragListener(Lcom/metamoji/ui/cabinet/SimpleDragListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    return-void
.end method

.method public setSortable(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mSortable:Z

    return-void
.end method

.method public startDrag(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 154
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mActionDownEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScListView;->eventToPosition(Landroid/view/MotionEvent;)I

    move-result p1

    iput p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mPositionFrom:I

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 160
    iput-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragging:Z

    .line 163
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScListView;->getChildByIndex(I)Landroid/view/View;

    move-result-object p1

    .line 164
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 165
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScListView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/metamoji/forSchool/ui/ScListView;->_dragViewHeight:I

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/metamoji/forSchool/ui/ScListView;->_dragViewHeight:I

    sget-object v5, Lcom/metamoji/forSchool/ui/ScListView;->DRAG_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 170
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 171
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 174
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 175
    invoke-interface {v2, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mActionDownEvent:Landroid/view/MotionEvent;

    if-eqz p1, :cond_2

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int v0, p1

    .line 184
    :cond_2
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez p1, :cond_3

    .line 185
    iput v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mBaseY:I

    .line 186
    invoke-direct {p0, v0}, Lcom/metamoji/forSchool/ui/ScListView;->initLayoutParams(I)V

    goto :goto_0

    .line 188
    :cond_3
    invoke-direct {p0, v0}, Lcom/metamoji/forSchool/ui/ScListView;->updateLayoutParams(I)V

    .line 192
    :goto_0
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragImageView:Landroid/widget/ImageView;

    .line 193
    iget v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mBitmapBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 194
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mDragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    if-eqz p1, :cond_4

    .line 199
    iget v0, p0, Lcom/metamoji/forSchool/ui/ScListView;->mPositionFrom:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStartDrag(I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mPositionFrom:I

    .line 201
    :cond_4
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScListView;->mActionDownEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScListView;->duringDrag(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
