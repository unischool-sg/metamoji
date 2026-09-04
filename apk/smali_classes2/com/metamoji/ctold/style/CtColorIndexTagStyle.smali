.class Lcom/metamoji/ctold/style/CtColorIndexTagStyle;
.super Lcom/metamoji/ctold/style/CtAbstractTagStyle;
.source "CtColorIndexTagStyle.java"


# instance fields
.field private colorIndex:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 30
    sget-object v0, Lcom/metamoji/ctold/style/CtTagStyleType;->CT_STYLE_COLORINDEX:Lcom/metamoji/ctold/style/CtTagStyleType;

    invoke-direct {p0, v0}, Lcom/metamoji/ctold/style/CtAbstractTagStyle;-><init>(Lcom/metamoji/ctold/style/CtTagStyleType;)V

    .line 31
    iput p1, p0, Lcom/metamoji/ctold/style/CtColorIndexTagStyle;->colorIndex:I

    return-void
.end method

.method constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Lcom/metamoji/ctold/style/CtAbstractTagStyle;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 36
    const-string v0, "colorIndex"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ctold/style/CtColorIndexTagStyle;->colorIndex:I

    return-void
.end method


# virtual methods
.method public drawForDialog(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public drawForSprite(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/cm/RectEx;Ljava/lang/String;Lcom/metamoji/ctold/tag/CtTagInstance;)V
    .locals 0

    return-void
.end method

.method public drawForThumbnail(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;Ljava/lang/String;Lcom/metamoji/ctold/tag/CtTagInstance;)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 86
    :cond_0
    instance-of v1, p1, Lcom/metamoji/ctold/style/CtColorIndexTagStyle;

    if-nez v1, :cond_1

    return v0

    .line 89
    :cond_1
    check-cast p1, Lcom/metamoji/ctold/style/CtColorIndexTagStyle;

    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/style/CtColorIndexTagStyle;->equalsCtColorIndexTagStyle(Lcom/metamoji/ctold/style/CtColorIndexTagStyle;)Z

    move-result p1

    return p1
.end method

.method public equalsCtColorIndexTagStyle(Lcom/metamoji/ctold/style/CtColorIndexTagStyle;)Z
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/metamoji/ctold/style/CtAbstractTagStyle;->equalsCtAbstractTagStyle(Lcom/metamoji/ctold/style/CtAbstractTagStyle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/metamoji/ctold/style/CtColorIndexTagStyle;->colorIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Lcom/metamoji/ctold/style/CtColorIndexTagStyle;->colorIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/ctold/CtUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/metamoji/ctold/style/CtAbstractTagStyle;->getModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 45
    const-string v0, "colorIndex"

    iget v1, p0, Lcom/metamoji/ctold/style/CtColorIndexTagStyle;->colorIndex:I

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/metamoji/ctold/style/CtAbstractTagStyle;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/metamoji/ctold/style/CtColorIndexTagStyle;->colorIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/ctold/CtUtils;->objectHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
