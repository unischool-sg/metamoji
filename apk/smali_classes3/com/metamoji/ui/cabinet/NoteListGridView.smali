.class public Lcom/metamoji/ui/cabinet/NoteListGridView;
.super Landroid/widget/GridView;
.source "NoteListGridView.java"


# static fields
.field static final DRAG_FOLDER:I = 0x0

.field static final DRAG_NOTE:I = 0x1

.field private static final OFF_SCREEN:I = -0x64


# instance fields
.field private _dragImage:Landroid/widget/ImageView;

.field _dragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

.field private _dragStarted:Z

.field private _dragType:I

.field _dragging:Z

.field private _layoutParams:Landroid/view/WindowManager$LayoutParams;

.field public _nowDriveId:Ljava/lang/String;

.field private _onDragBackGround:Landroid/graphics/Bitmap;

.field private _res:Landroid/content/res/Resources;

.field _scrollToPosition:I

.field public _selectedPosition:I

.field private _windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/NoteListGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/cabinet/NoteListGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 42
    iput p2, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    const/4 p2, 0x0

    .line 43
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_nowDriveId:Ljava/lang/String;

    const/4 p2, 0x0

    .line 45
    iput-boolean p2, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragStarted:Z

    .line 46
    iput-boolean p2, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragging:Z

    .line 48
    iput p2, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragType:I

    .line 51
    new-instance p3, Lcom/metamoji/ui/cabinet/SimpleDragListener;

    invoke-direct {p3}, Lcom/metamoji/ui/cabinet/SimpleDragListener;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    .line 178
    iput p2, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_scrollToPosition:I

    .line 65
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_res:Landroid/content/res/Resources;

    .line 66
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_new_select_drag:I

    invoke-static {p3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_onDragBackGround:Landroid/graphics/Bitmap;

    .line 69
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    .line 70
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    sget v0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumb_folder:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 73
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 74
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 75
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    sget p3, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_HIGHT:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 76
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->initLayoutParams()V

    .line 80
    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_windowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private duringDrag(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 182
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 183
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragging:Z

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragging:Z

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 192
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 193
    invoke-virtual {p0, v3}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 194
    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    .line 195
    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p1

    .line 198
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getCount()I

    move-result v6

    .line 199
    invoke-virtual {p0, v2, p1}, Lcom/metamoji/ui/cabinet/NoteListGridView;->pointToPosition(II)I

    move-result p1

    .line 200
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v5, v3, :cond_1

    move p1, v6

    .line 205
    :cond_1
    iget v3, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_scrollToPosition:I

    if-ge v3, p1, :cond_2

    add-int/2addr v3, v0

    .line 206
    iput v3, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_scrollToPosition:I

    goto :goto_0

    :cond_2
    if-le v3, p1, :cond_3

    sub-int/2addr v3, v0

    .line 208
    iput v3, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_scrollToPosition:I

    .line 211
    :cond_3
    :goto_0
    iget v3, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_scrollToPosition:I

    if-gez v3, :cond_4

    .line 212
    iput v1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_scrollToPosition:I

    goto :goto_1

    :cond_4
    add-int/lit8 v7, v6, -0x1

    if-gt v7, v3, :cond_5

    .line 214
    iput v7, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_scrollToPosition:I

    :cond_5
    :goto_1
    if-lez v2, :cond_6

    .line 219
    iget v2, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_scrollToPosition:I

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->smoothScrollToPosition(I)V

    .line 223
    :cond_6
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    .line 226
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    if-gez v2, :cond_7

    const/16 v2, 0x8

    .line 224
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 226
    :cond_7
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    :goto_2
    invoke-virtual {p0, v4, v5}, Lcom/metamoji/ui/cabinet/NoteListGridView;->updateLayoutParams(II)V

    .line 231
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    .line 232
    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtFeature;->AppStudentEditClassboxNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_nowDriveId:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 234
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragging:Z

    return v1

    :cond_8
    move v2, v1

    :goto_3
    if-ge v2, v6, :cond_c

    .line 239
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getItemView(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_5

    .line 244
    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$ViewHolder;

    .line 245
    invoke-virtual {v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$ViewHolder;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_a

    goto :goto_5

    :cond_a
    if-ne p1, v2, :cond_b

    .line 249
    iget v7, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    if-eq v7, v2, :cond_b

    .line 250
    invoke-virtual {v3, v1, v1}, Landroid/view/View;->measure(II)V

    .line 251
    iget-object v7, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_onDragBackGround:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v7, v8, v9, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 252
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_res:Landroid/content/res/Resources;

    invoke-direct {v8, v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 253
    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 255
    :cond_b
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 257
    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 261
    :cond_c
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    if-eqz v1, :cond_d

    .line 263
    iget v2, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    invoke-virtual {v1, v2, p1, v4, v5}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onDuringDrag(IIII)I

    :cond_d
    return v0
.end method

.method private initLayoutParams()V
    .locals 2

    .line 86
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    .line 87
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 88
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 89
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 90
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x298

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 94
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 95
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-void
.end method


# virtual methods
.method clearDragState()V
    .locals 2

    const/4 v0, 0x0

    .line 314
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragStarted:Z

    .line 315
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragging:Z

    .line 316
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method getItemView(I)Landroid/view/View;
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 328
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isDragStarted()Z
    .locals 1

    .line 360
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragStarted:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 108
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

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->stopDrag(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 114
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListGridView;->duringDrag(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 120
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ui/cabinet/NoteListGridView;->stopDrag(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 134
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method setDragBackgroundResource(I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_res:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_onDragBackGround:Landroid/graphics/Bitmap;

    return-void
.end method

.method setDragListener(Lcom/metamoji/ui/cabinet/SimpleDragListener;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    return-void
.end method

.method public setItemViewActivated(IZ)V
    .locals 0

    .line 338
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    :cond_0
    return-void
.end method

.method startDrag(ILjava/lang/String;Landroid/view/MotionEvent;Z)Z
    .locals 1

    .line 141
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return v0

    .line 144
    :cond_0
    iget-boolean p3, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragStarted:Z

    if-nez p3, :cond_5

    iget-boolean p3, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragging:Z

    if-eqz p3, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    iput p1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragType:I

    if-nez p1, :cond_2

    .line 150
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    sget p2, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumb_folder:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 153
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    sget p2, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumb_note_plural:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 156
    sget p1, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

    sget p3, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_HIGHT_EXCLUDE_SHADOW:I

    invoke-static {p2, p1, p3}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile2(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 158
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 159
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 161
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    sget p2, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumb_note_paper:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_windowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    .line 172
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragStarted:Z

    return p1

    :cond_5
    :goto_1
    return v0
.end method

.method public stopDrag(Landroid/view/MotionEvent;Z)Z
    .locals 5

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :catch_0
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragging:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->clearDragState()V

    return v1

    .line 286
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 288
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/cabinet/NoteListGridView;->pointToPosition(II)I

    move-result v2

    if-lez v0, :cond_1

    const/4 v3, -0x1

    if-ne v3, v2, :cond_1

    const/16 v2, -0x64

    :cond_1
    if-gez v0, :cond_2

    .line 294
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 295
    invoke-virtual {p0, v3}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 296
    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    .line 297
    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v3

    :cond_2
    if-eqz p2, :cond_3

    .line 299
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragListener:Lcom/metamoji/ui/cabinet/SimpleDragListener;

    if-eqz p2, :cond_3

    .line 300
    iget v3, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    invoke-virtual {p2, v3, v2, v0, p1}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStopDrag(IIII)Z

    .line 303
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->clearDragState()V

    .line 305
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$ViewHolder;

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$ViewHolder;->getType()I

    move-result p2

    const/4 v0, 0x2

    if-ne v0, p2, :cond_4

    .line 307
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method updateLayoutParams(II)V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 346
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_dragImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method updateScrollPosition()V
    .locals 2

    .line 352
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    iget v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 355
    iget v0, p0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setSelection(I)V

    :cond_1
    :goto_0
    return-void
.end method
