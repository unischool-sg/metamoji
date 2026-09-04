.class public Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;
.super Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;
.source "DrSimpleShapeElement.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;-><init>()V

    return-void
.end method

.method public static newEmptySimpleShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 50
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->newEmptySegmentalShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 52
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->SIMPLE_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method public static newSimpleShapeElementWithSegments(Ljava/util/List;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/segment/DrSgSegment;",
            ">;",
            "Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;",
            "Lcom/metamoji/df/model/IModel;",
            "Lcom/metamoji/un/draw2/module/DrModuleContext;",
            "Lcom/metamoji/un/draw2/module/element/DrEditContext;",
            ")",
            "Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 70
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 75
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;->newEmptySimpleShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 78
    :goto_0
    new-instance v1, Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;-><init>()V

    invoke-virtual {v1, p2, p3, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;

    .line 81
    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 84
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 85
    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;->addSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;->updateSegments()V

    if-eqz p4, :cond_3

    .line 93
    invoke-virtual {p2, p4}, Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;->editWithContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    :cond_3
    return-object p2
.end method


# virtual methods
.method protected isAbleToFill_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected shapeType_()Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;
    .locals 1

    .line 27
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->SIMPLE_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    return-object v0
.end method
