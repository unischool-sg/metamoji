.class public Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;
.super Lcom/metamoji/mazec/ui/CursorKeysPopuper;
.source "CursorKeysPopupWindow.java"


# static fields
.field public static final CURSOR_KEY_LEFT:I = 0x2

.field public static final CURSOR_KEY_LEFT2:I = 0x1

.field public static final CURSOR_KEY_NONE:I = -0x1

.field public static final CURSOR_KEY_RIGHT:I = 0x3

.field public static final CURSOR_KEY_RIGHT2:I = 0x4

.field private static final KEY_STATE_OFF:I = 0x0

.field private static final KEY_STATE_ON:I = 0x1

.field private static final KEY_STATE_ON2:I = 0x2

.field public static final TOUCH_RESULT_CHANGE:I = 0x2

.field public static final TOUCH_RESULT_KEEP:I = 0x0

.field public static final TOUCH_RESULT_OFF:I = 0x3

.field public static final TOUCH_RESULT_ON:I = 0x1

.field private static final TOUCH_SENSITIVITY:I

.field private static mBlankWidth:I

.field private static mLongWidth:I

.field private static mPopupHeight:I

.field private static mPopupWidth:I


# instance fields
.field private mImageViewLeft:Landroid/widget/ImageView;

.field private mImageViewRight:Landroid/widget/ImageView;

.field private mKeyType:I

.field private mScreenViewRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 89
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CursorKeysPopuper;-><init>(Landroid/content/Context;)V

    .line 47
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 48
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 49
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 51
    :goto_0
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 53
    sget-object v4, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v5, Lcom/metamoji/mazec/BuildOption$DeviceType;->SMARTPHONE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/metamoji/mazec/BuildConfig;->DEVICE_NAME:Lcom/metamoji/mazec/BuildOption$DeviceName;

    sget-object v5, Lcom/metamoji/mazec/BuildOption$DeviceName;->NONE:Lcom/metamoji/mazec/BuildOption$DeviceName;

    if-ne v4, v5, :cond_1

    .line 56
    const-string v0, "dimen.img_w_cursor"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 57
    const-string v4, "dimen.img_h_cursor"

    invoke-static {v4}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 58
    const-string v5, "dimen.img_w_cursor_blank"

    invoke-static {v5}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 60
    sput v4, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mPopupHeight:I

    .line 61
    sput v0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mLongWidth:I

    .line 62
    sput v1, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mBlankWidth:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 63
    sput v0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mPopupWidth:I

    goto :goto_1

    .line 65
    :cond_1
    const-string v4, "drawable.cursor_left_n"

    invoke-static {v4}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 66
    const-string v5, "drawable.cursor_blank"

    invoke-static {v5}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v5, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sput v1, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mPopupHeight:I

    .line 68
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sput v1, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mLongWidth:I

    .line 69
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mBlankWidth:I

    .line 70
    sget v1, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mLongWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    sput v1, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mPopupWidth:I

    .line 91
    :goto_1
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 92
    const-string v0, "layout.cursor_keys_popup"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 94
    const-string v0, "id.cursor_left"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mImageViewLeft:Landroid/widget/ImageView;

    .line 95
    const-string v0, "id.cursor_right"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mImageViewRight:Landroid/widget/ImageView;

    .line 96
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mImageViewLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 97
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mImageViewRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mKeyType:I

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mScreenViewRect:Landroid/graphics/Rect;

    const/4 v0, -0x2

    .line 102
    invoke-virtual {p0, v0, v0}, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->setWindowLayoutMode(II)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->setContentView(Landroid/view/View;)V

    .line 104
    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 106
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->setTouchable(Z)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method


# virtual methods
.method public getKeyType()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mKeyType:I

    return v0
.end method

.method public popup(Landroid/view/View;IIIIII)V
    .locals 1

    .line 174
    sget v0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mPopupWidth:I

    sub-int v0, p6, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    add-int/2addr p5, p7

    .line 175
    sget v0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mPopupHeight:I

    sub-int/2addr p5, v0

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 178
    sget p1, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mPopupWidth:I

    sget p4, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mPopupHeight:I

    invoke-virtual {p0, p1, p4}, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->update(II)V

    .line 181
    sget p1, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mPopupWidth:I

    sub-int/2addr p6, p1

    div-int/lit8 p6, p6, 0x2

    add-int/2addr p2, p6

    add-int/2addr p3, p7

    .line 182
    sget p4, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mPopupHeight:I

    sub-int/2addr p3, p4

    .line 184
    iget-object p5, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mScreenViewRect:Landroid/graphics/Rect;

    add-int/2addr p1, p2

    add-int/2addr p4, p3

    invoke-virtual {p5, p2, p3, p1, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public touch(II)I
    .locals 7

    .line 118
    iget v0, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mKeyType:I

    const/4 v1, -0x1

    .line 120
    iput v1, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mKeyType:I

    .line 121
    iget-object v2, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mImageViewLeft:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 122
    iget-object v2, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mImageViewRight:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 123
    iget-object v2, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mScreenViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz p2, :cond_4

    .line 124
    iget-object p2, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mScreenViewRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sget v6, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mLongWidth:I

    div-int/2addr v6, v5

    add-int/2addr p2, v6

    if-ge p1, p2, :cond_0

    .line 125
    iput v4, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mKeyType:I

    .line 126
    iget-object p1, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mImageViewLeft:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p2, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mScreenViewRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sget v6, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mLongWidth:I

    add-int/2addr p2, v6

    if-ge p1, p2, :cond_1

    .line 128
    iput v5, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mKeyType:I

    .line 129
    iget-object p1, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mImageViewLeft:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object p2, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mScreenViewRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sget v6, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mLongWidth:I

    add-int/2addr p2, v6

    sget v6, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mBlankWidth:I

    add-int/2addr p2, v6

    if-ge p1, p2, :cond_2

    goto :goto_0

    .line 132
    :cond_2
    iget-object p2, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mScreenViewRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sget v6, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mPopupWidth:I

    add-int/2addr p2, v6

    sget v6, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mLongWidth:I

    div-int/2addr v6, v5

    sub-int/2addr p2, v6

    if-ge p1, p2, :cond_3

    .line 133
    iput v2, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mKeyType:I

    .line 134
    iget-object p1, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mImageViewRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    .line 136
    iput p1, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mKeyType:I

    .line 137
    iget-object p1, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mImageViewRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 141
    :cond_4
    :goto_0
    iget p1, p0, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;->mKeyType:I

    if-ne v0, p1, :cond_5

    return v3

    :cond_5
    if-ne v0, v1, :cond_6

    return v4

    :cond_6
    if-ne p1, v1, :cond_7

    return v2

    :cond_7
    return v5
.end method
