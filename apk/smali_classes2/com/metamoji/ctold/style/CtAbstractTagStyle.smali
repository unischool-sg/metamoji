.class abstract Lcom/metamoji/ctold/style/CtAbstractTagStyle;
.super Ljava/lang/Object;
.source "CtAbstractTagStyle.java"

# interfaces
.implements Lcom/metamoji/ctold/style/CtTagStyle;


# instance fields
.field private tagStyleType:Lcom/metamoji/ctold/style/CtTagStyleType;


# direct methods
.method protected constructor <init>(Lcom/metamoji/ctold/style/CtTagStyleType;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/metamoji/ctold/style/CtAbstractTagStyle;->tagStyleType:Lcom/metamoji/ctold/style/CtTagStyleType;

    return-void
.end method

.method protected constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/metamoji/ctold/style/CtTagStyleType;->CT_STYLE_UNKNOWN:Lcom/metamoji/ctold/style/CtTagStyleType;

    invoke-virtual {v0}, Lcom/metamoji/ctold/style/CtTagStyleType;->getValue()I

    move-result v0

    const-string v1, "type"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/metamoji/ctold/style/CtTagStyleType;->enumOf(I)Lcom/metamoji/ctold/style/CtTagStyleType;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/style/CtAbstractTagStyle;->tagStyleType:Lcom/metamoji/ctold/style/CtTagStyleType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 53
    :cond_0
    instance-of v1, p1, Lcom/metamoji/ctold/style/CtAbstractTagStyle;

    if-nez v1, :cond_1

    return v0

    .line 56
    :cond_1
    check-cast p1, Lcom/metamoji/ctold/style/CtAbstractTagStyle;

    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/style/CtAbstractTagStyle;->equalsCtAbstractTagStyle(Lcom/metamoji/ctold/style/CtAbstractTagStyle;)Z

    move-result p1

    return p1
.end method

.method public equalsCtAbstractTagStyle(Lcom/metamoji/ctold/style/CtAbstractTagStyle;)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/metamoji/ctold/style/CtAbstractTagStyle;->tagStyleType:Lcom/metamoji/ctold/style/CtTagStyleType;

    iget-object p1, p1, Lcom/metamoji/ctold/style/CtAbstractTagStyle;->tagStyleType:Lcom/metamoji/ctold/style/CtTagStyleType;

    invoke-static {v0, p1}, Lcom/metamoji/ctold/CtUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 34
    const-string v0, "TagStyle"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, 0x1

    .line 35
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 36
    invoke-virtual {p0}, Lcom/metamoji/ctold/style/CtAbstractTagStyle;->getType()Lcom/metamoji/ctold/style/CtTagStyleType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ctold/style/CtTagStyleType;->getValue()I

    move-result v0

    const-string v1, "type"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    return-object p1
.end method

.method public getType()Lcom/metamoji/ctold/style/CtTagStyleType;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/ctold/style/CtAbstractTagStyle;->tagStyleType:Lcom/metamoji/ctold/style/CtTagStyleType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/metamoji/ctold/style/CtAbstractTagStyle;->tagStyleType:Lcom/metamoji/ctold/style/CtTagStyleType;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ctold/CtUtils;->objectHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
