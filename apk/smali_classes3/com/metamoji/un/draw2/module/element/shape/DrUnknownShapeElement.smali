.class public Lcom/metamoji/un/draw2/module/element/shape/DrUnknownShapeElement;
.super Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;
.source "DrUnknownShapeElement.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;-><init>()V

    return-void
.end method


# virtual methods
.method public originalShapeType()I
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrUnknownShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->getShapeTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->intValue()I

    move-result v0

    return v0
.end method

.method protected shapeType_()Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;
    .locals 1

    .line 32
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    return-object v0
.end method
