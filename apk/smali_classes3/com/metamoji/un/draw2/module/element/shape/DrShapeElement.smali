.class public Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;
.super Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;
.source "DrShapeElement.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;


# static fields
.field protected static final MODEL_PROPERTY_EXTRA_HANDLES_ENABLEMENT:Ljava/lang/String; = "e"

.field protected static final MODEL_PROPERTY_IS_SEGMENTAL:Ljava/lang/String; = "s"

.field protected static final MODEL_PROPERTY_PEN_STYLE:Ljava/lang/String; = "p"

.field protected static final MODEL_PROPERTY_SHAPE_TYPE:Ljava/lang/String; = "t"


# instance fields
.field private m_extraHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_extraHandlesEnablement:Z

.field private m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;


# direct methods
.method public static synthetic $r8$lambda$z6SLcarWxUIkcdrjBjcWFTGJvwA(Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->lambda$updateExtraHandleAtIndex$0(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;-><init>()V

    return-void
.end method

.method public static changePenStyleOfShapeElement(Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1098
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 1102
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0

    .line 1107
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->penType()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ARROW:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    if-ne v3, v4, :cond_2

    .line 1108
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v3

    .line 1109
    invoke-virtual {p1, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->copyToStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z

    .line 1110
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->inkId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setInkId(Ljava/lang/String;)V

    move-object p1, v3

    .line 1115
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isSegmental()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1117
    sget-object v3, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->penType()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3

    .line 1149
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1150
    move-object p1, p0

    check-cast p1, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->simplePenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object p1

    goto/16 :goto_0

    .line 1123
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v3

    .line 1124
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineWidth()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 1125
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColorRed()I

    move-result v5

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColorGreen()I

    move-result v6

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColorBlue()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineColorRGB(III)V

    .line 1126
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineAlpha()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineAlpha(F)V

    .line 1127
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->inkId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setInkId(Ljava/lang/String;)V

    .line 1130
    move-object p1, p0

    check-cast p1, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->simplePenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object p1

    .line 1131
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 1132
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineJoin()Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    .line 1133
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->miterLimit()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setMiterLimit(F)V

    .line 1134
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineDash()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1136
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v5

    iget v5, v5, Lcom/metamoji/un/draw2/module/DrModuleSettings;->lineDashBaseInterval1:F

    invoke-virtual {p1, v5, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->getLineDashScaleWithBaseDashInterval(FZ)F

    move-result v5

    .line 1139
    new-array v4, v4, [Ljava/lang/Float;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v6

    iget v6, v6, Lcom/metamoji/un/draw2/module/DrModuleSettings;->lineDashBaseInterval1:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v0

    .line 1140
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->lineDashBaseInterval2:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v2

    .line 1139
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineDash(Ljava/util/List;)V

    .line 1141
    invoke-virtual {v3, v5, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->updateLineDashWithScale(FZ)V

    .line 1143
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillType()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    .line 1144
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillColors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillColors()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_5
    invoke-virtual {v3, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillColors(Ljava/util/List;)V

    .line 1145
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillAlpha()F

    move-result p1

    invoke-virtual {v3, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillAlpha(F)V

    move-object p1, v3

    goto :goto_0

    .line 1119
    :cond_6
    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 1153
    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    :cond_7
    return-object p0
.end method

.method public static checkShapeElementModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 1003
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->checkRectBaseElementModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->getTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object p0

    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->SHAPE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getIsSegmentalFromModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 1044
    const-string/jumbo v1, "s"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0
.end method

.method public static getPenStyleModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1036
    :cond_0
    const-string v0, "p"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static getShapeTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;
    .locals 2

    if-nez p0, :cond_0

    .line 1013
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    return-object p0

    .line 1015
    :cond_0
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    .line 1017
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$shape$DrShapeType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1029
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    :pswitch_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$updateExtraHandleAtIndex$0(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;I)V
    .locals 1

    .line 915
    invoke-virtual {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->getExtraHandleCenterPointAtIndex_(I)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setCenterPoint(Landroid/graphics/PointF;)V

    .line 916
    invoke-virtual {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->getExtraHandleEnablementAtIndex_(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$updateExtraHandles$1(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V
    .locals 1

    const/4 v0, 0x0

    .line 941
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setVisible(Z)V

    return-void
.end method

.method static synthetic lambda$updateExtraHandles$2(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V
    .locals 1

    const/4 v0, 0x1

    .line 962
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setVisible(Z)V

    return-void
.end method

.method static synthetic lambda$updateExtraHandles$3(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V
    .locals 1

    const/4 v0, 0x1

    .line 992
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setVisible(Z)V

    return-void
.end method

.method public static newEmptyShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 3

    .line 1081
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->newEmptyRectBaseElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1083
    const-string v1, "T"

    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElementType;->SHAPE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-static {v1, v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    .line 1084
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->setIsSegmentalToModel(Lcom/metamoji/df/model/IModel;Z)V

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 1086
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method private static saveExtraHandlesEnablementToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1181
    :cond_0
    const-string v0, "e"

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1182
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1184
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePenStyleToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1170
    :cond_0
    const-string v0, "p"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1171
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1173
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setIsSegmentalToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1068
    :cond_0
    const-string/jumbo v0, "s"

    if-eqz p1, :cond_1

    .line 1069
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1071
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setPenStyleModelToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1052
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->checkPenStyleModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1053
    const-string v0, "p"

    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_1
    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 1055
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected activate_()V
    .locals 3

    .line 656
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->activate_()V

    .line 659
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz v0, :cond_2

    .line 661
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->checkStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 662
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->getStyleEqualsToStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 663
    instance-of v1, v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->checkPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 668
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 671
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->savePenStyleToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->applyPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    .line 681
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->useStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 684
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 686
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$shape$DrShapeType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->shapeType_()Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    .line 698
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 695
    :pswitch_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->defaultSimplePenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected applyExtraHandleCenterPointAtIndex_(ILandroid/graphics/PointF;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected applyPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected applyUnknownExtraHandleVariation_(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public applyUnknownVariation(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 277
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 281
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 284
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->applyUnknownExtraHandleVariation_(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method protected applyVariationWithTranslate_(FFFFZZFF)Z
    .locals 0

    .line 739
    invoke-super/range {p0 .. p8}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->applyVariationWithTranslate_(FFFFZZFF)Z

    move-result p1

    return p1
.end method

.method public cancelEvaluationOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V
    .locals 2

    .line 389
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 390
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 398
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 401
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result p1

    if-ltz p1, :cond_4

    .line 402
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto :goto_0

    .line 406
    :cond_3
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->cancelExtraHandleEvaluationAtIndex_(I)V

    return-void

    :cond_4
    :goto_0
    const/4 p1, 0x3

    .line 403
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    const/4 p1, 0x1

    .line 394
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method protected cancelExtraHandleEvaluationAtIndex_(I)V
    .locals 0

    return-void
.end method

.method protected checkExtraHandleMovementAtIndex_(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected checkExtraHandleVariationsEqualityAtIndex_(ILjava/util/Map;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public checkMovementOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 3

    .line 319
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 320
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 324
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 328
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 331
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result p1

    if-ltz p1, :cond_4

    .line 332
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto :goto_0

    .line 336
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->checkExtraHandleMovementAtIndex_(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x3

    .line 333
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method protected checkPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public checkVariationsEqualityOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 290
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 294
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x2

    .line 298
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_2
    const/4 v0, 0x3

    if-nez p3, :cond_3

    .line 302
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 305
    :cond_3
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    .line 306
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 309
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result p1

    if-ltz p1, :cond_6

    .line 310
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_5

    goto :goto_0

    .line 314
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->checkExtraHandleVariationsEqualityAtIndex_(ILjava/util/Map;Ljava/util/Map;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    const/4 p1, 0x4

    .line 311
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method protected coverAtIndex_(I)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 535
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->coverAtIndex_(I)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected coverCount_()I
    .locals 1

    .line 530
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->coverCount_()I

    move-result v0

    return v0
.end method

.method protected deactivate_()V
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->disuseStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V

    .line 712
    :cond_0
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->deactivate_()V

    return-void
.end method

.method protected destroy_()V
    .locals 4

    const/4 v0, 0x0

    .line 637
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 638
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 639
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 643
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    if-ge v1, v2, :cond_0

    .line 640
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    .line 641
    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setOwner(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 644
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    .line 646
    :cond_1
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->destroy_()V

    return-void
.end method

.method protected distanceToPoint_(Landroid/graphics/PointF;I)F
    .locals 0

    .line 617
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->distanceToPoint_(Landroid/graphics/PointF;I)F

    move-result p1

    return p1
.end method

.method protected distanceToSegment_(Landroid/graphics/PointF;Landroid/graphics/PointF;I)F
    .locals 0

    .line 622
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->distanceToSegment_(Landroid/graphics/PointF;Landroid/graphics/PointF;I)F

    move-result p1

    return p1
.end method

.method protected editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z
    .locals 9

    .line 576
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z

    .line 579
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v0, v2, :cond_0

    .line 602
    invoke-static {v1, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 593
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->extraHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result v0

    if-ltz v0, :cond_1

    .line 594
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 595
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->extraHandleCenterPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->applyExtraHandleCenterPointAtIndex_(ILandroid/graphics/PointF;)Z

    move-result p1

    return p1

    .line 597
    :cond_1
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_0
    return v3

    .line 584
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateX()F

    move-result v1

    .line 585
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateY()F

    move-result v2

    .line 586
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleWidth()F

    move-result v3

    .line 587
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleHeight()F

    move-result v4

    .line 588
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingX()Z

    move-result v5

    .line 589
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingY()Z

    move-result v6

    .line 590
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result v7

    .line 591
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result v8

    move-object v0, p0

    .line 584
    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->applyVariationWithTranslate_(FFFFZZFF)Z

    move-result p1

    return p1
.end method

.method protected editWithExtraHandleVariationAlways_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public editWithHandleVariationAlways()Z
    .locals 2

    .line 433
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 434
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->editWithExtraHandleVariationAlways_()Z

    move-result v0

    return v0
.end method

.method public evaluateCenterPointOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 367
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 368
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p2

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 376
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p2

    .line 379
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result p1

    if-ltz p1, :cond_4

    .line 380
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto :goto_0

    .line 384
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->evaluateExtraHandleCenterPointAtIndex_(ILandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x3

    .line 381
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p2

    :cond_5
    :goto_1
    const/4 p1, 0x1

    .line 372
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p2
.end method

.method protected evaluateExtraHandleCenterPointAtIndex_(ILandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    return-object p2
.end method

.method protected frameRect_()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 717
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->frameRect_()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method public getCenterPointOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Ljava/util/Map;)Landroid/graphics/PointF;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 341
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 342
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 343
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 346
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 347
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x2

    .line 350
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 351
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    const/4 p1, 0x3

    .line 354
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 355
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 357
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result p1

    if-ltz p1, :cond_5

    .line 358
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_4

    goto :goto_0

    .line 362
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->getExtraHandleCenterPointAtIndex_(ILjava/util/Map;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const/4 p1, 0x4

    .line 359
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 360
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected getDisplayAngleForExtraHandleAtIndex_(ILandroid/graphics/PointF;)F
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public getDisplayAngleForHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;)F
    .locals 3

    .line 411
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 412
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 420
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 423
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result p1

    if-ltz p1, :cond_4

    .line 424
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto :goto_0

    .line 428
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->getDisplayAngleForExtraHandleAtIndex_(ILandroid/graphics/PointF;)F

    move-result p1

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x3

    .line 425
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_5
    :goto_1
    const/4 p1, 0x1

    .line 416
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1
.end method

.method protected getExtraHandleCenterPointAtIndex_(I)Landroid/graphics/PointF;
    .locals 0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 792
    invoke-static {p1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected getExtraHandleCenterPointAtIndex_(ILjava/util/Map;)Landroid/graphics/PointF;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 796
    invoke-static {p1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected getExtraHandleCount_()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getExtraHandleEnablementAtIndex_(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getExtraHandleVariationAtIndex_(I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getExtraHandleVariationAtIndex_(ILandroid/graphics/PointF;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHandleAtIndex(I)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;
    .locals 2

    .line 166
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 167
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-object v1

    .line 173
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    return-object v1

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    return-object p1
.end method

.method public getHandleCount()I
    .locals 2

    .line 154
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 155
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 158
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandlesEnablement:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method protected getIndexOfExtraHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)I
    .locals 0

    .line 896
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->getIndexOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)I

    move-result p1

    return p1
.end method

.method public getIndexOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)I
    .locals 4

    .line 181
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 182
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 186
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 190
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 193
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result v0

    if-ltz v0, :cond_5

    .line 194
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    goto :goto_0

    .line 198
    :cond_3
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0

    :cond_5
    :goto_0
    const/4 p1, 0x3

    .line 195
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method public getVariationOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 207
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 211
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 215
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 218
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result p1

    if-ltz p1, :cond_4

    .line 219
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto :goto_0

    .line 223
    :cond_3
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->getExtraHandleVariationAtIndex_(I)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x3

    .line 220
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1
.end method

.method public getVariationOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 229
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 233
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 237
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 240
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result p1

    if-ltz p1, :cond_4

    .line 241
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->getExtraHandleVariationAtIndex_(ILandroid/graphics/PointF;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x3

    .line 242
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1
.end method

.method public handlesEnablement()Z
    .locals 2

    .line 442
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 443
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 446
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandlesEnablement:Z

    return v0
.end method

.method protected highlightFramePadding_()F
    .locals 1

    .line 761
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->shapeFramePadding:F

    return v0
.end method

.method protected highlightFrameStyle_()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 1

    .line 756
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->defaultShapeFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    return-object v0
.end method

.method protected highlightRectWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;Lcom/metamoji/cm/RectEx;F)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 751
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->highlightRectWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;Lcom/metamoji/cm/RectEx;F)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V
    .locals 0

    .line 612
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    return-void
.end method

.method protected initWithTranslate_(FFFFZZFF)Z
    .locals 0

    const/4 p1, 0x1

    .line 475
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandlesEnablement:Z

    .line 478
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 480
    const-string p2, "p"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 483
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->getStyleByModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    .line 486
    instance-of p2, p3, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz p2, :cond_0

    .line 487
    check-cast p3, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    iput-object p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 490
    invoke-static {p2, p4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->savePenStyleToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    goto :goto_0

    .line 495
    :cond_1
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->restoreStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 496
    instance-of p3, p2, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz p3, :cond_2

    .line 497
    check-cast p2, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 500
    invoke-virtual {p2, p4}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_0

    .line 503
    :cond_2
    invoke-static {p1, p4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->savePenStyleToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 509
    :goto_0
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->checkPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x2

    .line 510
    invoke-static {p2, p4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 511
    iput-object p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 512
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->savePenStyleToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 517
    :cond_3
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandlesEnablement:Z

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    const-string p4, "e"

    invoke-static {p4, p2, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandlesEnablement:Z

    :cond_4
    return p1
.end method

.method protected isErasable_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFillable()Z
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isFillable_()Z

    move-result v0

    return v0
.end method

.method protected isFillable_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isMovable_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isResizable_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isReversible_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isRotatable_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSegmental()Z
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isSegmental_()Z

    move-result v0

    return v0
.end method

.method protected isSegmental_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isSelectable_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected minScaleHeight_()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected minScaleWidth_()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    return-object v0
.end method

.method protected repaintHighlightAlways_()Z
    .locals 1

    .line 540
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->repaintHighlightAlways_()Z

    move-result v0

    return v0
.end method

.method protected repaint_()V
    .locals 0

    .line 651
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->repaint_()V

    return-void
.end method

.method protected samplePointAtIndex_(I)Landroid/graphics/PointF;
    .locals 0

    .line 632
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->samplePointAtIndex_(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected samplePointCount_()I
    .locals 1

    .line 627
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->samplePointCount_()I

    move-result v0

    return v0
.end method

.method protected setExtraHandleVariationAtIndex_(ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public setHandlesEnablement(Z)V
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 451
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 454
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandlesEnablement:Z

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 457
    :cond_1
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandlesEnablement:Z

    .line 458
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandlesEnablement:Z

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->saveExtraHandlesEnablementToModel(Lcom/metamoji/df/model/IModel;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 87
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->checkPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 93
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 101
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->updatePenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->applyPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isActive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->updateCovers()V

    .line 108
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->repaint_()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setVariationOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 251
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 255
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x2

    .line 259
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    const/4 p1, 0x3

    .line 263
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 266
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result p1

    if-ltz p1, :cond_5

    .line 267
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_4

    goto :goto_0

    .line 271
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->setExtraHandleVariationAtIndex_(ILjava/util/Map;)V

    return-void

    :cond_5
    :goto_0
    const/4 p1, 0x4

    .line 268
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public shapeType()Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 70
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->NONE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->shapeType_()Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    move-result-object v0

    return-object v0
.end method

.method protected shapeType_()Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;
    .locals 1

    .line 768
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->NONE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    return-object v0
.end method

.method protected type_()Lcom/metamoji/un/draw2/module/element/DrElementType;
    .locals 1

    .line 525
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->SHAPE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    return-object v0
.end method

.method protected updateExtraHandleAtIndex(I)V
    .locals 2

    .line 907
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    .line 914
    new-instance v1, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;I)V

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 908
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method protected updateExtraHandles()V
    .locals 7

    .line 923
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElementWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 925
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 926
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v0

    .line 929
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->extraHandleCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 939
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    .line 941
    new-instance v4, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    .line 945
    :cond_3
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    if-eqz v0, :cond_4

    .line 948
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    .line 949
    invoke-virtual {v0, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->removeExtraHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V

    goto :goto_1

    .line 954
    :cond_4
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 958
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->getExtraHandleCount_()I

    move-result v4

    if-nez v4, :cond_6

    .line 960
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    .line 962
    new-instance v1, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 968
    :cond_6
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    if-nez v1, :cond_7

    .line 969
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    .line 973
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->rubberBandExtraHandleImage:Landroid/graphics/Bitmap;

    :goto_2
    if-ge v2, v4, :cond_9

    .line 977
    new-instance v5, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    invoke-direct {v5, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;-><init>(Landroid/graphics/Bitmap;)V

    .line 978
    invoke-virtual {p0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->getExtraHandleCenterPointAtIndex_(I)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setCenterPoint(Landroid/graphics/PointF;)V

    .line 979
    invoke-virtual {p0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->getExtraHandleEnablementAtIndex_(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 980
    invoke-virtual {v5, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setUid(I)V

    .line 981
    invoke-virtual {v5, p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setOwner(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;)V

    .line 982
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_8

    .line 987
    invoke-virtual {v0, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->addExtraHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    if-eqz v3, :cond_a

    .line 992
    new-instance v1, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    :cond_a
    return-void
.end method

.method protected updatePenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 3

    .line 854
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 859
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 861
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->getStyleEqualsToStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 862
    instance-of v2, v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz v2, :cond_1

    .line 863
    move-object p1, v0

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 865
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    if-eqz v0, :cond_3

    .line 871
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->disuseStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 876
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->useStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V

    .line 881
    :cond_4
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 884
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 885
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->savePenStyleToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    :cond_5
    const/4 p1, 0x1

    return p1
.end method
