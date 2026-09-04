.class public Lcom/metamoji/ui/cabinet/TreeIconView;
.super Landroid/widget/ImageView;
.source "TreeIconView.java"


# instance fields
.field private _noteCount:I

.field private _paintBadge:Landroid/graphics/Paint;

.field private _paintText:Landroid/graphics/Paint;

.field private _shadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_shadowPaint:Landroid/graphics/Paint;

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_paintBadge:Landroid/graphics/Paint;

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_paintText:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_noteCount:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 23
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ui/cabinet/TreeIconView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 26
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_shadowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_shadowPaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-static {v2, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    new-instance p1, Landroid/graphics/BlurMaskFilter;

    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_SIZE:I

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p1, v0, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 29
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 31
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_paintBadge:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_paintBadge:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_paintText:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_paintText:Landroid/graphics/Paint;

    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_TEXT_SIZE:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 46
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    iget v0, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_noteCount:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_X:I

    int-to-float v0, v0

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_Y:I

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_SHADOW:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_SIZE:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 51
    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_X:I

    int-to-float v0, v0

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_Y:I

    int-to-float v1, v1

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_SIZE:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_paintBadge:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 52
    iget v0, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_noteCount:I

    const-string v1, ""

    const/16 v2, 0xa

    if-lez v0, :cond_1

    if-ge v0, v2, :cond_1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_noteCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_TEXT_X:I

    int-to-float v1, v1

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_TEXT_Y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    const/16 v3, 0x64

    if-gt v2, v0, :cond_2

    if-ge v0, v3, :cond_2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_noteCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_TEXT_X2:I

    int-to-float v1, v1

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_TEXT_Y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    if-gt v3, v0, :cond_3

    .line 57
    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_TEXT_X2:I

    int-to-float v0, v0

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_TEXT_Y:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_paintText:Landroid/graphics/Paint;

    const-string v3, "..."

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method setNoteCount(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/metamoji/ui/cabinet/TreeIconView;->_noteCount:I

    return-void
.end method
