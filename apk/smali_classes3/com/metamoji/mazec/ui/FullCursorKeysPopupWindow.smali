.class public Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;
.super Lcom/metamoji/mazec/ui/CursorKeysPopuper;
.source "FullCursorKeysPopupWindow.java"


# static fields
.field public static final CURSOR_KEY_DOWN:I = 0x6

.field public static final CURSOR_KEY_DOWN2:I = 0x7

.field public static final CURSOR_KEY_LEFT:I = 0x3

.field public static final CURSOR_KEY_LEFT2:I = 0x2

.field public static final CURSOR_KEY_NONE:I = -0x1

.field public static final CURSOR_KEY_RIGHT:I = 0x4

.field public static final CURSOR_KEY_RIGHT2:I = 0x5

.field public static final CURSOR_KEY_UP:I = 0x1

.field public static final CURSOR_KEY_UP2:I = 0x0

.field private static final KEY_STATE_OFF:I = 0x0

.field private static final KEY_STATE_ON:I = 0x1

.field private static final KEY_STATE_ON2:I = 0x2

.field public static final TOUCH_RESULT_CHANGE:I = 0x2

.field public static final TOUCH_RESULT_KEEP:I = 0x0

.field public static final TOUCH_RESULT_OFF:I = 0x3

.field public static final TOUCH_RESULT_ON:I = 0x1

.field private static mLongSize:I = -0x1

.field private static mPopupSize:I = -0x1

.field private static mShortSize:I = -0x1


# instance fields
.field private mHitRects:[Landroid/graphics/Rect;

.field private mImageViewDown:Landroid/widget/ImageView;

.field private mImageViewLeft:Landroid/widget/ImageView;

.field private mImageViewRight:Landroid/widget/ImageView;

.field private mImageViewUp:Landroid/widget/ImageView;

.field private mKeyType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 64
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CursorKeysPopuper;-><init>(Landroid/content/Context;)V

    .line 67
    sget v0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mPopupSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 68
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    const-string v2, "drawable.cursor_disc_left_n"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 70
    const-string v3, "drawable.cursor_button_blank"

    invoke-static {v3}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v3, v0

    sput v3, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mPopupSize:I

    .line 72
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mLongSize:I

    .line 73
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mShortSize:I

    .line 76
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 77
    const-string v0, "layout.cursor_keys_popup"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 79
    const-string v0, "id.cursor_disc_up"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewUp:Landroid/widget/ImageView;

    .line 80
    const-string v0, "id.cursor_disc_down"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewDown:Landroid/widget/ImageView;

    .line 81
    const-string v0, "id.cursor_disc_left"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewLeft:Landroid/widget/ImageView;

    .line 82
    const-string v0, "id.cursor_disc_right"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewRight:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewUp:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 84
    iget-object v0, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 85
    iget-object v0, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 86
    iget-object v0, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 87
    iput v1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mKeyType:I

    const/16 v0, 0x8

    .line 88
    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mHitRects:[Landroid/graphics/Rect;

    const/4 v0, -0x2

    .line 90
    invoke-virtual {p0, v0, v0}, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->setWindowLayoutMode(II)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->setContentView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 94
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->setTouchable(Z)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method


# virtual methods
.method public getKeyType()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mKeyType:I

    return v0
.end method

.method public popup(Landroid/view/View;IIIIII)V
    .locals 4

    .line 172
    sget v0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mPopupSize:I

    sub-int v1, p6, v0

    const/4 v2, 0x2

    div-int/2addr v1, v2

    add-int/2addr p4, v1

    sub-int/2addr p7, v0

    .line 173
    div-int/2addr p7, v2

    add-int/2addr p5, p7

    const/4 p7, 0x0

    .line 175
    invoke-virtual {p0, p1, p7, p4, p5}, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 176
    sget p1, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mPopupSize:I

    invoke-virtual {p0, p1, p1}, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->update(II)V

    .line 179
    sget p1, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mPopupSize:I

    sub-int p4, p6, p1

    div-int/2addr p4, v2

    add-int/2addr p2, p4

    sub-int/2addr p6, p1

    .line 180
    div-int/2addr p6, v2

    add-int/2addr p3, p6

    .line 181
    iget-object p1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mHitRects:[Landroid/graphics/Rect;

    new-instance p4, Landroid/graphics/Rect;

    sget p5, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mLongSize:I

    add-int p6, p2, p5

    add-int v0, p2, p5

    sget v1, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mShortSize:I

    add-int/2addr v0, v1

    div-int/2addr p5, v2

    add-int/2addr p5, p3

    invoke-direct {p4, p6, p3, v0, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object p4, p1, p7

    .line 182
    iget-object p1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mHitRects:[Landroid/graphics/Rect;

    new-instance p4, Landroid/graphics/Rect;

    sget p5, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mLongSize:I

    add-int p6, p2, p5

    div-int/lit8 p7, p5, 0x2

    add-int/2addr p7, p3

    add-int v0, p2, p5

    sget v1, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mShortSize:I

    add-int/2addr v0, v1

    add-int/2addr p5, p3

    invoke-direct {p4, p6, p7, v0, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p5, 0x1

    aput-object p4, p1, p5

    .line 183
    iget-object p1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mHitRects:[Landroid/graphics/Rect;

    new-instance p4, Landroid/graphics/Rect;

    sget p5, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mLongSize:I

    add-int p6, p3, p5

    div-int/lit8 p7, p5, 0x2

    add-int/2addr p7, p2

    add-int/2addr p5, p3

    sget v0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mShortSize:I

    add-int/2addr p5, v0

    invoke-direct {p4, p2, p6, p7, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object p4, p1, v2

    .line 184
    iget-object p1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mHitRects:[Landroid/graphics/Rect;

    new-instance p4, Landroid/graphics/Rect;

    sget p5, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mLongSize:I

    div-int/lit8 p6, p5, 0x2

    add-int/2addr p6, p2

    add-int p7, p3, p5

    add-int v0, p2, p5

    add-int/2addr p5, p3

    sget v1, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mShortSize:I

    add-int/2addr p5, v1

    invoke-direct {p4, p6, p7, v0, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p5, 0x3

    aput-object p4, p1, p5

    .line 185
    iget-object p1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mHitRects:[Landroid/graphics/Rect;

    new-instance p4, Landroid/graphics/Rect;

    sget p6, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mLongSize:I

    add-int p7, p2, p6

    sget v0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mShortSize:I

    add-int/2addr p7, v0

    add-int v1, p3, p6

    mul-int/lit8 v3, p6, 0x3

    div-int/2addr v3, v2

    add-int/2addr v3, p2

    add-int/2addr v3, v0

    add-int/2addr p6, p3

    add-int/2addr p6, v0

    invoke-direct {p4, p7, v1, v3, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p6, 0x4

    aput-object p4, p1, p6

    .line 186
    iget-object p1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mHitRects:[Landroid/graphics/Rect;

    new-instance p4, Landroid/graphics/Rect;

    sget p6, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mLongSize:I

    mul-int/lit8 p7, p6, 0x3

    div-int/2addr p7, v2

    add-int/2addr p7, p2

    sget v0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mShortSize:I

    add-int/2addr p7, v0

    add-int v1, p3, p6

    mul-int/lit8 v3, p6, 0x2

    add-int/2addr v3, p2

    add-int/2addr v3, v0

    add-int/2addr p6, p3

    add-int/2addr p6, v0

    invoke-direct {p4, p7, v1, v3, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p6, 0x5

    aput-object p4, p1, p6

    .line 187
    iget-object p1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mHitRects:[Landroid/graphics/Rect;

    new-instance p4, Landroid/graphics/Rect;

    sget p6, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mLongSize:I

    add-int p7, p2, p6

    add-int v0, p3, p6

    sget v1, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mShortSize:I

    add-int/2addr v0, v1

    add-int v3, p2, p6

    add-int/2addr v3, v1

    mul-int/2addr p6, p5

    div-int/2addr p6, v2

    add-int/2addr p6, p3

    add-int/2addr p6, v1

    invoke-direct {p4, p7, v0, v3, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p5, 0x6

    aput-object p4, p1, p5

    .line 188
    iget-object p1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mHitRects:[Landroid/graphics/Rect;

    new-instance p4, Landroid/graphics/Rect;

    sget p5, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mLongSize:I

    add-int p6, p2, p5

    mul-int/lit8 p7, p5, 0x3

    div-int/2addr p7, v2

    add-int/2addr p7, p3

    sget v0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mShortSize:I

    add-int/2addr p7, v0

    add-int/2addr p2, p5

    add-int/2addr p2, v0

    mul-int/2addr p5, v2

    add-int/2addr p3, p5

    add-int/2addr p3, v0

    invoke-direct {p4, p6, p7, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p2, 0x7

    aput-object p4, p1, p2

    return-void
.end method

.method public touch(II)I
    .locals 8

    .line 106
    iget v0, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mKeyType:I

    const/4 v1, -0x1

    .line 108
    iput v1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mKeyType:I

    .line 109
    iget-object v2, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewUp:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 110
    iget-object v2, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewDown:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 111
    iget-object v2, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewLeft:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 112
    iget-object v2, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewRight:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 113
    iget-object v2, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mHitRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v3

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    .line 114
    iput v3, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mKeyType:I

    .line 115
    iget-object p1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewUp:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_0

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mHitRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v6

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    iput v6, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mKeyType:I

    .line 118
    iget-object p1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewUp:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_0

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mHitRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v5

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    iput v5, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mKeyType:I

    .line 121
    iget-object p1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewLeft:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mHitRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    iput v4, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mKeyType:I

    .line 124
    iget-object p1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewLeft:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 125
    :cond_3
    iget-object v2, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mHitRects:[Landroid/graphics/Rect;

    const/4 v7, 0x4

    aget-object v2, v2, v7

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 126
    iput v7, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mKeyType:I

    .line 127
    iget-object p1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 128
    :cond_4
    iget-object v2, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mHitRects:[Landroid/graphics/Rect;

    const/4 v7, 0x5

    aget-object v2, v2, v7

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 129
    iput v7, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mKeyType:I

    .line 130
    iget-object p1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 131
    :cond_5
    iget-object v2, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mHitRects:[Landroid/graphics/Rect;

    const/4 v7, 0x6

    aget-object v2, v2, v7

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 132
    iput v7, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mKeyType:I

    .line 133
    iget-object p1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewDown:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 134
    :cond_6
    iget-object v2, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mHitRects:[Landroid/graphics/Rect;

    const/4 v7, 0x7

    aget-object v2, v2, v7

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 135
    iput v7, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mKeyType:I

    .line 136
    iget-object p1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mImageViewDown:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 139
    :cond_7
    :goto_0
    iget p1, p0, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;->mKeyType:I

    if-ne v0, p1, :cond_8

    return v3

    :cond_8
    if-ne v0, v1, :cond_9

    return v6

    :cond_9
    if-ne p1, v1, :cond_a

    return v4

    :cond_a
    return v5
.end method
