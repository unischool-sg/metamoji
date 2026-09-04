.class public Lcom/metamoji/ui/HoverCm;
.super Ljava/lang/Object;
.source "HoverCm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/HoverCm$BarBtnId;,
        Lcom/metamoji/ui/HoverCm$Defs;
    }
.end annotation


# static fields
.field static final barBtnDrawables:[I

.field static final barBtnDrawablesShare:[I

.field static final barBtnDrawablesforShapePen:[I

.field public static final barBtns:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 73
    sget v0, Lcom/metamoji/ui/HoverCm$BarBtnId;->VIEW:I

    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    sget v2, Lcom/metamoji/ui/HoverCm$BarBtnId;->PEN:I

    sget v3, Lcom/metamoji/ui/HoverCm$BarBtnId;->ERASER:I

    sget v4, Lcom/metamoji/ui/HoverCm$BarBtnId;->SELECT:I

    sget v5, Lcom/metamoji/ui/HoverCm$BarBtnId;->TEXT:I

    sget v6, Lcom/metamoji/ui/HoverCm$BarBtnId;->ARRANGE:I

    filled-new-array/range {v0 .. v6}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/HoverCm;->barBtns:[I

    .line 84
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_view:I

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pointer:I

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pen_std1:I

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_eraser:I

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_select:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_text:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->school_icon_mode_arrange:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/HoverCm;->barBtnDrawables:[I

    .line 93
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_view_share:I

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pointer_share:I

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pen_std1_share:I

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_eraser_share:I

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_select_share:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_text_share:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->school_icon_mode_arrange:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/HoverCm;->barBtnDrawablesShare:[I

    .line 103
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_view:I

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pointer:I

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->hover_shape_pen_frame:I

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_eraser:I

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_select:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_text:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->school_icon_mode_arrange:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/HoverCm;->barBtnDrawablesforShapePen:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Compress(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 967
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static CreatePalletBtn(Lcom/metamoji/nt/NtNoteController$NoteMode;IFF)Landroid/graphics/Bitmap;
    .locals 10

    .line 892
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    float-to-int v1, p2

    .line 894
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 895
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 896
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 897
    sget v5, Lcom/metamoji/noteanytime/R$drawable;->hoverselector_pen_preview_frame:I

    invoke-static {v5}, Lcom/metamoji/ui/HoverCm;->Compress(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 898
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 899
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 900
    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 902
    sget-object v5, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne p0, v5, :cond_0

    .line 903
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p0

    .line 904
    invoke-static {p0}, Lcom/metamoji/ui/HoverSelector;->getPenPreviewWeight(Lcom/metamoji/nt/share/NtPenStyle;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    mul-float/2addr p3, v0

    invoke-static {p0, p1, p2, p3, v9}, Lcom/metamoji/ui/HoverSelector;->CreatePenPreview(Lcom/metamoji/nt/share/NtPenStyle;FFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 905
    :cond_0
    sget-object p2, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne p0, p2, :cond_1

    .line 906
    sget p0, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    invoke-static {p0, v1, v1}, Lcom/metamoji/ui/HoverCm;->getPalletImage(III)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 908
    :cond_1
    invoke-static {p0, p1}, Lcom/metamoji/ui/HoverCm;->getPalletBtnResId(Lcom/metamoji/nt/NtNoteController$NoteMode;I)I

    move-result p0

    .line 909
    invoke-static {p0}, Lcom/metamoji/ui/HoverCm;->Compress(I)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 912
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-direct {p1, v9, v9, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 913
    invoke-virtual {v3, p0, p1, p1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    return-object v2
.end method

.method private static centerLayout(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;I)V
    .locals 5

    .line 782
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 783
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 784
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 785
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, p3, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 786
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x2

    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 787
    iget p3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr p3, v1

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 788
    iget p3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr p3, v1

    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    .line 790
    :cond_0
    invoke-virtual {p0, p2, v2, v0, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static createHighlightImageWithImage(IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1143
    invoke-static {p0}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1144
    new-instance v0, Lcom/metamoji/cm/Size;

    invoke-direct {v0}, Lcom/metamoji/cm/Size;-><init>()V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p2, Lcom/metamoji/cm/Size;->width:I

    .line 1146
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p2, Lcom/metamoji/cm/Size;->height:I

    .line 1148
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/metamoji/ui/HoverCm;->createHighlightImageWithImage(Landroid/graphics/Bitmap;ILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createHighlightImageWithImage(Landroid/graphics/Bitmap;ILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;
    .locals 11

    .line 1152
    iget v0, p2, Lcom/metamoji/cm/Size;->width:I

    .line 1153
    iget p2, p2, Lcom/metamoji/cm/Size;->height:I

    .line 1155
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1156
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1157
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 1160
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1161
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1162
    invoke-virtual {v2, p0, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1163
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1164
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    int-to-float v8, v0

    int-to-float v9, p2

    .line 1165
    sget-object v10, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1166
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1167
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1168
    invoke-virtual {v2, v5, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method public static createShapePenModeImage(Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;
    .locals 9

    if-nez p1, :cond_0

    return-object p0

    .line 1108
    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1109
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1110
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 1113
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1114
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1115
    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1116
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1117
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    int-to-float v6, p2

    .line 1118
    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    const/16 p0, 0xff

    .line 1119
    invoke-static {p0, p0, p0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1120
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1121
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object p1
.end method

.method public static getAndroidId(Lcom/metamoji/nt/NtNoteController$NoteMode;)I
    .locals 1

    .line 326
    sget-object v0, Lcom/metamoji/ui/HoverCm$1;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 349
    :pswitch_0
    sget p0, Lcom/metamoji/ui/HoverCm$BarBtnId;->ARRANGE:I

    return p0

    .line 346
    :pswitch_1
    sget p0, Lcom/metamoji/ui/HoverCm$BarBtnId;->PEN:I

    return p0

    .line 331
    :pswitch_2
    sget p0, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    .line 332
    invoke-static {}, Lcom/metamoji/ui/HoverCm;->isKindOfShare()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    sget p0, Lcom/metamoji/ui/HoverCm$BarBtnId;->VIEW:I

    :cond_0
    return p0

    .line 328
    :pswitch_3
    sget p0, Lcom/metamoji/ui/HoverCm$BarBtnId;->VIEW:I

    return p0

    .line 337
    :pswitch_4
    sget p0, Lcom/metamoji/ui/HoverCm$BarBtnId;->TEXT:I

    return p0

    .line 340
    :pswitch_5
    sget p0, Lcom/metamoji/ui/HoverCm$BarBtnId;->SELECT:I

    return p0

    .line 343
    :pswitch_6
    sget p0, Lcom/metamoji/ui/HoverCm$BarBtnId;->ERASER:I

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getImage(IIIZZ)Landroid/graphics/Bitmap;
    .locals 9

    .line 393
    sget v0, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    if-ne p0, v0, :cond_2

    .line 394
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 395
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43a00000    # 320.0f

    div-float/2addr p0, v0

    int-to-float v0, p1

    div-float/2addr v0, p0

    float-to-int v0, v0

    int-to-float v1, p2

    div-float/2addr v1, p0

    float-to-int p0, v1

    .line 400
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    .line 401
    const-string v2, "LaserPointerColor"

    sget v3, Lcom/metamoji/nt/NtUserDefaultsConstants$DefValues;->LASERPOINTER_COLOR:I

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    .line 402
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->bar_pointer_mask:I

    invoke-static {v2, v0, p0, v1}, Lcom/metamoji/ui/HoverCm;->makeMaskImage(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz p3, :cond_0

    .line 405
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pointer_share:I

    invoke-static {v2}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 407
    :cond_0
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pointer:I

    invoke-static {v2}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 410
    :goto_0
    invoke-static {v2, v1, v0, p0}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz p4, :cond_1

    .line 412
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_POINT:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v5

    const v4, 0x3f4ccccd    # 0.8f

    move v6, p1

    move v7, p2

    move v8, p3

    .line 413
    invoke-static/range {v3 .. v8}, Lcom/metamoji/ui/HoverCm;->makeModeImage(Landroid/graphics/Bitmap;FLjava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v3

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getImage(Lcom/metamoji/nt/NtNoteController$NoteMode;IIZ)Landroid/graphics/Bitmap;
    .locals 2

    .line 433
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne p0, v0, :cond_1

    .line 434
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p0

    .line 435
    const-string v0, "LaserPointerColor"

    sget v1, Lcom/metamoji/nt/NtUserDefaultsConstants$DefValues;->LASERPOINTER_COLOR:I

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result p0

    .line 436
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->bar_pointer_mask:I

    invoke-static {v0, p1, p2, p0}, Lcom/metamoji/ui/HoverCm;->makeMaskImage(IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 439
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pointer_share:I

    invoke-static {p3}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    .line 441
    :cond_0
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pointer:I

    invoke-static {p3}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 443
    :goto_0
    invoke-static {p3, p0, p1, p2}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 446
    :cond_1
    sget-object p1, Lcom/metamoji/ui/HoverCm$1;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    const/4 p3, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    if-eq p1, p3, :cond_3

    const/4 p3, 0x6

    if-eq p1, p3, :cond_2

    const/4 p2, 0x7

    if-eq p1, p2, :cond_5

    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    move p3, p2

    goto :goto_1

    :cond_3
    const/4 p3, 0x5

    goto :goto_1

    :cond_4
    const/4 p3, 0x4

    .line 467
    :cond_5
    :goto_1
    sget-object p1, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne p0, p1, :cond_8

    .line 468
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object p0

    .line 469
    const-string p1, "MMJNtPenSettings"

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtPenSettings;

    .line 470
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p0

    .line 471
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "shapepen"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "shapemarkerpen"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    .line 474
    :cond_6
    sget-object p0, Lcom/metamoji/ui/HoverCm;->barBtnDrawables:[I

    aget p0, p0, p3

    invoke-static {p0}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 472
    :cond_7
    :goto_2
    sget-object p0, Lcom/metamoji/ui/HoverCm;->barBtnDrawablesforShapePen:[I

    aget p0, p0, p3

    invoke-static {p0}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 477
    :cond_8
    sget-object p0, Lcom/metamoji/ui/HoverCm;->barBtnDrawables:[I

    aget p0, p0, p3

    invoke-static {p0}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getImage(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;IIZ)Landroid/graphics/Bitmap;
    .locals 7

    .line 482
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LASER_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p0, v0, :cond_1

    .line 483
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p0

    .line 484
    const-string v0, "LaserPointerColor"

    sget v1, Lcom/metamoji/nt/NtUserDefaultsConstants$DefValues;->LASERPOINTER_COLOR:I

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result p0

    .line 485
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->bar_pointer_mask:I

    invoke-static {v0, p1, p2, p0}, Lcom/metamoji/ui/HoverCm;->makeMaskImage(IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 488
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pointer_share:I

    invoke-static {p3}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    .line 490
    :cond_0
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pointer:I

    invoke-static {p3}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 492
    :goto_0
    invoke-static {p3, p0, p1, p2}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 493
    :cond_1
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne p0, v0, :cond_2

    .line 494
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object p0

    .line 495
    const-string v0, "MMJNtPenSettings"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtPenSettings;

    .line 496
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p0

    .line 498
    invoke-static {p1, p2, p0}, Lcom/metamoji/ui/HoverCm;->makeBaseImage(IILcom/metamoji/nt/share/NtPenStyle;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 499
    invoke-static {p1, p2, p0}, Lcom/metamoji/ui/HoverCm;->makeMaskImage(IILcom/metamoji/nt/share/NtPenStyle;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 501
    invoke-static {p0, p3}, Lcom/metamoji/ui/HoverCm;->getPenImageName(Lcom/metamoji/nt/share/NtPenStyle;Z)I

    move-result p0

    .line 504
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 505
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 506
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, -0x1

    .line 507
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 509
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 511
    invoke-static {p0}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 512
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {p1, v2, v2, p2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 513
    invoke-virtual {v4, p0, p1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 516
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-direct {p0, v2, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 517
    invoke-virtual {v4, v0, p0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 518
    invoke-virtual {v4, v3, p0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p3

    .line 523
    :cond_2
    sget-object p1, Lcom/metamoji/ui/HoverCm$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_0

    move v1, v2

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x6

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x4

    :goto_1
    :pswitch_3
    if-nez p3, :cond_3

    .line 539
    sget-object p0, Lcom/metamoji/ui/HoverCm;->barBtnDrawables:[I

    aget p0, p0, v1

    invoke-static {p0}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 541
    :cond_3
    sget-object p0, Lcom/metamoji/ui/HoverCm;->barBtnDrawablesShare:[I

    aget p0, p0, v1

    invoke-static {p0}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getModeFormAndroidId(I)Lcom/metamoji/nt/NtNoteController$NoteMode;
    .locals 2

    .line 358
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 359
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->VIEW:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    .line 363
    :cond_1
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->PEN:I

    if-ne p0, v1, :cond_2

    .line 364
    sget-object p0, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object p0

    .line 365
    :cond_2
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->ERASER:I

    if-ne p0, v1, :cond_3

    .line 366
    sget-object p0, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object p0

    .line 367
    :cond_3
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->SELECT:I

    if-ne p0, v1, :cond_4

    .line 368
    sget-object p0, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object p0

    .line 369
    :cond_4
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->TEXT:I

    if-ne p0, v1, :cond_5

    .line 370
    sget-object p0, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object p0

    .line 371
    :cond_5
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->ARRANGE:I

    if-ne p0, v1, :cond_6

    .line 372
    sget-object p0, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object p0

    :cond_6
    :goto_0
    return-object v0
.end method

.method public static getPalletBtnCount(Lcom/metamoji/nt/NtNoteController$NoteMode;)I
    .locals 4

    .line 115
    sget-object v0, Lcom/metamoji/ui/HoverCm$1;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v3, 0x5

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_0

    if-eq p0, v3, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/HoverCm;->hasSubAtView()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_2
    return v3

    :cond_3
    return v0

    .line 118
    :cond_4
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 119
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v2
.end method

.method public static getPalletBtnResId(Lcom/metamoji/nt/NtNoteController$NoteMode;I)I
    .locals 4

    .line 151
    sget-object v0, Lcom/metamoji/ui/HoverCm$1;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_d

    if-eq p0, v1, :cond_b

    const/4 v3, 0x4

    if-eq p0, v0, :cond_2

    if-eq p0, v3, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 198
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_view_s:I

    return p0

    .line 200
    :cond_1
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pointer_s:I

    return p0

    :cond_2
    if-nez p1, :cond_3

    .line 172
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_text_plus:I

    return p0

    :cond_3
    if-ne p1, v2, :cond_4

    .line 174
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_text_minus:I

    return p0

    :cond_4
    if-ne p1, v1, :cond_6

    .line 176
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 177
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_mazec_on:I

    return p0

    .line 179
    :cond_5
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_mazec:I

    return p0

    :cond_6
    if-ne p1, v0, :cond_8

    .line 182
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->isCurrentPopupVisible()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 183
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->text_content_s:I

    return p0

    .line 185
    :cond_7
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->text_content_g:I

    return p0

    :cond_8
    if-ne p1, v3, :cond_a

    .line 188
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/metamoji/nt/INtEditor;->getTextUnitInputStyleBarVisible()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 189
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_text_unit_on:I

    return p0

    .line 191
    :cond_9
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_text_unit:I

    return p0

    :cond_a
    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_b
    if-nez p1, :cond_c

    .line 164
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_lasso_overlap:I

    return p0

    .line 166
    :cond_c
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_lasso_contain:I

    return p0

    .line 153
    :cond_d
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_eraser_thin:I

    if-ne p1, v2, :cond_e

    .line 155
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_eraser_nor:I

    return p0

    :cond_e
    if-ne p1, v1, :cond_f

    .line 157
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_eraser_wide:I

    return p0

    :cond_f
    if-ne p1, v0, :cond_10

    .line 159
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_eraser_clear:I

    :cond_10
    return p0
.end method

.method public static getPalletBtnResId(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I
    .locals 1

    const/4 v0, 0x1

    .line 210
    invoke-static {p0, v0}, Lcom/metamoji/ui/HoverCm;->getPalletBtnResId(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Z)I

    move-result p0

    return p0
.end method

.method public static getPalletBtnResId(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Z)I
    .locals 1

    .line 215
    sget-object v0, Lcom/metamoji/ui/HoverCm$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    .line 316
    :pswitch_0
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->shape_pen:I

    return p0

    .line 312
    :pswitch_1
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_voice_setting:I

    return p0

    .line 300
    :pswitch_2
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object p0

    sget-object p1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne p0, p1, :cond_0

    .line 301
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_voice_add_label:I

    return p0

    .line 303
    :cond_0
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object p0

    .line 304
    sget-object p1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PREPARED_TO_PLAY:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne p0, p1, :cond_1

    goto :goto_0

    .line 307
    :cond_1
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_voice_play:I

    return p0

    .line 305
    :cond_2
    :goto_0
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_voice_pause:I

    return p0

    .line 291
    :pswitch_3
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object p0

    sget-object v0, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne p0, v0, :cond_3

    .line 292
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_voice_rec_stop:I

    return p0

    :cond_3
    const/4 p0, 0x1

    if-ne p1, p0, :cond_4

    .line 294
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_voice_rec:I

    return p0

    .line 296
    :cond_4
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_voice_rec_disabled:I

    return p0

    .line 288
    :pswitch_4
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pointer_s:I

    return p0

    .line 285
    :pswitch_5
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_view_s:I

    return p0

    .line 278
    :pswitch_6
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->isVerticalWriting()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 279
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_text_vertical_writing_on:I

    return p0

    .line 281
    :cond_5
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_text_vertical_writing_off:I

    return p0

    .line 269
    :pswitch_7
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p0

    .line 270
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getTextUnitSettings()Lcom/metamoji/un/text/IUnTextSettings;

    move-result-object p0

    .line 271
    invoke-interface {p0}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitVerticalWriting()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 272
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_text_vertical_writing_on:I

    return p0

    .line 274
    :cond_6
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_text_vertical_writing_off:I

    return p0

    .line 261
    :pswitch_8
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 262
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_mazec_on:I

    return p0

    .line 264
    :cond_7
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_mazec:I

    return p0

    .line 254
    :pswitch_9
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/metamoji/nt/INtEditor;->getTextUnitInputStyleBarVisible()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 255
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_text_unit_on:I

    return p0

    .line 257
    :cond_8
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_text_unit:I

    return p0

    .line 247
    :pswitch_a
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->isCurrentPopupVisible()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 248
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->text_content_s:I

    return p0

    .line 250
    :cond_9
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->text_content_g:I

    return p0

    .line 244
    :pswitch_b
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_text_minus:I

    return p0

    .line 241
    :pswitch_c
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_text_plus:I

    return p0

    .line 238
    :pswitch_d
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_eraser_clear:I

    return p0

    .line 235
    :pswitch_e
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_eraser_wide:I

    return p0

    .line 232
    :pswitch_f
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_eraser_nor:I

    return p0

    .line 229
    :pswitch_10
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_eraser_thin:I

    return p0

    .line 226
    :pswitch_11
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_lasso_contain:I

    return p0

    .line 223
    :pswitch_12
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_lasso_overlap:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPalletImage(III)Landroid/graphics/Bitmap;
    .locals 2

    .line 628
    sget v0, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    if-ne p0, v0, :cond_0

    .line 629
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p0

    .line 630
    const-string v0, "LaserPointerColor"

    sget v1, Lcom/metamoji/nt/NtUserDefaultsConstants$DefValues;->LASERPOINTER_COLOR:I

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result p0

    .line 631
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->bar_pointer_mask_s:I

    invoke-static {v0, p1, p2, p0}, Lcom/metamoji/ui/HoverCm;->makeMaskImage(IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 632
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pointer_s:I

    invoke-static {v0}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 633
    invoke-static {v0, p0, p1, p2}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPenImageMaskName(Lcom/metamoji/nt/share/NtPenStyle;)I
    .locals 2

    .line 1092
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shapepen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "shapemarkerpen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1095
    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->bar_pen_std1_mask:I

    return p0

    .line 1093
    :cond_1
    :goto_0
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_shape_pen_mask:I

    return p0
.end method

.method public static getPenImageName(Lcom/metamoji/nt/share/NtPenStyle;Z)I
    .locals 2

    .line 1079
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shapepen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "shapemarkerpen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1082
    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pen_std1:I

    if-eqz p1, :cond_1

    .line 1084
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pen_std1_share:I

    :cond_1
    return p0

    .line 1080
    :cond_2
    :goto_0
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->hover_shape_pen_frame:I

    return p0
.end method

.method public static getRealSizeImage(I)Landroid/graphics/Bitmap;
    .locals 3

    .line 880
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 881
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 882
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 883
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 885
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static hasSubAtView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static isKindOfShare()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static isKindle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isShapePenModeButtonVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static makeBaseImage(IILcom/metamoji/nt/share/NtPenStyle;)Landroid/graphics/Bitmap;
    .locals 10

    .line 550
    new-instance v0, Lcom/metamoji/cm/Size;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/cm/Size;-><init>(II)V

    .line 551
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 552
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 553
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 556
    invoke-static {p2}, Lcom/metamoji/ui/HoverCm;->getPenImageMaskName(Lcom/metamoji/nt/share/NtPenStyle;)I

    move-result p2

    .line 558
    invoke-static {p2}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 559
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 560
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 561
    invoke-virtual {v2, p2, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 562
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 564
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 565
    iget p0, v0, Lcom/metamoji/cm/Size;->width:I

    int-to-float v7, p0

    iget p0, v0, Lcom/metamoji/cm/Size;->height:I

    int-to-float v8, p0

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    const/16 p0, 0xff

    .line 566
    invoke-static {p0, p0, p0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 567
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 568
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method public static makeDisableImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v1, 0x0

    .line 855
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v5, v0

    .line 856
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    float-to-int v2, v5

    float-to-int v0, v0

    .line 857
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    move v3, v2

    .line 858
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 859
    new-instance v7, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v7, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 861
    new-instance v4, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 862
    invoke-virtual {v2, p0, v4, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 865
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/16 p0, 0x7f

    const/16 v0, 0xff

    .line 866
    invoke-static {p0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v7, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 867
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v5

    .line 868
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 870
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 874
    const-string v0, "Hover@CreateButton"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static makeImage(III)Landroid/graphics/Bitmap;
    .locals 7

    .line 949
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 950
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 951
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 952
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 954
    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 956
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 957
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr p0, v4

    div-int/lit8 p0, p0, 0x2

    .line 958
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr p1, v4

    div-int/lit8 p1, p1, 0x2

    .line 959
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v6, p1

    invoke-direct {v4, p0, p1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 960
    invoke-virtual {v2, p2, v0, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-object v1
.end method

.method public static makeImage(IIII)Landroid/graphics/Bitmap;
    .locals 6

    .line 921
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 922
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 923
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 924
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 927
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    .line 929
    invoke-virtual {p2, v4, v4, p0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 930
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 934
    :cond_0
    invoke-static {v0, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 936
    new-instance p3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {p3, v4, v4, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 937
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    .line 938
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 939
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, p1

    invoke-direct {v0, p0, p1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 940
    invoke-virtual {v2, p2, p3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    return-object v1
.end method

.method public static makeMaskImage(IIII)Landroid/graphics/Bitmap;
    .locals 10

    .line 640
    new-instance v0, Lcom/metamoji/cm/Size;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/cm/Size;-><init>(II)V

    .line 641
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 642
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 643
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 645
    invoke-static {p0}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 646
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 647
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 648
    invoke-virtual {v2, p0, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 650
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 651
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 652
    iget p0, v0, Lcom/metamoji/cm/Size;->width:I

    int-to-float v7, p0

    iget p0, v0, Lcom/metamoji/cm/Size;->height:I

    int-to-float v8, p0

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 653
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 654
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 655
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method private static makeMaskImage(IILcom/metamoji/nt/share/NtPenStyle;)Landroid/graphics/Bitmap;
    .locals 23

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 583
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v3

    .line 584
    iget v4, v2, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    .line 585
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v5

    .line 586
    iget-object v6, v2, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    .line 589
    new-instance v7, Lcom/metamoji/cm/Size;

    invoke-direct {v7, v0, v1}, Lcom/metamoji/cm/Size;-><init>(II)V

    .line 590
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 591
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 592
    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x3

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 595
    invoke-static {v2}, Lcom/metamoji/ui/HoverCm;->getPenImageMaskName(Lcom/metamoji/nt/share/NtPenStyle;)I

    move-result v2

    .line 597
    invoke-static {v2}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 598
    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v14, 0x0

    invoke-direct {v11, v14, v14, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 599
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v14, v14, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 600
    invoke-virtual {v9, v2, v11, v12, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 601
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 v1, 0x437f0000    # 255.0f

    if-eqz v5, :cond_0

    .line 602
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x1

    if-le v2, v11, :cond_0

    const-string v2, "gradation"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 604
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-float/2addr v4, v1

    float-to-int v1, v4

    .line 605
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v1, v4, v5, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v20

    .line 606
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v1, v2, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v21

    .line 608
    new-instance v1, Landroid/graphics/Point;

    int-to-float v0, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-direct {v1, v2, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 609
    new-instance v2, Landroid/graphics/Point;

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v2, v0, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 610
    new-instance v15, Landroid/graphics/LinearGradient;

    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v19, v2

    move/from16 v18, v3

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 611
    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 612
    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-object v8

    .line 614
    :cond_0
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 615
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 616
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 617
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 618
    iget v5, v7, Lcom/metamoji/cm/Size;->width:I

    int-to-float v14, v5

    iget v5, v7, Lcom/metamoji/cm/Size;->height:I

    int-to-float v15, v5

    sget-object v16, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    mul-float/2addr v4, v1

    float-to-int v1, v4

    .line 619
    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 620
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 621
    invoke-virtual {v9, v11, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v8
.end method

.method public static makeMaskImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12

    .line 662
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 663
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 665
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 666
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 667
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 669
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 670
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v6, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 671
    invoke-virtual {v3, p0, v5, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 673
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 674
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    int-to-float v9, v0

    int-to-float v10, v1

    .line 675
    sget-object v11, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 676
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 677
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 678
    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v2
.end method

.method public static makeModeImage(Landroid/graphics/Bitmap;FLjava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 8

    .line 685
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 686
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43a00000    # 320.0f

    div-float/2addr v0, v1

    .line 689
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 690
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 691
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 693
    new-instance v4, Landroid/util/SizeF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    mul-float/2addr v5, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    mul-float/2addr v6, v0

    invoke-direct {v4, v5, v6}, Landroid/util/SizeF;-><init>(FF)V

    int-to-float p1, p3

    .line 694
    invoke-virtual {v4}, Landroid/util/SizeF;->getWidth()F

    move-result v5

    sub-float/2addr p1, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr p1, v5

    .line 696
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    int-to-float p4, p4

    .line 697
    invoke-virtual {v4}, Landroid/util/SizeF;->getHeight()F

    move-result v6

    sub-float/2addr p4, v6

    div-float/2addr p4, v5

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 699
    :goto_0
    new-instance v6, Landroid/graphics/RectF;

    .line 701
    invoke-virtual {v4}, Landroid/util/SizeF;->getWidth()F

    move-result v7

    add-float/2addr v7, p1

    .line 702
    invoke-virtual {v4}, Landroid/util/SizeF;->getHeight()F

    move-result v4

    add-float/2addr v4, p4

    invoke-direct {v6, p1, p4, v7, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 704
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v7, 0x0

    invoke-direct {p1, v7, v7, p4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 705
    invoke-virtual {v2, p0, p1, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/16 p0, 0xff

    const/16 p1, 0xa

    .line 708
    invoke-static {p0, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    if-eqz p5, :cond_1

    const/4 p0, -0x1

    :cond_1
    const/high16 p1, 0x41800000    # 16.0f

    mul-float/2addr p1, v0

    .line 715
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 716
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 p4, 0x1

    invoke-static {p1, p4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 717
    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 718
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 719
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 720
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_2

    .line 721
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {v3, p2, v7, p4, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 722
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    div-float/2addr p1, v5

    .line 723
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result p3

    int-to-float p3, p3

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr p3, p0

    const/high16 p0, 0x40800000    # 4.0f

    sub-float/2addr p3, p0

    sub-float/2addr p3, v0

    .line 724
    invoke-virtual {v2, p2, p1, p3, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p0

    .line 729
    const-string p1, "HoverCm@makeModeImage"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static makePushImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v1, 0x0

    .line 802
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v5, v0

    .line 803
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    float-to-int v2, v5

    float-to-int v0, v0

    .line 804
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    move v3, v2

    .line 805
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 806
    new-instance v7, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v7, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 808
    new-instance v4, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 809
    invoke-virtual {v2, p0, v4, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 812
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/16 p0, 0x64

    .line 813
    invoke-static {p0, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v7, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 814
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v5

    .line 815
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 817
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 821
    const-string v0, "Hover@CreateButton"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static makePushImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v1, 0x0

    .line 828
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v5, v0

    .line 829
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    float-to-int v2, v5

    float-to-int v0, v0

    .line 830
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    move v3, v2

    .line 831
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 832
    new-instance v7, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v7, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 834
    new-instance v4, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 835
    invoke-virtual {v2, p0, v4, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 838
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 839
    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 840
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v5

    .line 841
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 843
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 847
    const-string p1, "Hover@CreateButton"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    .line 736
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 737
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 738
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 740
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 742
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {p2, v4, v4, p3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 743
    invoke-virtual {v1, p0, p2, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 746
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-direct {p0, v4, v4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 747
    invoke-virtual {v1, p1, p0, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 752
    const-string p1, "Hover@CreatePenButton"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static margBitmap2(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 762
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 763
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 764
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    if-eqz p0, :cond_0

    .line 766
    invoke-static {v1, v2, p0, p3}, Lcom/metamoji/ui/HoverCm;->centerLayout(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 768
    invoke-static {v1, v2, p1, p3}, Lcom/metamoji/ui/HoverCm;->centerLayout(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;I)V

    :cond_1
    if-eqz p2, :cond_2

    .line 771
    invoke-static {v1, v2, p2, p3}, Lcom/metamoji/ui/HoverCm;->centerLayout(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    .line 776
    const-string p1, "Hover@CreatePenButton"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static selectImage(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 7

    .line 980
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 981
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 982
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    if-eqz p3, :cond_0

    .line 986
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_base_push_share:I

    invoke-static {p3}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    .line 988
    :cond_0
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_base_push:I

    invoke-static {p3}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p3

    :goto_0
    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 991
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 992
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v3, v3, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 993
    invoke-virtual {v1, p3, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 998
    new-instance p3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {p3, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 999
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v3, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1000
    invoke-virtual {v1, p2, p3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    return-object v0
.end method

.method public static setBitmap(Lcom/metamoji/ui/flexible/FxPalletButton;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V
    .locals 5

    const/high16 v0, 0x42200000    # 40.0f

    .line 1008
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 1009
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 1010
    sget-object v2, Lcom/metamoji/ui/HoverCm$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    invoke-virtual {p1}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/16 v3, 0x14

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/16 v3, 0x18

    if-eq v2, v3, :cond_0

    .line 1042
    invoke-static {p1}, Lcom/metamoji/ui/HoverCm;->getPalletBtnResId(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result p1

    int-to-float v0, v0

    .line 1043
    invoke-static {p1, v0, v1}, Lcom/metamoji/ui/HoverSelector;->CreatePalletButton(IFF)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1044
    invoke-static {p1}, Lcom/metamoji/ui/HoverCm;->makePushImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1045
    invoke-static {p1, v0}, Lcom/metamoji/ui/HoverSelector;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1046
    invoke-static {p0, p1, v0}, Lcom/metamoji/ui/HoverCm;->setPenBtn(Lcom/metamoji/ui/flexible/FxPalletButton;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void

    .line 1032
    :cond_0
    invoke-static {p1}, Lcom/metamoji/ui/HoverCm;->getPalletBtnResId(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    .line 1033
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 1034
    const-string v2, "forSchoolShapePenMode"

    invoke-virtual {p1, v2, v4}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p1

    int-to-float v0, v0

    .line 1035
    invoke-static {v0, v1, p1}, Lcom/metamoji/ui/HoverSelector;->CreateShapePenButton(FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1036
    invoke-static {p1}, Lcom/metamoji/ui/HoverCm;->makePushImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1037
    invoke-static {p1, v0}, Lcom/metamoji/ui/HoverSelector;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1038
    invoke-static {p0, p1, v0}, Lcom/metamoji/ui/HoverCm;->setPenBtn(Lcom/metamoji/ui/flexible/FxPalletButton;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void

    .line 1024
    :cond_1
    sget-object p1, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    int-to-float v0, v0

    invoke-static {p1, v4, v0, v1}, Lcom/metamoji/ui/HoverCm;->CreatePalletBtn(Lcom/metamoji/nt/NtNoteController$NoteMode;IFF)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1025
    invoke-static {p1}, Lcom/metamoji/ui/HoverCm;->makePushImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1026
    invoke-static {p1, v0}, Lcom/metamoji/ui/HoverSelector;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1027
    invoke-static {p0, p1, v0}, Lcom/metamoji/ui/HoverCm;->setPenBtn(Lcom/metamoji/ui/flexible/FxPalletButton;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void

    .line 1016
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result p1

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX0:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v2}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float v0, v0

    .line 1017
    invoke-static {p1, v0, v1}, Lcom/metamoji/ui/HoverSelector;->CreatePenButton(IFF)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1018
    invoke-static {p1}, Lcom/metamoji/ui/HoverCm;->makePushImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1019
    invoke-static {p1, v0}, Lcom/metamoji/ui/HoverSelector;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1020
    invoke-static {p0, p1, v0}, Lcom/metamoji/ui/HoverCm;->setPenBtn(Lcom/metamoji/ui/flexible/FxPalletButton;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static setPenBtn(Lcom/metamoji/ui/flexible/FxPalletButton;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 6

    .line 1059
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1060
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->hover_selection:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1062
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1063
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1064
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1065
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p1, v1}, Lcom/metamoji/ui/HoverSelector;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v5, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1066
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p2, v1}, Lcom/metamoji/ui/HoverSelector;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const p2, 0x10100a7

    const v0, -0x10100a1

    .line 1068
    filled-new-array {p2, v0}, [I

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v1, -0x10100a7

    .line 1069
    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v0, 0x10100a1

    .line 1070
    filled-new-array {v1, v0}, [I

    move-result-object v1

    invoke-virtual {v2, v1, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1071
    filled-new-array {p2, v0}, [I

    move-result-object p2

    invoke-virtual {v2, p2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1073
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/flexible/FxPalletButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
