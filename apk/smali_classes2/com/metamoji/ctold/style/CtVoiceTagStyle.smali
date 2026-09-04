.class Lcom/metamoji/ctold/style/CtVoiceTagStyle;
.super Lcom/metamoji/ctold/style/CtAbstractTagStyle;
.source "CtVoiceTagStyle.java"


# instance fields
.field private playTrackBtnOnContents:Landroid/graphics/Bitmap;

.field private playTrackBtnOnPages:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 33
    sget-object v0, Lcom/metamoji/ctold/style/CtTagStyleType;->CT_STYLE_VOICE:Lcom/metamoji/ctold/style/CtTagStyleType;

    invoke-direct {p0, v0}, Lcom/metamoji/ctold/style/CtAbstractTagStyle;-><init>(Lcom/metamoji/ctold/style/CtTagStyleType;)V

    .line 34
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->play_track_btn_on_pages:I

    invoke-static {v0}, Lcom/metamoji/cm/ImageUtils;->loadAssetBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ctold/style/CtVoiceTagStyle;->playTrackBtnOnPages:Landroid/graphics/Bitmap;

    .line 35
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->play_track_btn_on_contents:I

    invoke-static {v0}, Lcom/metamoji/cm/ImageUtils;->loadAssetBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ctold/style/CtVoiceTagStyle;->playTrackBtnOnContents:Landroid/graphics/Bitmap;

    return-void
.end method

.method constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/metamoji/ctold/style/CtAbstractTagStyle;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 40
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->play_track_btn_on_pages:I

    invoke-static {p1}, Lcom/metamoji/cm/ImageUtils;->loadAssetBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/style/CtVoiceTagStyle;->playTrackBtnOnPages:Landroid/graphics/Bitmap;

    .line 41
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->play_track_btn_on_contents:I

    invoke-static {p1}, Lcom/metamoji/cm/ImageUtils;->loadAssetBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/style/CtVoiceTagStyle;->playTrackBtnOnContents:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public drawForDialog(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public drawForSprite(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/cm/RectEx;Ljava/lang/String;Lcom/metamoji/ctold/tag/CtTagInstance;)V
    .locals 6

    .line 85
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    .line 86
    iget-object p1, p0, Lcom/metamoji/ctold/style/CtVoiceTagStyle;->playTrackBtnOnContents:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    .line 87
    iget p3, p2, Lcom/metamoji/cm/RectEx;->height:F

    div-float v4, p3, p1

    .line 88
    iget v1, p2, Lcom/metamoji/cm/RectEx;->x:F

    iget v2, p2, Lcom/metamoji/cm/RectEx;->y:F

    iget-object v3, p0, Lcom/metamoji/ctold/style/CtVoiceTagStyle;->playTrackBtnOnContents:Landroid/graphics/Bitmap;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/df/sprite/Graphics;->drawImage(FFLandroid/graphics/Bitmap;FF)V

    return-void
.end method

.method public drawForThumbnail(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;Ljava/lang/String;Lcom/metamoji/ctold/tag/CtTagInstance;)V
    .locals 2

    .line 75
    new-instance p3, Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/metamoji/ctold/style/CtVoiceTagStyle;->playTrackBtnOnPages:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    iget-object v0, p0, Lcom/metamoji/ctold/style/CtVoiceTagStyle;->playTrackBtnOnPages:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p3, v1, v1, p4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 76
    invoke-virtual {p2}, Lcom/metamoji/cm/RectEx;->getRect()Landroid/graphics/Rect;

    move-result-object p2

    .line 77
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 79
    iget-object v0, p0, Lcom/metamoji/ctold/style/CtVoiceTagStyle;->playTrackBtnOnPages:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p3, p2, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 99
    :cond_0
    instance-of v1, p1, Lcom/metamoji/ctold/style/CtVoiceTagStyle;

    if-nez v1, :cond_1

    return v0

    .line 102
    :cond_1
    check-cast p1, Lcom/metamoji/ctold/style/CtVoiceTagStyle;

    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/style/CtVoiceTagStyle;->equalsCtVoiceTagStyle(Lcom/metamoji/ctold/style/CtVoiceTagStyle;)Z

    move-result p1

    return p1
.end method

.method public equalsCtVoiceTagStyle(Lcom/metamoji/ctold/style/CtVoiceTagStyle;)Z
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lcom/metamoji/ctold/style/CtAbstractTagStyle;->equalsCtAbstractTagStyle(Lcom/metamoji/ctold/style/CtAbstractTagStyle;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/metamoji/ctold/style/CtAbstractTagStyle;->hashCode()I

    move-result v0

    return v0
.end method
