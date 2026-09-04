.class public Lcom/metamoji/un/draw2/unit/converter/DrUnModelTraverseRouter;
.super Ljava/lang/Object;
.source "DrUnModelTraverseRouter.java"

# interfaces
.implements Lcom/metamoji/df/controller/IModelTraverseRouter;


# static fields
.field public static final TARGET_MODEL_TYPE:Ljava/lang/String; = "E"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public route(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 2

    .line 31
    const-string v0, "E"

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    .line 32
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->getTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v0

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->getUnitModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p2, p1, p3}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    :cond_2
    :goto_0
    return-void
.end method
