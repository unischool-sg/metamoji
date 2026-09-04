.class public Lcom/metamoji/ctold/tag/CtTagClass;
.super Lcom/metamoji/ctold/tag/CtTagBase;
.source "CtTagClass.java"


# instance fields
.field private tagStyle:Lcom/metamoji/ctold/style/CtTagStyle;


# direct methods
.method public constructor <init>(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/style/CtTagStyle;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/metamoji/ctold/tag/CtTagBase;-><init>(Lcom/metamoji/ctold/tag/CtSystemTagId;)V

    .line 34
    iput-object p2, p0, Lcom/metamoji/ctold/tag/CtTagClass;->tagStyle:Lcom/metamoji/ctold/style/CtTagStyle;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/metamoji/ctold/tag/CtTagBase;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 39
    const-string v0, "style"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 40
    invoke-static {}, Lcom/metamoji/ctold/style/CtTagStyleFactory;->instance()Lcom/metamoji/ctold/style/CtTagStyleFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/ctold/style/CtTagStyleFactory;->createStyle(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/ctold/style/CtTagStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/tag/CtTagClass;->tagStyle:Lcom/metamoji/ctold/style/CtTagStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/ctold/style/CtTagStyle;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/metamoji/ctold/tag/CtTagBase;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lcom/metamoji/ctold/tag/CtTagClass;->tagStyle:Lcom/metamoji/ctold/style/CtTagStyle;

    return-void
.end method


# virtual methods
.method public drawForDialog(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagClass;->tagStyle:Lcom/metamoji/ctold/style/CtTagStyle;

    invoke-virtual {p0}, Lcom/metamoji/ctold/tag/CtTagClass;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/metamoji/ctold/style/CtTagStyle;->drawForDialog(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;Ljava/lang/String;)V

    return-void
.end method

.method public drawForSprite(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/cm/RectEx;)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagClass;->tagStyle:Lcom/metamoji/ctold/style/CtTagStyle;

    invoke-virtual {p0}, Lcom/metamoji/ctold/tag/CtTagClass;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/metamoji/ctold/style/CtTagStyle;->drawForSprite(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/cm/RectEx;Ljava/lang/String;Lcom/metamoji/ctold/tag/CtTagInstance;)V

    return-void
.end method

.method public drawForSprite(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/cm/RectEx;Lcom/metamoji/ctold/tag/CtTagInstance;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagClass;->tagStyle:Lcom/metamoji/ctold/style/CtTagStyle;

    invoke-virtual {p0}, Lcom/metamoji/ctold/tag/CtTagClass;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/metamoji/ctold/style/CtTagStyle;->drawForSprite(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/cm/RectEx;Ljava/lang/String;Lcom/metamoji/ctold/tag/CtTagInstance;)V

    return-void
.end method

.method public drawForThumbnail(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;)V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagClass;->tagStyle:Lcom/metamoji/ctold/style/CtTagStyle;

    invoke-virtual {p0}, Lcom/metamoji/ctold/tag/CtTagClass;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/metamoji/ctold/style/CtTagStyle;->drawForThumbnail(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;Ljava/lang/String;Lcom/metamoji/ctold/tag/CtTagInstance;)V

    return-void
.end method

.method public drawForThumbnail(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;Lcom/metamoji/ctold/tag/CtTagInstance;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagClass;->tagStyle:Lcom/metamoji/ctold/style/CtTagStyle;

    invoke-virtual {p0}, Lcom/metamoji/ctold/tag/CtTagClass;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/metamoji/ctold/style/CtTagStyle;->drawForThumbnail(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;Ljava/lang/String;Lcom/metamoji/ctold/tag/CtTagInstance;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 85
    :cond_0
    instance-of v1, p1, Lcom/metamoji/ctold/tag/CtTagClass;

    if-nez v1, :cond_1

    return v0

    .line 88
    :cond_1
    check-cast p1, Lcom/metamoji/ctold/tag/CtTagClass;

    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/tag/CtTagClass;->equalsCtTagClass(Lcom/metamoji/ctold/tag/CtTagClass;)Z

    move-result p1

    return p1
.end method

.method public equalsCtTagClass(Lcom/metamoji/ctold/tag/CtTagClass;)Z
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/metamoji/ctold/tag/CtTagBase;->equalsCtTagBase(Lcom/metamoji/ctold/tag/CtTagBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagClass;->tagStyle:Lcom/metamoji/ctold/style/CtTagStyle;

    iget-object p1, p1, Lcom/metamoji/ctold/tag/CtTagClass;->tagStyle:Lcom/metamoji/ctold/style/CtTagStyle;

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

    .line 48
    invoke-super {p0, p1}, Lcom/metamoji/ctold/tag/CtTagBase;->getModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/metamoji/ctold/tag/CtTagClass;->tagStyle:Lcom/metamoji/ctold/style/CtTagStyle;

    invoke-interface {v1, p1}, Lcom/metamoji/ctold/style/CtTagStyle;->getModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 50
    const-string v1, "style"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-object v0
.end method

.method public getTagStyle()Lcom/metamoji/ctold/style/CtTagStyle;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagClass;->tagStyle:Lcom/metamoji/ctold/style/CtTagStyle;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 100
    invoke-super {p0}, Lcom/metamoji/ctold/tag/CtTagBase;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ctold/tag/CtTagClass;->tagStyle:Lcom/metamoji/ctold/style/CtTagStyle;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/ctold/CtUtils;->objectHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
