.class public Lcom/metamoji/ui/menu/MenuUtils;
.super Ljava/lang/Object;
.source "MenuUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/menu/MenuUtils$Def;
    }
.end annotation


# static fields
.field public static ACT_BACK_COLOR:I = 0x0

.field public static ARROW_IMG_H:I = 0x28

.field public static ARROW_IMG_W:I = 0x40

.field public static CHK_BOX_MARGIN_L:I = 0x14

.field public static CHK_BOX_MARGIN_R:I = 0x4

.field public static CHK_BOX_SIZE:I = 0x32

.field static CTX_ARROW_D_H:I = 0x14

.field static CTX_ARROW_H:I = 0x1e

.field static CTX_ARROW_MARGIN_T:I = 0x18

.field static CTX_ARROW_SPACE:I = 0x28

.field static CTX_ARROW_W:I = 0x14

.field public static CTX_BACK_COLOR:I = 0x0

.field public static CTX_H:I = 0x50

.field static CTX_L_W:I = 0x10

.field static CTX_MORE_H:I = 0x8

.field static CTX_MORE_MARGIN_L:I = 0x20

.field static CTX_MORE_MARGIN_T:I = 0x24

.field static CTX_MORE_W:I = 0x30

.field static CTX_ROUND_L_W:I = 0x30

.field static CTX_ROUND_R_W:I = 0x30

.field static CTX_R_W:I = 0x10

.field public static CTX_SHADOW_COLOR:I = 0x0

.field public static CTX_SUB_H:I = 0x40

.field static CTX_SUB_L_W:I = 0x10

.field static CTX_SUB_R_W:I = 0x28

.field static FONT_SIZE:I = 0x1e

.field public static MNU_H:I = 0x50

.field public static MNU_ICON_H:I = 0x50

.field public static MNU_ICON_MARGIN_L:I = 0x10

.field public static MNU_ICON_MARGIN_T:I = 0x8

.field public static MNU_ICON_W:I = 0x3c

.field static MNU_L_W:I = 0x48

.field public static MNU_MARGIN_R:I = 0x30

.field static MNU_R_W:I = 0x48

.field public static MNU_TITLE_MARGIN_L:I = 0x18

.field public static MNU_TITLE_MARGIN_R:I = 0x1e

.field public static SMNU_H:I = 0x40

.field static SMNU_L_W:I = 0x20

.field static SMNU_R_W:I = 0x20


# instance fields
.field public ARROW_BODY_H:F

.field public ARROW_H:F

.field public ARROW_IMAGE_OFFSET_Y:F

.field public ARROW_SPACE:F

.field public ARROW_W:F

.field public COLOR_WIDTH:F

.field public CTX_HIGHT:F

.field public CTX_MARGIN:F

.field public CTX_MORE_WIDTH:F

.field public CTX_SHADOW_MARGIN:F

.field public CTX_SHADOW_OFFSET_Y:F

.field public CTX_SHADOW_RADIUS:F

.field public CTX_SUB_HIGHT:F

.field public CTX_SUB_SPACE:F

.field MENU_SHADOW_BOTTOM_MARGIN:F

.field public MENU_SHADOW_LEFT_MARGIN:F

.field public MENU_SHADOW_RIGHT_MARGIN:F

.field MENU_SHADOW_TOP_MARGIN:F

.field public MENU_TEXT_MARGIN:F

.field public SPACE:F

.field public SUBTITLE_SPACE:F

.field private _arrowImage:Landroid/graphics/Bitmap;

.field private _arrowRect:Landroid/graphics/Rect;

.field private _context:Landroid/content/Context;

.field private _contextSubMenuItemSize:Lcom/metamoji/cm/Size;

.field private _density:F

.field private _densitydpi:F

.field public _displayArea:Landroid/graphics/Rect;

.field private _normalstring:Ljava/lang/String;

.field private _ontextSubMenuGroupSize:Lcom/metamoji/cm/Size;

.field public _paint:Landroid/graphics/Paint;

.field public _paintShadow:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x64

    const/16 v1, 0xff

    .line 133
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SHADOW_COLOR:I

    const/16 v0, 0x4c

    const/16 v2, 0x5b

    const/16 v3, 0x42

    .line 134
    invoke-static {v1, v3, v0, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_BACK_COLOR:I

    const/16 v0, 0xec

    .line 135
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/ui/menu/MenuUtils;->ACT_BACK_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 4

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    sget v0, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_IMG_H:I

    int-to-float v0, v0

    .line 138
    iput-object p1, p0, Lcom/metamoji/ui/menu/MenuUtils;->_context:Landroid/content/Context;

    .line 139
    iput p2, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    .line 140
    iput p3, p0, Lcom/metamoji/ui/menu/MenuUtils;->_densitydpi:F

    const/high16 p1, 0x42000000    # 32.0f

    mul-float/2addr p1, p2

    .line 142
    iput p1, p0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_MARGIN:F

    const/high16 p1, 0x42a00000    # 80.0f

    mul-float/2addr p1, p2

    .line 143
    iput p1, p0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_HIGHT:F

    const/high16 p1, 0x42800000    # 64.0f

    mul-float p3, p1, p2

    .line 144
    iput p3, p0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SUB_HIGHT:F

    const/high16 p3, 0x41800000    # 16.0f

    mul-float/2addr p3, p2

    .line 145
    iput p3, p0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SUB_SPACE:F

    const/high16 p3, 0x42e00000    # 112.0f

    mul-float/2addr p3, p2

    .line 146
    iput p3, p0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_MORE_WIDTH:F

    const/high16 p3, 0x41200000    # 10.0f

    mul-float v1, p3, p2

    .line 149
    iput v1, p0, Lcom/metamoji/ui/menu/MenuUtils;->MENU_SHADOW_LEFT_MARGIN:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v1, p2

    .line 150
    iput v1, p0, Lcom/metamoji/ui/menu/MenuUtils;->MENU_SHADOW_RIGHT_MARGIN:F

    mul-float v1, p3, p2

    .line 151
    iput v1, p0, Lcom/metamoji/ui/menu/MenuUtils;->MENU_SHADOW_TOP_MARGIN:F

    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v1, p2

    .line 152
    iput v1, p0, Lcom/metamoji/ui/menu/MenuUtils;->MENU_SHADOW_BOTTOM_MARGIN:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v1, p2

    .line 154
    iput v1, p0, Lcom/metamoji/ui/menu/MenuUtils;->MENU_TEXT_MARGIN:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v2, v1, p2

    .line 155
    iput v2, p0, Lcom/metamoji/ui/menu/MenuUtils;->SUBTITLE_SPACE:F

    const/high16 v2, 0x430c0000    # 140.0f

    mul-float/2addr v2, p2

    .line 156
    iput v2, p0, Lcom/metamoji/ui/menu/MenuUtils;->COLOR_WIDTH:F

    mul-float v2, p3, p2

    .line 158
    iput v2, p0, Lcom/metamoji/ui/menu/MenuUtils;->SPACE:F

    const/high16 v2, 0x41400000    # 12.0f

    mul-float v3, v2, p2

    .line 160
    iput v3, p0, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_SPACE:F

    mul-float/2addr v2, p2

    .line 161
    iput v2, p0, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_IMAGE_OFFSET_Y:F

    const/high16 v2, 0x41e00000    # 28.0f

    mul-float/2addr v2, p2

    .line 162
    iput v2, p0, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_H:F

    mul-float/2addr p1, p2

    .line 163
    iput p1, p0, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_W:F

    mul-float/2addr v0, p2

    .line 164
    iput v0, p0, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_BODY_H:F

    mul-float/2addr v1, p2

    .line 166
    iput v1, p0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SHADOW_MARGIN:F

    mul-float/2addr p3, p2

    .line 167
    iput p3, p0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SHADOW_OFFSET_Y:F

    const/high16 p1, 0x41000000    # 8.0f

    mul-float/2addr p1, p2

    .line 168
    iput p1, p0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SHADOW_RADIUS:F

    .line 170
    new-instance p1, Lcom/metamoji/cm/Size;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/metamoji/cm/Size;-><init>(II)V

    iput-object p1, p0, Lcom/metamoji/ui/menu/MenuUtils;->_contextSubMenuItemSize:Lcom/metamoji/cm/Size;

    .line 171
    iget p2, p0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SUB_HIGHT:F

    float-to-int p2, p2

    iput p2, p1, Lcom/metamoji/cm/Size;->height:I

    .line 173
    iget-object p1, p0, Lcom/metamoji/ui/menu/MenuUtils;->_context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 174
    sget p2, Lcom/metamoji/noteanytime/R$string;->ContextMenu_NormalPrefix:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/menu/MenuUtils;->_normalstring:Ljava/lang/String;

    .line 176
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/ui/menu/MenuUtils;->_paint:Landroid/graphics/Paint;

    .line 177
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/ui/menu/MenuUtils;->_paintShadow:Landroid/graphics/Paint;

    .line 178
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 179
    iget-object p1, p0, Lcom/metamoji/ui/menu/MenuUtils;->_paintShadow:Landroid/graphics/Paint;

    sget p2, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SHADOW_COLOR:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object p1, p0, Lcom/metamoji/ui/menu/MenuUtils;->_paintShadow:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/BlurMaskFilter;

    iget p3, p0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SHADOW_RADIUS:F

    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p2, p3, v0}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    return-void
.end method

.method private DrawBitmapByRes(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/metamoji/ui/menu/MenuUtils;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 339
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 340
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 341
    iget v2, p0, Lcom/metamoji/ui/menu/MenuUtils;->_densitydpi:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 342
    invoke-static {v0, p3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 343
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-gez p6, :cond_0

    .line 345
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p6

    .line 346
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p7

    :cond_0
    if-gez p5, :cond_1

    .line 349
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p5

    sub-int/2addr p5, p7

    div-int/lit8 p5, p5, 0x2

    :cond_1
    add-int/2addr p6, p4

    add-int/2addr p7, p5

    .line 351
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :goto_0
    if-ge p4, p6, :cond_2

    int-to-float p7, p4

    int-to-float v0, p5

    .line 354
    invoke-virtual {p1, p3, p7, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 355
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p7

    add-int/2addr p4, p7

    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private DrawBitmapByResCenterX(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/metamoji/ui/menu/MenuUtils;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 372
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 373
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 374
    iget v2, p0, Lcom/metamoji/ui/menu/MenuUtils;->_densitydpi:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 375
    invoke-static {v0, p3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 376
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-gez p6, :cond_0

    .line 378
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p6

    .line 379
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p7

    :cond_0
    if-gez p5, :cond_1

    .line 382
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p5

    sub-int/2addr p5, p7

    div-int/lit8 p5, p5, 0x2

    .line 384
    :cond_1
    div-int/lit8 v0, p6, 0x2

    sub-int/2addr p4, v0

    add-int/2addr p6, p4

    add-int/2addr p7, p5

    .line 385
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :goto_0
    if-ge p4, p6, :cond_2

    int-to-float p7, p4

    int-to-float v0, p5

    .line 388
    invoke-virtual {p1, p3, p7, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 389
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p7

    add-int/2addr p4, p7

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private DrawDrawable(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0

    .line 402
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-gez p6, :cond_0

    .line 404
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p6, 0x420c0000    # 35.0f

    .line 405
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p6

    float-to-int p6, p2

    .line 406
    div-int/lit8 p2, p6, 0x5

    add-int/2addr p4, p2

    move p7, p6

    :cond_0
    if-gez p5, :cond_1

    .line 409
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p2

    sub-int/2addr p2, p7

    div-int/lit8 p5, p2, 0x2

    :cond_1
    add-int/2addr p6, p4

    add-int/2addr p7, p5

    .line 412
    invoke-virtual {p3, p4, p5, p6, p7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 413
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 414
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private calcSubMenuW(Lcom/metamoji/ui/UiMenuItem;Z)I
    .locals 3

    .line 665
    sget v0, Lcom/metamoji/ui/menu/MenuUtils;->MNU_TITLE_MARGIN_L:I

    int-to-float v0, v0

    iget v1, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 666
    invoke-virtual {p1}, Lcom/metamoji/ui/UiMenuItem;->get_checkState()Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_HIDDEN:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    if-eq v1, v2, :cond_0

    .line 667
    sget v1, Lcom/metamoji/ui/menu/MenuUtils;->CHK_BOX_SIZE:I

    sget v2, Lcom/metamoji/ui/menu/MenuUtils;->CHK_BOX_MARGIN_R:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    :cond_0
    if-eqz p2, :cond_1

    return v0

    .line 674
    :cond_1
    new-instance p2, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 675
    sget v1, Lcom/metamoji/ui/menu/MenuUtils;->FONT_SIZE:I

    int-to-float v1, v1

    iget v2, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, -0x1

    .line 676
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 677
    invoke-virtual {p1}, Lcom/metamoji/ui/UiMenuItem;->get_subTitleTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 679
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 681
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/ui/UiMenuItem;->get_caption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 682
    invoke-virtual {p1}, Lcom/metamoji/ui/UiMenuItem;->get_subTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 684
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 685
    iget v1, p0, Lcom/metamoji/ui/menu/MenuUtils;->SUBTITLE_SPACE:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 687
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/ui/UiMenuItem;->is_colorEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    int-to-float v0, v0

    .line 688
    iget v1, p0, Lcom/metamoji/ui/menu/MenuUtils;->COLOR_WIDTH:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    .line 689
    iget v1, p0, Lcom/metamoji/ui/menu/MenuUtils;->SUBTITLE_SPACE:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 690
    invoke-virtual {p1}, Lcom/metamoji/ui/UiMenuItem;->is_colorNormal()Z

    move-result p1

    if-eqz p1, :cond_4

    int-to-float p1, v0

    .line 691
    iget-object v0, p0, Lcom/metamoji/ui/menu/MenuUtils;->_normalstring:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    .line 692
    iget p2, p0, Lcom/metamoji/ui/menu/MenuUtils;->SPACE:F

    add-float/2addr p1, p2

    float-to-int v0, p1

    .line 695
    :cond_4
    sget p1, Lcom/metamoji/ui/menu/MenuUtils;->MNU_TITLE_MARGIN_R:I

    int-to-float p1, p1

    iget p2, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    add-int/2addr v0, p1

    return v0
.end method

.method public static isActionMenuColor(Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)Z
    .locals 1

    .line 846
    sget-object v0, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$CustomMenuView$MMJUIMenuStyle:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isContextBody(Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)Z
    .locals 2

    .line 834
    sget-object v0, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$CustomMenuView$MMJUIMenuStyle:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public CreateBitmapImage2(Lcom/metamoji/ui/UiMenuItem;Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;IIIIZZ)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v8, p5

    move/from16 v12, p6

    .line 419
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 420
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 421
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v3, 0x1

    .line 422
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 425
    sget-object v4, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$CustomMenuView$MMJUIMenuStyle:[I

    invoke-virtual {v9}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v14, 0x0

    packed-switch v4, :pswitch_data_0

    move v15, v14

    goto :goto_0

    :pswitch_0
    move v15, v3

    :goto_0
    if-eqz v15, :cond_1

    const/16 v3, 0xff

    const/4 v4, 0x0

    if-nez p8, :cond_0

    .line 443
    sget-object v5, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_SUBMENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-ne v9, v5, :cond_1

    .line 444
    invoke-virtual {v0, v8, v12, v9, v4}, Lcom/metamoji/ui/menu/MenuUtils;->newFramePathWithStyle(IILcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;F)Landroid/graphics/Path;

    move-result-object v4

    .line 445
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v5, 0x4c

    const/16 v6, 0x5b

    const/16 v7, 0x42

    .line 446
    invoke-static {v3, v7, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 450
    :cond_0
    invoke-virtual {v0, v8, v12, v9, v4}, Lcom/metamoji/ui/menu/MenuUtils;->newFramePathWithStyle(IILcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;F)Landroid/graphics/Path;

    move-result-object v4

    .line 451
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v5, 0x9f

    const/16 v6, 0xbe

    const/16 v7, 0xd

    .line 452
    invoke-static {v3, v7, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 456
    :cond_1
    :goto_1
    sget-object v3, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_NORMAL:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-eq v9, v3, :cond_2

    sget-object v3, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_HASSUBMENUS:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-eq v9, v3, :cond_2

    sget-object v3, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_SUBMENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-eq v9, v3, :cond_2

    sget-object v3, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_HASCHECK:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-ne v9, v3, :cond_4

    .line 461
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ui/UiMenuItem;->get_NormalIcon_resid()I

    move-result v3

    if-eqz v3, :cond_3

    .line 462
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ui/UiMenuItem;->get_NormalIcon_resid()I

    move-result v3

    sget v4, Lcom/metamoji/ui/menu/MenuUtils;->MNU_ICON_MARGIN_L:I

    sget v5, Lcom/metamoji/ui/menu/MenuUtils;->MNU_ICON_W:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/ui/menu/MenuUtils;->DrawBitmapByResCenterX(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    goto :goto_2

    .line 464
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ui/UiMenuItem;->get_NormalIcon_drawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 465
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ui/UiMenuItem;->get_NormalIcon_drawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/metamoji/ui/menu/MenuUtils;->MNU_ICON_MARGIN_L:I

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/ui/menu/MenuUtils;->DrawDrawable(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/drawable/Drawable;IIII)V

    :cond_4
    :goto_2
    if-eqz p1, :cond_7

    .line 469
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ui/UiMenuItem;->is_haveSubMenu()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v15, :cond_6

    if-nez p8, :cond_5

    .line 473
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->context_has_submenu_arrow_right:I

    .line 474
    sget v0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_ARROW_SPACE:I

    sub-int v0, v8, v0

    add-int/lit8 v4, v0, -0x2

    sget v5, Lcom/metamoji/ui/menu/MenuUtils;->CTX_ARROW_MARGIN_T:I

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/ui/menu/MenuUtils;->DrawBitmapByRes(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    goto :goto_3

    .line 478
    :cond_5
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->context_has_submenu_arrow_down_p:I

    .line 479
    sget v0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_ARROW_SPACE:I

    sub-int v0, v8, v0

    add-int/lit8 v4, v0, -0x6

    sget v0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_H:I

    sget v5, Lcom/metamoji/ui/menu/MenuUtils;->CTX_ARROW_D_H:I

    sub-int/2addr v0, v5

    div-int/lit8 v5, v0, 0x2

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/ui/menu/MenuUtils;->DrawBitmapByRes(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    goto :goto_3

    .line 484
    :cond_6
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->menu_right_arrow:I

    sget v0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_ARROW_SPACE:I

    sub-int v0, v8, v0

    add-int/lit8 v4, v0, -0x6

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/ui/menu/MenuUtils;->DrawBitmapByRes(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 489
    :cond_7
    :goto_3
    sget-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_MORE:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-ne v9, v0, :cond_9

    if-nez p8, :cond_8

    .line 491
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->context_menu_ten:I

    sget v4, Lcom/metamoji/ui/menu/MenuUtils;->CTX_MORE_MARGIN_L:I

    sget v5, Lcom/metamoji/ui/menu/MenuUtils;->CTX_MORE_MARGIN_T:I

    sget v6, Lcom/metamoji/ui/menu/MenuUtils;->CTX_MORE_W:I

    sget v7, Lcom/metamoji/ui/menu/MenuUtils;->CTX_MORE_H:I

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/ui/menu/MenuUtils;->DrawBitmapByRes(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    goto :goto_4

    .line 495
    :cond_8
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->context_menu_ten_white:I

    sget v4, Lcom/metamoji/ui/menu/MenuUtils;->CTX_MORE_MARGIN_L:I

    sget v5, Lcom/metamoji/ui/menu/MenuUtils;->CTX_MORE_MARGIN_T:I

    sget v6, Lcom/metamoji/ui/menu/MenuUtils;->CTX_MORE_W:I

    sget v7, Lcom/metamoji/ui/menu/MenuUtils;->CTX_MORE_H:I

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/ui/menu/MenuUtils;->DrawBitmapByRes(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 501
    :cond_9
    :goto_4
    sget-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_SUBMENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-ne v9, v0, :cond_a

    .line 502
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ui/UiMenuItem;->get_checkState()Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ui/UiMenuItem;->is_enabled()Z

    move-result v8

    move-object/from16 v0, p0

    move/from16 v3, p5

    move/from16 v6, p8

    move v4, v12

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/ui/menu/MenuUtils;->drawCheckMark(Landroid/graphics/Canvas;Landroid/graphics/Paint;IILcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;ZZZ)V

    .line 504
    :cond_a
    sget-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_HASCHECK:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-ne v9, v0, :cond_b

    .line 505
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ui/UiMenuItem;->get_checkState()Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ui/UiMenuItem;->is_enabled()Z

    move-result v8

    move-object/from16 v0, p0

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/ui/menu/MenuUtils;->drawCheckMark(Landroid/graphics/Canvas;Landroid/graphics/Paint;IILcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;ZZZ)V

    goto :goto_5

    :cond_b
    move/from16 v3, p5

    move/from16 v4, p6

    .line 508
    :goto_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 509
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 510
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v14, v14, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 511
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v14, v14, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 512
    invoke-virtual {v1, v13, v5, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public conv(I)F
    .locals 1

    int-to-float p1, p1

    .line 603
    iget v0, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr p1, v0

    return p1
.end method

.method desiredSize(Lcom/metamoji/ui/UiMenuItem;)Lcom/metamoji/cm/Size;
    .locals 3

    .line 562
    invoke-virtual {p1}, Lcom/metamoji/ui/UiMenuItem;->get_caption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 564
    sget v1, Lcom/metamoji/ui/menu/MenuUtils;->FONT_SIZE:I

    int-to-float v1, v1

    iget v2, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, -0x1

    .line 565
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 567
    invoke-virtual {p1}, Lcom/metamoji/ui/UiMenuItem;->get_caption()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42800000    # 64.0f

    .line 569
    iget v0, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    :goto_0
    const/high16 v0, 0x42000000    # 32.0f

    .line 571
    iget v1, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    add-int/2addr p1, v0

    .line 577
    new-instance v0, Lcom/metamoji/cm/Size;

    const/high16 v1, 0x42200000    # 40.0f

    iget v2, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-direct {v0, p1, v1}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object v0
.end method

.method drawCheckMark(Landroid/graphics/Canvas;Landroid/graphics/Paint;IILcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;ZZZ)V
    .locals 4

    .line 519
    iget-object v0, p0, Lcom/metamoji/ui/menu/MenuUtils;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 520
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 521
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 522
    iget v3, p0, Lcom/metamoji/ui/menu/MenuUtils;->_densitydpi:F

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 525
    sget-object v3, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$UiMenuItem$MMJUIMenuCheckState:[I

    invoke-virtual {p5}, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->ordinal()I

    move-result p5

    aget p5, v3, p5

    const/4 v3, 0x2

    if-eq p5, v2, :cond_3

    if-eq p5, v3, :cond_2

    const/4 v2, 0x3

    if-eq p5, v2, :cond_0

    const/4 p5, 0x0

    goto :goto_2

    :cond_0
    if-eqz p6, :cond_1

    .line 536
    sget p5, Lcom/metamoji/noteanytime/R$drawable;->checkbox_minus_p:I

    goto :goto_0

    :cond_1
    sget p5, Lcom/metamoji/noteanytime/R$drawable;->checkbox_minus_n:I

    .line 537
    :goto_0
    invoke-static {v0, p5, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p5

    goto :goto_2

    .line 532
    :cond_2
    sget p5, Lcom/metamoji/noteanytime/R$drawable;->checkbox:I

    invoke-static {v0, p5, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p5

    goto :goto_2

    :cond_3
    if-eqz p6, :cond_4

    .line 527
    sget p5, Lcom/metamoji/noteanytime/R$drawable;->checkbox_on_p:I

    goto :goto_1

    :cond_4
    sget p5, Lcom/metamoji/noteanytime/R$drawable;->checkbox_on_n:I

    .line 528
    :goto_1
    invoke-static {v0, p5, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p5

    :goto_2
    if-eqz p5, :cond_7

    .line 544
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p6

    sub-int/2addr p4, p6

    div-int/2addr p4, v3

    int-to-float p4, p4

    .line 545
    sget p6, Lcom/metamoji/ui/menu/MenuUtils;->CHK_BOX_MARGIN_L:I

    int-to-float v0, p6

    if-nez p7, :cond_5

    sub-int/2addr p3, p6

    .line 547
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p6

    sub-int/2addr p3, p6

    int-to-float v0, p3

    :cond_5
    const/16 p3, 0xff

    if-eqz p8, :cond_6

    .line 550
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    :cond_6
    const/16 p6, 0x80

    .line 552
    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 554
    :goto_3
    invoke-virtual {p1, p5, v0, p4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 555
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_7
    return-void
.end method

.method public getItemH(Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)I
    .locals 1

    .line 701
    sget-object v0, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$CustomMenuView$MMJUIMenuStyle:[I

    invoke-virtual {p1}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 707
    :pswitch_0
    sget p1, Lcom/metamoji/ui/menu/MenuUtils;->MNU_H:I

    goto :goto_0

    .line 717
    :pswitch_1
    sget p1, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SUB_H:I

    goto :goto_0

    .line 714
    :pswitch_2
    sget p1, Lcom/metamoji/ui/menu/MenuUtils;->CTX_H:I

    :goto_0
    int-to-float p1, p1

    .line 720
    iget v0, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getItemW(Lcom/metamoji/ui/UiMenuItem;Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)I
    .locals 4

    .line 615
    sget-object v0, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$CustomMenuView$MMJUIMenuStyle:[I

    invoke-virtual {p2}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    return v1

    .line 630
    :pswitch_0
    sget p2, Lcom/metamoji/ui/menu/MenuUtils;->MNU_TITLE_MARGIN_L:I

    sget v1, Lcom/metamoji/ui/menu/MenuUtils;->MNU_TITLE_MARGIN_R:I

    add-int/2addr p2, v1

    sget v1, Lcom/metamoji/ui/menu/MenuUtils;->MNU_MARGIN_R:I

    add-int/2addr p2, v1

    int-to-float p2, p2

    iget v1, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr p2, v1

    float-to-int p2, p2

    .line 631
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 632
    sget v0, Lcom/metamoji/ui/menu/MenuUtils;->FONT_SIZE:I

    int-to-float v0, v0

    iget v2, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 633
    invoke-virtual {p1}, Lcom/metamoji/ui/UiMenuItem;->get_caption()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    :goto_0
    add-int/2addr p1, p2

    return p1

    .line 620
    :pswitch_1
    sget p2, Lcom/metamoji/ui/menu/MenuUtils;->MNU_ICON_MARGIN_L:I

    sget v2, Lcom/metamoji/ui/menu/MenuUtils;->MNU_ICON_W:I

    add-int/2addr p2, v2

    sget v2, Lcom/metamoji/ui/menu/MenuUtils;->MNU_TITLE_MARGIN_L:I

    add-int/2addr p2, v2

    sget v2, Lcom/metamoji/ui/menu/MenuUtils;->MNU_TITLE_MARGIN_R:I

    add-int/2addr p2, v2

    sget v2, Lcom/metamoji/ui/menu/MenuUtils;->MNU_MARGIN_R:I

    add-int/2addr p2, v2

    int-to-float p2, p2

    iget v2, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr p2, v2

    float-to-int p2, p2

    .line 621
    invoke-virtual {p1}, Lcom/metamoji/ui/UiMenuItem;->get_kind()Lcom/metamoji/ui/UiMenuItem$MenuKind;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/UiMenuItem$MenuKind;->SEPARATOR:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    if-eq v2, v3, :cond_0

    .line 622
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 623
    sget v0, Lcom/metamoji/ui/menu/MenuUtils;->FONT_SIZE:I

    int-to-float v0, v0

    iget v2, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 624
    invoke-virtual {p1}, Lcom/metamoji/ui/UiMenuItem;->get_caption()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int v1, p1

    :cond_0
    add-int/2addr v1, p2

    return v1

    .line 638
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/metamoji/ui/menu/MenuUtils;->calcSubMenuW(Lcom/metamoji/ui/UiMenuItem;Z)I

    move-result p1

    return p1

    :pswitch_3
    if-eqz p1, :cond_2

    .line 646
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 647
    sget v0, Lcom/metamoji/ui/menu/MenuUtils;->FONT_SIZE:I

    int-to-float v0, v0

    iget v1, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 648
    invoke-virtual {p1}, Lcom/metamoji/ui/UiMenuItem;->get_caption()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    float-to-int p2, p2

    .line 649
    invoke-virtual {p1}, Lcom/metamoji/ui/UiMenuItem;->is_haveSubMenu()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 650
    sget p1, Lcom/metamoji/ui/menu/MenuUtils;->CTX_ARROW_SPACE:I

    int-to-float p1, p1

    iget v0, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/2addr p2, p1

    .line 652
    :cond_1
    iget p1, p0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_MARGIN:F

    float-to-int p1, p1

    add-int/2addr p2, p1

    return p2

    .line 654
    :cond_2
    sget p1, Lcom/metamoji/ui/menu/MenuUtils;->CTX_MORE_W:I

    int-to-float p1, p1

    iget p2, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 655
    iget p2, p0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_MARGIN:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTextLayoutLeftPos(Lcom/metamoji/ui/UiMenuItem;Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)I
    .locals 1

    .line 726
    sget-object v0, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$CustomMenuView$MMJUIMenuStyle:[I

    invoke-virtual {p2}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 735
    :pswitch_0
    sget p1, Lcom/metamoji/ui/menu/MenuUtils;->MNU_TITLE_MARGIN_L:I

    int-to-float p1, p1

    iget p2, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    .line 731
    :pswitch_1
    sget p1, Lcom/metamoji/ui/menu/MenuUtils;->MNU_ICON_MARGIN_L:I

    sget p2, Lcom/metamoji/ui/menu/MenuUtils;->MNU_ICON_W:I

    add-int/2addr p1, p2

    sget p2, Lcom/metamoji/ui/menu/MenuUtils;->MNU_TITLE_MARGIN_L:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :pswitch_2
    const/4 p2, 0x1

    .line 738
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/menu/MenuUtils;->calcSubMenuW(Lcom/metamoji/ui/UiMenuItem;Z)I

    move-result p1

    return p1

    .line 745
    :pswitch_3
    iget p1, p0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_MARGIN:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public get_arrowImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/metamoji/ui/menu/MenuUtils;->_arrowImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public get_arrowRect()Landroid/graphics/Rect;
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/metamoji/ui/menu/MenuUtils;->_arrowRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public get_contextSubMenuGroupSize()Lcom/metamoji/cm/Size;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/metamoji/ui/menu/MenuUtils;->_ontextSubMenuGroupSize:Lcom/metamoji/cm/Size;

    return-object v0
.end method

.method public get_contextSubMenuItemSize()Lcom/metamoji/cm/Size;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/metamoji/ui/menu/MenuUtils;->_contextSubMenuItemSize:Lcom/metamoji/cm/Size;

    return-object v0
.end method

.method public get_density()F
    .locals 1

    .line 752
    iget v0, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    return v0
.end method

.method public get_paint()Landroid/graphics/Paint;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/metamoji/ui/menu/MenuUtils;->_paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public makeBalloonPath(Landroid/graphics/Path;IIIIIZ)V
    .locals 8

    const/4 v0, 0x0

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    if-nez p7, :cond_0

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 295
    sget-object p7, Lcom/metamoji/ui/menu/MenuUtils$Def;->BALLOON_SIZE:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {p0, p7}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result p7

    float-to-int p7, p7

    .line 296
    sget-object v4, Lcom/metamoji/ui/menu/MenuUtils$Def;->CTX_R:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {p0, v4}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v4

    float-to-int v4, v4

    sub-int v5, p6, p7

    int-to-float v5, v5

    int-to-float v6, p3

    .line 300
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v5, p6

    sub-int v7, p3, p7

    int-to-float v7, v7

    .line 301
    invoke-virtual {p1, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/2addr p6, p7

    int-to-float p6, p6

    .line 302
    invoke-virtual {p1, p6, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 305
    new-instance p6, Landroid/graphics/RectF;

    mul-int/lit8 v4, v4, 0x2

    sub-int p7, p4, v4

    int-to-float p7, p7

    int-to-float p4, p4

    add-int/2addr p3, v4

    int-to-float p3, p3

    invoke-direct {p6, p7, v6, p4, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p6, v1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 308
    new-instance p6, Landroid/graphics/RectF;

    sub-int v1, p5, v4

    int-to-float v1, v1

    int-to-float p5, p5

    invoke-direct {p6, p7, v1, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p6, v0, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 311
    new-instance p4, Landroid/graphics/RectF;

    int-to-float p6, p2

    add-int/2addr p2, v4

    int-to-float p2, p2

    invoke-direct {p4, p6, v1, p2, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p4, v3, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 313
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4, p6, v6, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p4, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 315
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void

    .line 317
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 318
    sget-object p7, Lcom/metamoji/ui/menu/MenuUtils$Def;->BALLOON_SIZE:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {p0, p7}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result p7

    float-to-int p7, p7

    .line 319
    sget-object v4, Lcom/metamoji/ui/menu/MenuUtils$Def;->CTX_R:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {p0, v4}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v4

    float-to-int v4, v4

    add-int v5, p6, p7

    int-to-float v5, v5

    int-to-float v6, p5

    .line 321
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v5, p6

    add-int v7, p5, p7

    int-to-float v7, v7

    .line 322
    invoke-virtual {p1, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    sub-int/2addr p6, p7

    int-to-float p6, p6

    .line 323
    invoke-virtual {p1, p6, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 325
    new-instance p6, Landroid/graphics/RectF;

    int-to-float p7, p2

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr p5, v4

    int-to-float p5, p5

    add-int/2addr p2, v4

    int-to-float p2, p2

    invoke-direct {p6, p7, p5, p2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p6, v3, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 327
    new-instance p6, Landroid/graphics/RectF;

    int-to-float v5, p3

    add-int/2addr p3, v4

    int-to-float p3, p3

    invoke-direct {p6, p7, v5, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p6, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 329
    new-instance p2, Landroid/graphics/RectF;

    sub-int p6, p4, v4

    int-to-float p6, p6

    int-to-float p4, p4

    invoke-direct {p2, p6, v5, p4, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p2, v1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 331
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, p6, p5, p4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p2, v0, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 333
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public makeBalloonPathForRight(Landroid/graphics/Path;IIIII)V
    .locals 5

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 273
    sget-object v0, Lcom/metamoji/ui/menu/MenuUtils$Def;->BALLOON_SIZE:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v0

    float-to-int v0, v0

    .line 274
    sget-object v1, Lcom/metamoji/ui/menu/MenuUtils$Def;->CTX_R:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, p4

    sub-int v3, p6, v0

    int-to-float v3, v3

    .line 277
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    add-int v3, p4, v0

    int-to-float v3, v3

    int-to-float v4, p6

    .line 278
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/2addr p6, v0

    int-to-float p6, p6

    .line 279
    invoke-virtual {p1, v2, p6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 281
    new-instance p6, Landroid/graphics/RectF;

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    int-to-float p4, p4

    sub-int v0, p5, v1

    int-to-float v0, v0

    int-to-float p5, p5

    invoke-direct {p6, p4, v0, v2, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, p6, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 283
    new-instance p6, Landroid/graphics/RectF;

    int-to-float v3, p2

    add-int/2addr p2, v1

    int-to-float p2, p2

    invoke-direct {p6, v3, v0, p2, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p6, v4, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 285
    new-instance p5, Landroid/graphics/RectF;

    int-to-float p6, p3

    add-int/2addr p3, v1

    int-to-float p3, p3

    invoke-direct {p5, v3, p6, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p5, p2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 287
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, p4, p6, v2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p3, 0x43870000    # 270.0f

    invoke-virtual {p1, p2, p3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 289
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public makeBitmap(III)Landroid/graphics/Bitmap;
    .locals 7

    .line 581
    iget-object v0, p0, Lcom/metamoji/ui/menu/MenuUtils;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 582
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 583
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 584
    iget v3, p0, Lcom/metamoji/ui/menu/MenuUtils;->_densitydpi:F

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 585
    invoke-static {v0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 587
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 588
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 589
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 590
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 591
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v2, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 592
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 593
    invoke-virtual {v1, p1, v2, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public newFramePathWithStyle(IILcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;F)Landroid/graphics/Path;
    .locals 7

    .line 218
    new-instance p4, Landroid/graphics/Path;

    invoke-direct {p4}, Landroid/graphics/Path;-><init>()V

    .line 220
    sget-object v0, Lcom/metamoji/ui/menu/MenuUtils$Def;->CTX_R:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    int-to-float p2, p2

    .line 227
    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_LEFT_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    if-ne p3, v1, :cond_0

    .line 229
    invoke-virtual {p4, p1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 231
    invoke-virtual {p4, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 233
    new-instance p1, Landroid/graphics/RectF;

    sub-float p3, p2, v0

    add-float/2addr v0, v4

    invoke-direct {p1, v4, p3, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p4, p1, v3, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 235
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v4, v4, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p4, p1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_2

    .line 236
    :cond_0
    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_RIGHT_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    const/high16 v5, 0x43870000    # 270.0f

    if-eq p3, v1, :cond_4

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_MORE:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-ne p3, v1, :cond_1

    goto :goto_1

    .line 246
    :cond_1
    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_BOTH_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-eq p3, v1, :cond_3

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_SUBMENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-ne p3, v1, :cond_2

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {p4, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 260
    invoke-virtual {p4, p1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 262
    invoke-virtual {p4, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 264
    invoke-virtual {p4, v4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_3
    :goto_0
    sub-float p3, p1, v0

    .line 247
    invoke-virtual {p4, p3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 249
    new-instance v1, Landroid/graphics/RectF;

    add-float v6, v4, v0

    invoke-direct {v1, p3, v4, p1, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p4, v1, v5, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 251
    new-instance v1, Landroid/graphics/RectF;

    sub-float v0, p2, v0

    invoke-direct {v1, p3, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p4, v1, v4, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 253
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v4, v0, v6, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p4, p1, v3, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 255
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v4, v4, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p4, p1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_2

    .line 239
    :cond_4
    :goto_1
    invoke-virtual {p4, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 241
    new-instance p3, Landroid/graphics/RectF;

    sub-float v1, p1, v0

    add-float v2, v4, v0

    invoke-direct {p3, v1, v4, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p4, p3, v5, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 243
    new-instance p3, Landroid/graphics/RectF;

    sub-float v0, p2, v0

    invoke-direct {p3, v1, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p4, p3, v4, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 245
    invoke-virtual {p4, v4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 266
    :goto_2
    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    return-object p4
.end method

.method public rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F
    .locals 1

    .line 829
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/menu/MenuUtils;->vv(Lcom/metamoji/ui/menu/MenuUtils$Def;)I

    move-result p1

    int-to-float p1, p1

    .line 830
    iget v0, p0, Lcom/metamoji/ui/menu/MenuUtils;->_density:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public set_arrowImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/metamoji/ui/menu/MenuUtils;->_arrowImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public set_arrowRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 772
    iput-object p1, p0, Lcom/metamoji/ui/menu/MenuUtils;->_arrowRect:Landroid/graphics/Rect;

    return-void
.end method

.method public set_contextSubMenuGroupSize(II)V
    .locals 1

    .line 185
    new-instance v0, Lcom/metamoji/cm/Size;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/cm/Size;-><init>(II)V

    iput-object v0, p0, Lcom/metamoji/ui/menu/MenuUtils;->_ontextSubMenuGroupSize:Lcom/metamoji/cm/Size;

    return-void
.end method

.method public set_contextSubMenuItemSize(Lcom/metamoji/cm/Size;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/metamoji/ui/menu/MenuUtils;->_contextSubMenuItemSize:Lcom/metamoji/cm/Size;

    return-void
.end method

.method public set_displayArea(Landroid/graphics/Rect;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/metamoji/ui/menu/MenuUtils;->_displayArea:Landroid/graphics/Rect;

    return-void
.end method

.method public vv(Lcom/metamoji/ui/menu/MenuUtils$Def;)I
    .locals 2

    .line 786
    invoke-virtual {p1}, Lcom/metamoji/ui/menu/MenuUtils$Def;->ordinal()I

    move-result p1

    const/16 v0, 0x10

    const/16 v1, 0xa

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    return v1

    :pswitch_2
    const/16 p1, 0x3c

    return p1

    :pswitch_3
    const/16 p1, 0x46

    return p1

    :pswitch_4
    const/16 p1, 0x54

    return p1

    :pswitch_5
    return v0

    :pswitch_6
    const/16 p1, 0x8

    return p1

    :pswitch_7
    return v1

    :pswitch_8
    return v0

    :pswitch_9
    const/4 p1, 0x5

    return p1

    :pswitch_a
    const/16 p1, 0x16

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
