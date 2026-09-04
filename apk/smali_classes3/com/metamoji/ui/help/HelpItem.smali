.class public Lcom/metamoji/ui/help/HelpItem;
.super Lcom/metamoji/ui/flexible/FxItem;
.source "HelpItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;
    }
.end annotation


# instance fields
.field public anchorStateReal:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

.field m_anchorRectReal:Landroid/graphics/Rect;

.field m_enabled:Z

.field m_layoutFin:Z

.field private m_message:Ljava/lang/String;

.field m_messageRect:Landroid/graphics/Rect;

.field m_path:Landroid/graphics/Path;

.field m_rect:Landroid/graphics/Rect;

.field m_webBtn:Lcom/metamoji/ui/UiHoverButton;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/flexible/FxItem;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/metamoji/ui/flexible/FxItem;-><init>()V

    .line 98
    iget-object v0, p1, Lcom/metamoji/ui/flexible/FxItem;->uiPartView:Landroid/view/View;

    iput-object v0, p0, Lcom/metamoji/ui/help/HelpItem;->uiPartView:Landroid/view/View;

    .line 99
    iget-object v0, p1, Lcom/metamoji/ui/flexible/FxItem;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iput-object v0, p0, Lcom/metamoji/ui/help/HelpItem;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 100
    iget-object v0, p1, Lcom/metamoji/ui/flexible/FxItem;->anchorState:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    iput-object v0, p0, Lcom/metamoji/ui/help/HelpItem;->anchorState:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    iput-object v0, p0, Lcom/metamoji/ui/help/HelpItem;->anchorStateReal:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    .line 102
    iget-object v0, p1, Lcom/metamoji/ui/flexible/FxItem;->anchorRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/metamoji/ui/help/HelpItem;->anchorRect:Landroid/graphics/Rect;

    .line 104
    iget-object p1, p1, Lcom/metamoji/ui/flexible/FxItem;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-static {p1}, Lcom/metamoji/ui/help/HelpController;->helpMessage(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/help/HelpItem;->m_message:Ljava/lang/String;

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/metamoji/ui/help/HelpItem;->m_layoutFin:Z

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lcom/metamoji/ui/help/HelpItem;->m_enabled:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/metamoji/ui/flexible/FxItem;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/metamoji/ui/help/HelpItem;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 112
    invoke-static {p1}, Lcom/metamoji/ui/help/HelpController;->helpMessage(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/help/HelpItem;->m_message:Ljava/lang/String;

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lcom/metamoji/ui/help/HelpItem;->m_layoutFin:Z

    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lcom/metamoji/ui/help/HelpItem;->m_enabled:Z

    return-void
.end method

.method private BALOON_RADIUS()F
    .locals 1

    const/high16 v0, 0x40800000    # 4.0f

    .line 48
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private BALOON_UNIT()F
    .locals 1

    const/high16 v0, 0x41400000    # 12.0f

    .line 47
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private BH_ARROW_H()F
    .locals 1

    const/high16 v0, 0x41000000    # 8.0f

    .line 57
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private BH_ARROW_HW()F
    .locals 1

    const/high16 v0, 0x40c00000    # 6.0f

    .line 59
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private BH_ARROW_LUG()F
    .locals 1

    const/high16 v0, 0x40900000    # 4.5f

    .line 60
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private BH_ARROW_OFFSET()F
    .locals 1

    const/high16 v0, 0x41000000    # 8.0f

    .line 62
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private BH_ARROW_W()F
    .locals 1

    const/high16 v0, 0x41400000    # 12.0f

    .line 58
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private BH_BIG_R()F
    .locals 1

    const/high16 v0, 0x40e00000    # 7.0f

    .line 55
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private BH_FONT_SIZE()F
    .locals 1

    const/high16 v0, 0x41800000    # 16.0f

    .line 50
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private BH_FONT_SIZE_PHONE()F
    .locals 1

    const/high16 v0, 0x41400000    # 12.0f

    .line 51
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private BH_LIM_P()F
    .locals 1

    const/high16 v0, 0x41180000    # 9.5f

    .line 53
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private BH_LINE_HW()F
    .locals 1

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 56
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private BH_M()F
    .locals 1

    const/high16 v0, 0x41400000    # 12.0f

    .line 39
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private BH_M_PHONE()F
    .locals 1

    const/high16 v0, 0x41000000    # 8.0f

    .line 41
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private BH_P_PHONE()F
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 44
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private BH_R()F
    .locals 1

    const/high16 v0, 0x40800000    # 4.0f

    .line 54
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private BH_SIZE_W()F
    .locals 1

    const/high16 v0, 0x437a0000    # 250.0f

    .line 45
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private BH_SIZE_W_PHONE()F
    .locals 1

    const/high16 v0, 0x43500000    # 208.0f

    .line 46
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private MARGIN_B()F
    .locals 1

    const/high16 v0, 0x40800000    # 4.0f

    .line 42
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private MoveRect(Landroid/graphics/Rect;II)V
    .locals 2

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 120
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 121
    iput p3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v0

    .line 122
    iput p2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v1

    .line 123
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private PADDING()F
    .locals 1

    const/high16 v0, 0x40800000    # 4.0f

    .line 43
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private WEB_LINK_ICON_W()F
    .locals 1

    const/high16 v0, 0x41800000    # 16.0f

    .line 49
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method private convertRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    .line 195
    invoke-static {p1, p2, p3}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method private getTextHeight(Ljava/lang/CharSequence;IF)I
    .locals 8

    .line 186
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 188
    invoke-virtual {v2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 190
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 191
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    return p1
.end method

.method private setNoFocusBtn(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 849
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 851
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 852
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 853
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, v0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const p3, 0x10100a7

    .line 855
    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {v1, p3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const p2, -0x10100a7

    .line 856
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {v1, p2, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 858
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method MMJCM_IS_PAD(Landroid/content/Context;)Z
    .locals 0

    .line 182
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    return p1
.end method

.method public anchorRectReal()Landroid/graphics/Rect;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpItem;->m_anchorRectReal:Landroid/graphics/Rect;

    return-object v0
.end method

.method public drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/content/Context;)V
    .locals 10

    .line 127
    iget-boolean p2, p0, Lcom/metamoji/ui/help/HelpItem;->m_enabled:Z

    if-nez p2, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/help/HelpItem;->makeBaloonPath(Landroid/content/Context;)Landroid/graphics/Path;

    move-result-object p2

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 134
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v2, 0xf2

    const/16 v3, 0x8e

    const/16 v4, 0xff

    .line 135
    invoke-static {v4, v4, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    .line 138
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 141
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 144
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v2, 0xc7

    .line 148
    invoke-static {v4, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 154
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/help/HelpItem;->MMJCM_IS_PAD(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->BH_FONT_SIZE()F

    move-result p2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->BH_FONT_SIZE_PHONE()F

    move-result p2

    .line 167
    :goto_0
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/help/HelpItem;->MMJCM_IS_PAD(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->BH_M()F

    move-result v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->BH_M_PHONE()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    .line 168
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    const/high16 v2, -0x1000000

    .line 169
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 170
    invoke-virtual {v4, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 171
    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, p2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 172
    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 173
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/metamoji/ui/help/HelpItem;->m_message:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/metamoji/ui/help/HelpItem;->MMJCM_IS_PAD(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->BH_SIZE_W()F

    move-result p2

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->BH_SIZE_W_PHONE()F

    move-result p2

    :goto_2
    float-to-int v5, p2

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 175
    iget-object p2, p0, Lcom/metamoji/ui/help/HelpItem;->m_messageRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    iget-object p3, p0, Lcom/metamoji/ui/help/HelpItem;->m_messageRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v0

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 176
    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public enabled(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/metamoji/ui/help/HelpItem;->m_enabled:Z

    return-void
.end method

.method public enabled()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/metamoji/ui/help/HelpItem;->m_enabled:Z

    return v0
.end method

.method fixdDir(Landroid/graphics/Rect;FF)Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;
    .locals 1

    .line 769
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_4

    .line 771
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1

    .line 772
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    .line 773
    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    sub-float/2addr p1, p3

    sub-float/2addr p2, v0

    div-float p3, p1, p2

    div-float/2addr p2, p1

    cmpl-float p1, p3, p2

    if-lez p1, :cond_0

    .line 777
    sget-object p1, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_UP:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    return-object p1

    .line 779
    :cond_0
    sget-object p1, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_RT:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    return-object p1

    .line 782
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 783
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 784
    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    sub-float/2addr p1, p3

    sub-float/2addr v0, p2

    div-float p2, p1, v0

    div-float/2addr v0, p1

    cmpl-float p1, p2, v0

    if-lez p1, :cond_2

    .line 788
    sget-object p1, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_UP:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    return-object p1

    .line 790
    :cond_2
    sget-object p1, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_LT:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    return-object p1

    .line 793
    :cond_3
    sget-object p1, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_UP:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    return-object p1

    .line 796
    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_5

    .line 797
    sget-object p1, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_DW:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    return-object p1

    .line 799
    :cond_5
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_a

    .line 801
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-lez v0, :cond_7

    .line 802
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    .line 803
    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    sub-float/2addr p1, p3

    sub-float/2addr p2, v0

    div-float p3, p1, p2

    div-float/2addr p2, p1

    cmpl-float p1, p3, p2

    if-lez p1, :cond_6

    .line 807
    sget-object p1, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_RT:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    return-object p1

    .line 809
    :cond_6
    sget-object p1, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_UP:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    return-object p1

    .line 812
    :cond_7
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, v0, p3

    if-gez v0, :cond_9

    .line 813
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    .line 814
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p3, p1

    sub-float/2addr p2, v0

    div-float p1, p3, p2

    div-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_8

    .line 818
    sget-object p1, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_RT:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    return-object p1

    .line 820
    :cond_8
    sget-object p1, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_UP:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    return-object p1

    .line 824
    :cond_9
    sget-object p1, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_RT:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    return-object p1

    .line 828
    :cond_a
    sget-object p1, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_DW:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    return-object p1
.end method

.method public frame()Landroid/graphics/Rect;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpItem;->m_messageRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method getRect()Landroid/graphics/Rect;
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpItem;->m_messageRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method isVisible()Z
    .locals 3

    .line 691
    iget-boolean v0, p0, Lcom/metamoji/ui/help/HelpItem;->m_enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpItem;->uiPartView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpItem;->uiPartView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 702
    :cond_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    .line 703
    check-cast v0, Landroid/view/ViewGroup;

    .line 704
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 707
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public layout(Landroid/view/View;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)Landroid/graphics/Rect;
    .locals 5

    .line 200
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpItem;->uiPartView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/help/HelpItem;->MMJCM_IS_PAD(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->BH_FONT_SIZE()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->BH_FONT_SIZE_PHONE()F

    move-result v0

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/help/HelpItem;->uiPartView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/help/HelpItem;->MMJCM_IS_PAD(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->BH_M()F

    move-result v1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->BH_M_PHONE()F

    move-result v1

    :goto_1
    float-to-int v1, v1

    .line 202
    iget-object v2, p0, Lcom/metamoji/ui/help/HelpItem;->uiPartView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/help/HelpItem;->MMJCM_IS_PAD(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->BH_SIZE_W()F

    move-result v2

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->BH_SIZE_W_PHONE()F

    move-result v2

    :goto_2
    float-to-int v2, v2

    .line 203
    iget-object v3, p0, Lcom/metamoji/ui/help/HelpItem;->m_message:Ljava/lang/String;

    invoke-direct {p0, v3, v2, v0}, Lcom/metamoji/ui/help/HelpItem;->getTextHeight(Ljava/lang/CharSequence;IF)I

    move-result v0

    .line 204
    new-instance v3, Landroid/graphics/Rect;

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->WEB_LINK_ICON_W()F

    move-result v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {v3, v1, v1, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/metamoji/ui/help/HelpItem;->m_messageRect:Landroid/graphics/Rect;

    .line 207
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpItem;->anchorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpItem;->anchorRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/metamoji/ui/help/HelpItem;->uiPartView:Landroid/view/View;

    invoke-direct {p0, v0, v2, p1}, Lcom/metamoji/ui/help/HelpItem;->convertRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_3

    .line 210
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/metamoji/ui/help/HelpItem;->uiPartView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/metamoji/ui/help/HelpItem;->uiPartView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/metamoji/ui/help/HelpItem;->uiPartView:Landroid/view/View;

    invoke-direct {p0, v0, v2, p1}, Lcom/metamoji/ui/help/HelpItem;->convertRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 213
    :goto_3
    iput-object v0, p0, Lcom/metamoji/ui/help/HelpItem;->m_anchorRectReal:Landroid/graphics/Rect;

    .line 215
    iget-object v2, p0, Lcom/metamoji/ui/help/HelpItem;->m_messageRect:Landroid/graphics/Rect;

    .line 216
    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-eq p2, v3, :cond_6

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->CENTER:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-ne p2, v3, :cond_4

    goto :goto_4

    .line 220
    :cond_4
    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->BOTTOM:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-ne p2, v3, :cond_5

    .line 223
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p2, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->MARGIN_B()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->BALOON_UNIT()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->PADDING()F

    move-result v3

    add-float/2addr v0, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {p0, v2, p2, v0}, Lcom/metamoji/ui/help/HelpItem;->MoveRect(Landroid/graphics/Rect;II)V

    goto :goto_5

    .line 224
    :cond_5
    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-ne p2, v3, :cond_7

    .line 227
    iget p2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr p2, v3

    int-to-float p2, p2

    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->BALOON_UNIT()F

    move-result v3

    sub-float/2addr p2, v3

    float-to-int p2, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    invoke-direct {p0, v2, p2, v0}, Lcom/metamoji/ui/help/HelpItem;->MoveRect(Landroid/graphics/Rect;II)V

    goto :goto_5

    .line 219
    :cond_6
    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->MARGIN_B()F

    move-result v3

    add-float/2addr v0, v3

    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->BALOON_UNIT()F

    move-result v3

    add-float/2addr v0, v3

    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->PADDING()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {p0, v2, p2, v0}, Lcom/metamoji/ui/help/HelpItem;->MoveRect(Landroid/graphics/Rect;II)V

    .line 231
    :cond_7
    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    .line 232
    iget v0, v2, Landroid/graphics/Rect;->right:I

    if-ge p2, v0, :cond_8

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2, p2, v0}, Lcom/metamoji/ui/help/HelpItem;->MoveRect(Landroid/graphics/Rect;II)V

    .line 238
    :cond_8
    iget p2, v2, Landroid/graphics/Rect;->left:I

    if-gez p2, :cond_9

    .line 240
    iget p2, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2, v1, p2}, Lcom/metamoji/ui/help/HelpItem;->MoveRect(Landroid/graphics/Rect;II)V

    .line 244
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v0, :cond_a

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p2

    sub-int/2addr p1, p2

    .line 247
    iget p2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    .line 248
    iput p1, v2, Landroid/graphics/Rect;->top:I

    .line 249
    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    iput p1, v2, Landroid/graphics/Rect;->bottom:I

    .line 252
    :cond_a
    iput-object v2, p0, Lcom/metamoji/ui/help/HelpItem;->m_messageRect:Landroid/graphics/Rect;

    return-object v2
.end method

.method layoutButton(Landroid/widget/FrameLayout;)Landroid/view/View;
    .locals 4

    .line 720
    iget-boolean v0, p0, Lcom/metamoji/ui/help/HelpItem;->m_enabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/high16 v0, 0x41f00000    # 30.0f

    .line 723
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 725
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 726
    iget-object v2, p0, Lcom/metamoji/ui/help/HelpItem;->m_messageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 727
    iget-object v2, p0, Lcom/metamoji/ui/help/HelpItem;->m_messageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/metamoji/ui/help/HelpItem;->m_messageRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 728
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 729
    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 730
    iget-object v2, p0, Lcom/metamoji/ui/help/HelpItem;->m_webBtn:Lcom/metamoji/ui/UiHoverButton;

    if-nez v2, :cond_1

    .line 731
    new-instance v2, Lcom/metamoji/ui/UiHoverButton;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/metamoji/ui/UiHoverButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/metamoji/ui/help/HelpItem;->m_webBtn:Lcom/metamoji/ui/UiHoverButton;

    const/4 v3, 0x1

    .line 732
    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiHoverButton;->setClickable(Z)V

    .line 733
    iget-object v2, p0, Lcom/metamoji/ui/help/HelpItem;->m_webBtn:Lcom/metamoji/ui/UiHoverButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiHoverButton;->setFocusable(Z)V

    .line 734
    iget-object v2, p0, Lcom/metamoji/ui/help/HelpItem;->m_webBtn:Lcom/metamoji/ui/UiHoverButton;

    invoke-virtual {v2, v0, v0}, Lcom/metamoji/ui/UiHoverButton;->setSize(II)V

    .line 736
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->help_web_link:I

    invoke-static {v0}, Lcom/metamoji/cm/ImageUtils;->loadAssetBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 737
    invoke-static {v0}, Lcom/metamoji/ui/HoverCm;->makePushImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 738
    iget-object v3, p0, Lcom/metamoji/ui/help/HelpItem;->m_webBtn:Lcom/metamoji/ui/UiHoverButton;

    invoke-direct {p0, v3, v0, v2}, Lcom/metamoji/ui/help/HelpItem;->setNoFocusBtn(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 746
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpItem;->m_webBtn:Lcom/metamoji/ui/UiHoverButton;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 755
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/help/HelpItem;->m_webBtn:Lcom/metamoji/ui/UiHoverButton;

    iget v0, v1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/UiHoverButton;->setTranslationX(F)V

    .line 756
    iget-object p1, p0, Lcom/metamoji/ui/help/HelpItem;->m_webBtn:Lcom/metamoji/ui/UiHoverButton;

    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/UiHoverButton;->setTranslationY(F)V

    .line 757
    iget-object p1, p0, Lcom/metamoji/ui/help/HelpItem;->m_webBtn:Lcom/metamoji/ui/UiHoverButton;

    return-object p1
.end method

.method public layoutFin(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/metamoji/ui/help/HelpItem;->m_layoutFin:Z

    return-void
.end method

.method public layoutFin()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/metamoji/ui/help/HelpItem;->m_layoutFin:Z

    return v0
.end method

.method makeBaloonPath(Landroid/content/Context;)Landroid/graphics/Path;
    .locals 2

    .line 257
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/help/HelpItem;->MMJCM_IS_PAD(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->PADDING()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpItem;->BH_P_PHONE()F

    move-result p1

    :goto_0
    float-to-int p1, p1

    .line 259
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/metamoji/ui/help/HelpItem;->m_messageRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 260
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 262
    iget-object p1, p0, Lcom/metamoji/ui/help/HelpItem;->anchorStateReal:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-eq p1, v1, :cond_4

    iget-object p1, p0, Lcom/metamoji/ui/help/HelpItem;->anchorStateReal:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->CENTER:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 266
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/help/HelpItem;->anchorStateReal:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->BOTTOM:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-ne p1, v1, :cond_2

    .line 267
    iget-object p1, p0, Lcom/metamoji/ui/help/HelpItem;->m_anchorRectReal:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    .line 268
    iget-object v1, p0, Lcom/metamoji/ui/help/HelpItem;->m_anchorRectReal:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    .line 269
    invoke-virtual {p0, v0, p1, v1}, Lcom/metamoji/ui/help/HelpItem;->makeBaloonPathSub(Landroid/graphics/Rect;FF)Landroid/graphics/Path;

    move-result-object p1

    return-object p1

    .line 270
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ui/help/HelpItem;->anchorStateReal:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-ne p1, v1, :cond_3

    .line 271
    iget-object p1, p0, Lcom/metamoji/ui/help/HelpItem;->m_anchorRectReal:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    .line 272
    iget-object v1, p0, Lcom/metamoji/ui/help/HelpItem;->m_anchorRectReal:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    .line 273
    invoke-virtual {p0, v0, p1, v1}, Lcom/metamoji/ui/help/HelpItem;->makeBaloonPathSub(Landroid/graphics/Rect;FF)Landroid/graphics/Path;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 263
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/metamoji/ui/help/HelpItem;->m_anchorRectReal:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    .line 264
    iget-object v1, p0, Lcom/metamoji/ui/help/HelpItem;->m_anchorRectReal:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    .line 265
    invoke-virtual {p0, v0, p1, v1}, Lcom/metamoji/ui/help/HelpItem;->makeBaloonPathSub(Landroid/graphics/Rect;FF)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method makeBaloonPathSub(Landroid/graphics/Rect;FF)Landroid/graphics/Path;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 280
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_R()F

    move-result v4

    .line 282
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 283
    iget-object v6, v0, Lcom/metamoji/ui/help/HelpItem;->anchorStateReal:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v7, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    const/high16 v8, 0x40400000    # 3.0f

    const/4 v9, 0x0

    const/high16 v11, 0x43340000    # 180.0f

    const/high16 v12, -0x3d4c0000    # -90.0f

    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v14, 0x42b40000    # 90.0f

    if-ne v6, v7, :cond_4

    .line 291
    iget v6, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LIM_P()F

    move-result v7

    add-float/2addr v6, v7

    cmpl-float v6, v6, v3

    if-lez v6, :cond_1

    .line 292
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_OFFSET()F

    move-result v6

    add-float/2addr v3, v6

    .line 294
    iget v6, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_R()F

    move-result v7

    add-float/2addr v6, v7

    .line 295
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_H()F

    move-result v7

    add-float/2addr v7, v3

    cmpl-float v7, v7, v6

    if-lez v7, :cond_0

    .line 296
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_H()F

    move-result v6

    add-float/2addr v6, v3

    .line 299
    :cond_0
    iget v7, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    .line 301
    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v8, v6, v4

    .line 306
    new-instance v15, Landroid/graphics/RectF;

    mul-float/2addr v4, v13

    move/from16 v16, v13

    sub-float v13, v8, v4

    add-float v10, v7, v4

    invoke-direct {v15, v7, v13, v10, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v15, v11, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 309
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v7

    sub-float v7, v2, v7

    .line 312
    new-instance v10, Landroid/graphics/RectF;

    sub-float v15, v7, v4

    invoke-direct {v10, v15, v13, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v10, v14, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 314
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_H()F

    move-result v8

    add-float/2addr v8, v3

    .line 316
    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 318
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_HW()F

    move-result v7

    sub-float v7, v2, v7

    .line 320
    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 322
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 324
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_HW()F

    move-result v7

    add-float/2addr v7, v2

    .line 325
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_H()F

    move-result v8

    add-float/2addr v3, v8

    .line 327
    invoke-virtual {v5, v7, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 329
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v7

    add-float/2addr v2, v7

    .line 331
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 333
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v3

    mul-float v3, v3, v16

    add-float/2addr v6, v3

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_R()F

    move-result v3

    add-float/2addr v6, v3

    .line 334
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_BIG_R()F

    .line 336
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_BIG_R()F

    move-result v7

    mul-float v7, v7, v16

    sub-float v7, v2, v7

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_BIG_R()F

    move-result v8

    mul-float v8, v8, v16

    sub-float v8, v6, v8

    invoke-direct {v3, v7, v8, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v3, v9, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 338
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 341
    new-instance v3, Landroid/graphics/RectF;

    add-float v7, v2, v4

    add-float v8, v6, v4

    invoke-direct {v3, v2, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {v5, v3, v6, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 344
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    .line 346
    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v2, v4

    sub-float v8, v3, v4

    invoke-direct {v6, v7, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6, v9, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 347
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 350
    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v2, v4

    invoke-direct {v6, v2, v8, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6, v14, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 352
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 354
    new-instance v6, Landroid/graphics/RectF;

    add-float v8, v3, v4

    invoke-direct {v6, v2, v3, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6, v11, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 356
    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 358
    new-instance v2, Landroid/graphics/RectF;

    sub-float v4, v1, v4

    invoke-direct {v2, v4, v3, v1, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {v5, v2, v6, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 360
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    return-object v5

    :cond_1
    move/from16 v16, v13

    .line 362
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LIM_P()F

    move-result v7

    sub-float/2addr v6, v7

    cmpl-float v6, v6, v3

    if-lez v6, :cond_2

    .line 364
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_OFFSET()F

    move-result v6

    sub-float/2addr v2, v6

    .line 367
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v6

    sub-float v6, v3, v6

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_R()F

    move-result v7

    sub-float/2addr v6, v7

    .line 368
    iget v7, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    .line 370
    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v6, v4

    .line 375
    new-instance v8, Landroid/graphics/RectF;

    mul-float v4, v4, v16

    sub-float v10, v6, v4

    add-float v13, v7, v4

    invoke-direct {v8, v7, v10, v13, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v8, v11, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 378
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_H()F

    move-result v7

    sub-float v7, v2, v7

    .line 380
    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 382
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_HW()F

    move-result v6

    sub-float v6, v3, v6

    .line 384
    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 387
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 389
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_H()F

    move-result v6

    sub-float/2addr v2, v6

    .line 390
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_HW()F

    move-result v6

    add-float/2addr v6, v3

    .line 392
    invoke-virtual {v5, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 394
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v6

    add-float/2addr v3, v6

    .line 396
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 398
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 401
    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v2, v4

    add-float v8, v3, v4

    invoke-direct {v6, v2, v3, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v5, v6, v3, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 404
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    .line 406
    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v2, v4

    sub-float v8, v3, v4

    invoke-direct {v6, v7, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6, v9, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 407
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 410
    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v2, v4

    invoke-direct {v6, v2, v8, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6, v14, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 412
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 414
    new-instance v6, Landroid/graphics/RectF;

    add-float v8, v3, v4

    invoke-direct {v6, v2, v3, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6, v11, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 416
    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 418
    new-instance v2, Landroid/graphics/RectF;

    sub-float v4, v1, v4

    invoke-direct {v2, v4, v3, v1, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {v5, v2, v6, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 421
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    return-object v5

    .line 425
    :cond_2
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_OFFSET()F

    move-result v6

    sub-float/2addr v3, v6

    .line 426
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_R()F

    move-result v7

    mul-float/2addr v7, v8

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v8

    mul-float v8, v8, v16

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 427
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_H()F

    move-result v7

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_R()F

    move-result v8

    mul-float v8, v8, v16

    add-float/2addr v7, v8

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v8

    mul-float v8, v8, v16

    add-float/2addr v7, v8

    sub-float v7, v3, v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_3

    .line 428
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_H()F

    move-result v6

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_R()F

    move-result v7

    mul-float v7, v7, v16

    add-float/2addr v6, v7

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v7

    mul-float v7, v7, v16

    add-float/2addr v6, v7

    sub-float v6, v3, v6

    .line 430
    :cond_3
    iget v7, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    .line 433
    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v8, v6, v4

    .line 438
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v7, v8, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v10, v11, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 440
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v7

    add-float/2addr v7, v2

    .line 441
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_BIG_R()F

    .line 443
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_BIG_R()F

    move-result v13

    mul-float v13, v13, v16

    sub-float v13, v7, v13

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_BIG_R()F

    move-result v15

    mul-float v15, v15, v16

    add-float/2addr v15, v8

    invoke-direct {v10, v13, v8, v7, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v8, 0x43870000    # 270.0f

    invoke-virtual {v5, v10, v8, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 445
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_H()F

    move-result v8

    sub-float v8, v3, v8

    .line 447
    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 449
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_HW()F

    move-result v7

    add-float/2addr v7, v2

    .line 451
    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 454
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 456
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_HW()F

    move-result v3

    sub-float v3, v2, v3

    .line 458
    invoke-virtual {v5, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 460
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v3

    sub-float/2addr v2, v3

    .line 462
    invoke-virtual {v5, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 464
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_R()F

    move-result v3

    add-float/2addr v6, v3

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v3

    mul-float v3, v3, v16

    add-float/2addr v6, v3

    .line 467
    new-instance v3, Landroid/graphics/RectF;

    mul-float v4, v4, v16

    sub-float v7, v2, v4

    add-float v8, v6, v4

    invoke-direct {v3, v7, v6, v2, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v3, v9, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 469
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 472
    new-instance v3, Landroid/graphics/RectF;

    add-float v7, v2, v4

    invoke-direct {v3, v2, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {v5, v3, v6, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 475
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    .line 477
    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v2, v4

    sub-float v8, v3, v4

    invoke-direct {v6, v7, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6, v9, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 478
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 481
    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v2, v4

    invoke-direct {v6, v2, v8, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6, v14, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 483
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 485
    new-instance v6, Landroid/graphics/RectF;

    add-float v8, v3, v4

    invoke-direct {v6, v2, v3, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6, v11, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 487
    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 489
    new-instance v2, Landroid/graphics/RectF;

    sub-float v4, v1, v4

    invoke-direct {v2, v4, v3, v1, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {v5, v2, v6, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 491
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    return-object v5

    :cond_4
    move/from16 v16, v13

    .line 494
    iget-object v6, v0, Lcom/metamoji/ui/help/HelpItem;->anchorStateReal:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v7, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-eq v6, v7, :cond_6

    iget-object v6, v0, Lcom/metamoji/ui/help/HelpItem;->anchorStateReal:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v7, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->CENTER:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-ne v6, v7, :cond_5

    goto/16 :goto_0

    .line 625
    :cond_5
    iget-object v6, v0, Lcom/metamoji/ui/help/HelpItem;->anchorStateReal:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v7, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->BOTTOM:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-ne v6, v7, :cond_8

    .line 633
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_OFFSET()F

    move-result v6

    sub-float/2addr v3, v6

    .line 635
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_R()F

    move-result v6

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v7

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    .line 636
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    .line 638
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 639
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v6

    add-float/2addr v6, v2

    .line 640
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_H()F

    move-result v8

    sub-float v8, v3, v8

    .line 642
    new-instance v10, Landroid/graphics/RectF;

    mul-float v4, v4, v16

    add-float v13, v6, v4

    add-float v15, v7, v4

    invoke-direct {v10, v6, v7, v13, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v7, 0x43870000    # 270.0f

    invoke-virtual {v5, v10, v7, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 644
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_H()F

    move-result v7

    sub-float v7, v3, v7

    .line 646
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 648
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_HW()F

    move-result v6

    add-float/2addr v6, v2

    .line 651
    invoke-virtual {v5, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 653
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 655
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_HW()F

    move-result v6

    sub-float v6, v2, v6

    .line 656
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_H()F

    move-result v7

    sub-float/2addr v3, v7

    .line 658
    invoke-virtual {v5, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 660
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v6

    sub-float/2addr v2, v6

    .line 662
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 664
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    .line 667
    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v2, v4

    add-float v8, v3, v4

    invoke-direct {v6, v7, v3, v2, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6, v9, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 668
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 671
    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v3, v4

    add-float v8, v2, v4

    invoke-direct {v6, v2, v7, v8, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6, v14, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 672
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 675
    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v3, v4

    invoke-direct {v6, v2, v3, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6, v11, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 676
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 679
    new-instance v6, Landroid/graphics/RectF;

    sub-float v8, v2, v4

    invoke-direct {v6, v8, v3, v2, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v5, v6, v3, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 680
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    .line 683
    new-instance v3, Landroid/graphics/RectF;

    sub-float v4, v1, v4

    invoke-direct {v3, v8, v4, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v3, v9, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 685
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    return-object v5

    .line 502
    :cond_6
    :goto_0
    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LIM_P()F

    move-result v7

    sub-float/2addr v6, v7

    cmpg-float v6, v6, v2

    if-gez v6, :cond_7

    .line 504
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_OFFSET()F

    move-result v6

    sub-float/2addr v2, v6

    .line 505
    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v8, v4

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v7

    mul-float v7, v7, v16

    add-float/2addr v8, v7

    sub-float/2addr v6, v8

    .line 506
    iget v7, v1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    .line 508
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v6, v4

    .line 514
    new-instance v8, Landroid/graphics/RectF;

    mul-float v4, v4, v16

    sub-float v10, v6, v4

    sub-float v13, v7, v4

    invoke-direct {v8, v10, v13, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v8, v14, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 516
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v7

    sub-float v7, v3, v7

    .line 517
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_BIG_R()F

    .line 520
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_BIG_R()F

    move-result v10

    mul-float v10, v10, v16

    add-float/2addr v10, v6

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_BIG_R()F

    move-result v13

    mul-float v13, v13, v16

    add-float/2addr v13, v7

    invoke-direct {v8, v6, v7, v10, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v8, v11, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 522
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_H()F

    move-result v6

    sub-float v6, v2, v6

    .line 524
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 526
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_HW()F

    move-result v7

    sub-float v7, v3, v7

    .line 528
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 530
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 531
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_H()F

    move-result v6

    sub-float/2addr v2, v6

    .line 532
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_HW()F

    move-result v6

    add-float/2addr v6, v3

    .line 534
    invoke-virtual {v5, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 535
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v6

    add-float/2addr v3, v6

    .line 537
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 539
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v4

    .line 543
    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v2, v4

    add-float v8, v3, v4

    invoke-direct {v6, v2, v3, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v5, v6, v3, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 547
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 551
    new-instance v6, Landroid/graphics/RectF;

    sub-float v8, v3, v4

    invoke-direct {v6, v2, v8, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6, v11, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 554
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 555
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 557
    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v2, v4

    add-float v8, v3, v4

    invoke-direct {v6, v7, v3, v2, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v5, v6, v3, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 558
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 559
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    .line 561
    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v2, v4

    sub-float v8, v3, v4

    invoke-direct {v6, v7, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6, v9, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 562
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 563
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    .line 565
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v2, v3, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6, v14, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 566
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 567
    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 569
    new-instance v3, Landroid/graphics/RectF;

    add-float v6, v2, v4

    add-float/2addr v4, v1

    invoke-direct {v3, v2, v1, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v3, v11, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 571
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    return-object v5

    .line 573
    :cond_7
    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LIM_P()F

    move-result v7

    sub-float/2addr v6, v7

    cmpg-float v6, v2, v6

    if-gez v6, :cond_8

    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LIM_P()F

    move-result v7

    add-float/2addr v6, v7

    cmpl-float v6, v2, v6

    if-lez v6, :cond_8

    .line 575
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_OFFSET()F

    move-result v6

    add-float/2addr v3, v6

    .line 577
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_R()F

    move-result v6

    sub-float v6, v2, v6

    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v7

    sub-float/2addr v6, v7

    .line 578
    iget v7, v1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    .line 580
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 581
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v6

    sub-float v6, v2, v6

    .line 582
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_H()F

    move-result v8

    add-float/2addr v8, v3

    .line 584
    new-instance v10, Landroid/graphics/RectF;

    mul-float v4, v4, v16

    sub-float v13, v6, v4

    sub-float v15, v7, v4

    invoke-direct {v10, v13, v15, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v10, v14, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 585
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_H()F

    move-result v7

    add-float/2addr v7, v3

    .line 587
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 588
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_HW()F

    move-result v6

    sub-float v6, v2, v6

    .line 591
    invoke-virtual {v5, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 593
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 594
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_HW()F

    move-result v6

    add-float/2addr v6, v2

    .line 595
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_ARROW_H()F

    move-result v7

    add-float/2addr v3, v7

    .line 597
    invoke-virtual {v5, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 598
    invoke-direct {v0}, Lcom/metamoji/ui/help/HelpItem;->BH_LINE_HW()F

    move-result v6

    add-float/2addr v2, v6

    .line 600
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 601
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 603
    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v3, v4

    add-float v8, v2, v4

    invoke-direct {v6, v2, v7, v8, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6, v11, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 605
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 606
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 608
    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v2, v4

    add-float v8, v3, v4

    invoke-direct {v6, v7, v3, v2, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v5, v6, v3, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 609
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 610
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    .line 612
    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v2, v4

    sub-float v8, v3, v4

    invoke-direct {v6, v7, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6, v9, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 613
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 614
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    .line 616
    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v3, v4

    add-float v8, v2, v4

    invoke-direct {v6, v2, v7, v8, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6, v14, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 617
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 618
    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 620
    new-instance v3, Landroid/graphics/RectF;

    add-float v6, v2, v4

    add-float/2addr v4, v1

    invoke-direct {v3, v2, v1, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v3, v11, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 622
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    :cond_8
    return-object v5
.end method

.method setRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/metamoji/ui/help/HelpItem;->m_messageRect:Landroid/graphics/Rect;

    return-void
.end method
