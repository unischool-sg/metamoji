.class public Lcom/metamoji/mazec/ui/PopupMenu;
.super Landroid/widget/PopupWindow;
.source "PopupMenu.java"


# static fields
.field public static final EXPAND_ABOVE_TARGET_TO_EAST:I = 0x5

.field public static final EXPAND_ABOVE_TARGET_TO_WEST:I = 0x4

.field public static final EXPAND_TO_EAST:I = 0x3

.field public static final EXPAND_TO_NORTH:I = 0x0

.field public static final EXPAND_TO_SOUTH:I = 0x1

.field public static final EXPAND_TO_WEST:I = 0x2

.field private static final TOUCH_SENSITIVITY:I = 0x5


# instance fields
.field mContext:Landroid/content/Context;

.field private mExpandTo:I

.field private mHeight:I

.field private mImageView:Landroid/widget/ImageView;

.field private mLevelNone:I

.field private mLevelNum:I

.field private mLevels:[I

.field private mLocationOffsetX:I

.field private mLocationOffsetY:I

.field private mSelectedLevel:I

.field private mViewRectInScreen:Landroid/graphics/Rect;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIII[II)V
    .locals 11

    move-object/from16 v8, p8

    .line 73
    array-length v9, v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/metamoji/mazec/ui/PopupMenu;-><init>(Landroid/content/Context;Ljava/lang/String;IIIII[III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIII[III)V
    .locals 12

    const/4 v3, 0x0

    move-object/from16 v9, p8

    .line 90
    array-length v10, v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/metamoji/mazec/ui/PopupMenu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIII[III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIII[III)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 110
    iput-object p1, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mContext:Landroid/content/Context;

    .line 111
    iput p4, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mWidth:I

    .line 112
    iput p5, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mHeight:I

    .line 113
    iput p6, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mLocationOffsetX:I

    .line 114
    iput p7, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mLocationOffsetY:I

    .line 115
    iput p8, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mExpandTo:I

    .line 116
    iput-object p9, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mLevels:[I

    .line 117
    iput p10, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mLevelNum:I

    .line 118
    iput p11, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mLevelNone:I

    const/4 p4, 0x0

    .line 119
    aget p4, p9, p4

    iput p4, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mSelectedLevel:I

    .line 121
    const-string p4, "layout_inflater"

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 122
    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 124
    const-string p2, "id.popup_menu_image"

    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mImageView:Landroid/widget/ImageView;

    if-eqz p3, :cond_3

    .line 127
    invoke-static {p3}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    iget p2, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mWidth:I

    if-gtz p2, :cond_0

    iget p2, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mHeight:I

    if-lez p2, :cond_3

    .line 129
    :cond_0
    iget-object p2, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 130
    iget p3, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mWidth:I

    if-lez p3, :cond_1

    .line 131
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 133
    :cond_1
    iget p3, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mHeight:I

    if-lez p3, :cond_2

    .line 134
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 136
    :cond_2
    iget-object p3, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    :cond_3
    iget-object p2, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mImageView:Landroid/widget/ImageView;

    iget p3, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mSelectedLevel:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 142
    iget p2, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mWidth:I

    if-gtz p2, :cond_4

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mWidth:I

    .line 145
    :cond_4
    iget p2, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mHeight:I

    if-gtz p2, :cond_5

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mHeight:I

    .line 149
    :cond_5
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mViewRectInScreen:Landroid/graphics/Rect;

    const/4 p2, -0x2

    .line 151
    invoke-virtual {p0, p2, p2}, Lcom/metamoji/mazec/ui/PopupMenu;->setWindowLayoutMode(II)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/PopupMenu;->setContentView(Landroid/view/View;)V

    .line 153
    invoke-virtual {p0, p4}, Lcom/metamoji/mazec/ui/PopupMenu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 155
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/PopupMenu;->setTouchable(Z)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/PopupMenu;->setOutsideTouchable(Z)V

    return-void
.end method


# virtual methods
.method public getNonSelectLevel()I
    .locals 1

    .line 321
    iget v0, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mLevelNone:I

    return v0
.end method

.method public getSelectedLevel()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mSelectedLevel:I

    return v0
.end method

.method public onTouch(II)V
    .locals 6

    .line 259
    iget v0, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mExpandTo:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget-object p2, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mViewRectInScreen:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mViewRectInScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v0

    div-int/2addr p2, v4

    .line 268
    :goto_0
    iget v0, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mLevelNone:I

    iput v0, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mSelectedLevel:I

    .line 269
    iget-object v0, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mViewRectInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 271
    iget v0, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mExpandTo:I

    const/4 v5, 0x1

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 274
    iget p1, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mHeight:I

    .line 275
    iget-object v0, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mViewRectInScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    goto :goto_2

    .line 291
    :cond_1
    iget p2, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mWidth:I

    .line 292
    iget-object v0, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mViewRectInScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v0

    goto :goto_1

    .line 285
    :cond_2
    iget p2, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mWidth:I

    .line 286
    iget-object v0, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mViewRectInScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    :goto_1
    move p1, p2

    goto :goto_2

    .line 279
    :cond_3
    iget p1, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mHeight:I

    .line 280
    iget-object v0, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mViewRectInScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, p2, v0

    .line 295
    :goto_2
    iget p2, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mLevelNum:I

    div-int/2addr p1, p2

    add-int/lit8 v0, v0, -0x5

    .line 297
    div-int/2addr v0, p1

    if-gez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    if-gt p2, v0, :cond_5

    add-int/lit8 v0, p2, -0x1

    .line 303
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mLevels:[I

    aget p1, p1, v0

    iput p1, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mSelectedLevel:I

    .line 305
    :cond_6
    iget-object p1, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mImageView:Landroid/widget/ImageView;

    iget p2, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mSelectedLevel:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method

.method public popup(Landroid/view/View;Landroid/view/View;)V
    .locals 10

    .line 165
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 166
    invoke-virtual {p2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 169
    iget v1, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mExpandTo:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_1

    if-eq v1, v4, :cond_0

    .line 173
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mWidth:I

    sub-int/2addr v6, v7

    div-int/2addr v6, v5

    add-int/2addr v1, v6

    goto :goto_0

    .line 189
    :cond_0
    iget v1, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mWidth:I

    iget v6, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mLevelNum:I

    div-int/2addr v1, v6

    .line 193
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    sub-int/2addr v6, v1

    div-int/lit8 v1, v6, 0x2

    goto :goto_0

    .line 178
    :cond_1
    iget v1, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mWidth:I

    iget v6, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mLevelNum:I

    div-int/2addr v1, v6

    .line 182
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    add-int/2addr v6, v1

    div-int/2addr v6, v5

    iget v1, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mWidth:I

    sub-int v1, v6, v1

    .line 198
    :goto_0
    iget v6, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mExpandTo:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    if-eq v6, v5, :cond_3

    if-eq v6, v3, :cond_3

    if-eq v6, v2, :cond_2

    if-eq v6, v4, :cond_2

    .line 201
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mHeight:I

    :goto_1
    sub-int/2addr v2, v3

    goto :goto_2

    .line 220
    :cond_2
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mHeight:I

    goto :goto_1

    .line 213
    :cond_3
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mHeight:I

    goto :goto_1

    .line 205
    :cond_4
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 223
    :goto_2
    iget v3, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mLocationOffsetX:I

    add-int/2addr v1, v3

    .line 224
    iget v3, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mLocationOffsetY:I

    add-int/2addr v2, v3

    .line 225
    iget-object v3, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 226
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    const/4 v6, 0x0

    if-gez v1, :cond_5

    move v1, v6

    goto :goto_3

    .line 229
    :cond_5
    iget v8, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mWidth:I

    add-int v9, v1, v8

    if-ge v3, v9, :cond_6

    sub-int v1, v3, v8

    .line 238
    :cond_6
    :goto_3
    invoke-virtual {p0, p1, v6, v1, v2}, Lcom/metamoji/mazec/ui/PopupMenu;->showAtLocation(Landroid/view/View;III)V

    .line 239
    iget p1, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mWidth:I

    iget v3, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mHeight:I

    invoke-virtual {p0, p1, v3}, Lcom/metamoji/mazec/ui/PopupMenu;->update(II)V

    .line 241
    new-array p1, v5, [I

    .line 242
    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 243
    aget p2, p1, v6

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    add-int/2addr p2, v1

    aget p1, p1, v7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    add-int/2addr p1, v2

    .line 245
    iget-object v0, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mViewRectInScreen:Landroid/graphics/Rect;

    add-int/lit8 v1, p2, -0x5

    add-int/lit8 v2, p1, -0x5

    iget v3, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mWidth:I

    add-int/2addr p2, v3

    add-int/2addr p2, v4

    iget v3, p0, Lcom/metamoji/mazec/ui/PopupMenu;->mHeight:I

    add-int/2addr p1, v3

    add-int/2addr p1, v4

    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
