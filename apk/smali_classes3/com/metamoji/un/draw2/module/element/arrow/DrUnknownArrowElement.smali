.class public Lcom/metamoji/un/draw2/module/element/arrow/DrUnknownArrowElement;
.super Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;
.source "DrUnknownArrowElement.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;-><init>()V

    return-void
.end method


# virtual methods
.method protected arrowType_()Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;
    .locals 1

    .line 30
    sget-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    return-object v0
.end method

.method public originalArrowType()I
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrUnknownArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->getArrowTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->intValue()I

    move-result v0

    return v0
.end method
