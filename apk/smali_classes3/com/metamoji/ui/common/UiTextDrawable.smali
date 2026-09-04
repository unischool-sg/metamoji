.class public Lcom/metamoji/ui/common/UiTextDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "UiTextDrawable.java"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IFZ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/metamoji/ui/common/UiTextDrawable;->mText:Ljava/lang/String;

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiTextDrawable;->mPaint:Landroid/graphics/Paint;

    .line 19
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p2, 0x1

    .line 21
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/metamoji/ui/common/UiTextDrawable;->mText:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/metamoji/ui/common/UiTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getTextWidth()F
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/metamoji/ui/common/UiTextDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 50
    iget-object v1, p0, Lcom/metamoji/ui/common/UiTextDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/ui/common/UiTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/metamoji/ui/common/UiTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
