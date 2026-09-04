.class public Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;
.super Ljava/lang/Object;
.source "DrEditInteraction.java"

# interfaces
.implements Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;
.implements Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;


# static fields
.field private static final ROTATION_ANGLE_RECT_ALPHA:F = 0.96f

.field private static final ROTATION_ANGLE_RECT_BASE_HORIZONTAL_PADDING:F = 10.0f

.field private static final ROTATION_ANGLE_RECT_BASE_VERTICAL_PADDING:F = 8.0f

.field private static final ROTATION_ANGLE_RECT_COLOR:I

.field private static final ROTATION_ANGLE_RECT_COLOR_BLUE:I = 0xad

.field private static final ROTATION_ANGLE_RECT_COLOR_GREEN:I = 0xad

.field private static final ROTATION_ANGLE_RECT_COLOR_RED:I = 0xad

.field private static final ROTATION_ANGLE_TEXT_ALPHA:F = 1.0f

.field private static final ROTATION_ANGLE_TEXT_CENTER_REGULATION_RATIO:F = 0.42f

.field private static final ROTATION_ANGLE_TEXT_COLOR:I

.field private static final ROTATION_ANGLE_TEXT_COLOR_BLUE:I = 0xff

.field private static final ROTATION_ANGLE_TEXT_COLOR_GREEN:I = 0xff

.field private static final ROTATION_ANGLE_TEXT_COLOR_RED:I = 0xff

.field private static final ROTATION_ANGLE_TEXT_FONT_NAME:Ljava/lang/String; = "sans-serif"

.field private static final ROTATION_ANGLE_TEXT_FONT_SIZE:F = 14.0f


# instance fields
.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

.field private m_displayAngleForExtraHandle:F

.field private m_displayZoom:F

.field private m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

.field private m_functionType:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

.field private m_informationLayer:Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

.field private m_isActive:Z

.field private m_noEdit:Z

.field private m_prevAngleInRadians:F

.field private m_prevCenterPointTranslateX:F

.field private m_prevCenterPointTranslateY:F

.field private m_prevScaleHeight:F

.field private m_prevScaleWidth:F

.field private m_prevTranslateX:F

.field private m_prevTranslateY:F

.field private m_rotationAngleRectHorizontalPadding:F

.field private m_rotationAngleRectObjectId:I

.field private m_rotationAngleRectVerticalPadding:F

.field private m_rotationAngleTextObjectId:I

.field private m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

.field private m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

.field private m_rubberBandLayer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

.field private m_rubberBandObjectsAreHiding:Z

.field private m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

.field private m_variationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xad

    const/16 v1, 0xff

    .line 70
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->ROTATION_ANGLE_RECT_COLOR:I

    .line 71
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->ROTATION_ANGLE_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    return-void
.end method

.method private beginTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 9

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 205
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    .line 206
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandLayer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    .line 207
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    .line 208
    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->NONE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_functionType:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    const/4 v1, 0x0

    .line 209
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    const/4 v2, 0x0

    .line 210
    iput v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevTranslateX:F

    .line 211
    iput v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevTranslateY:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 212
    iput v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevScaleWidth:F

    .line 213
    iput v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevScaleHeight:F

    .line 214
    iput v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevAngleInRadians:F

    .line 215
    iput v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevCenterPointTranslateX:F

    .line 216
    iput v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevCenterPointTranslateY:F

    .line 217
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandObjectsAreHiding:Z

    .line 218
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_informationLayer:Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    const/4 v2, -0x1

    .line 219
    iput v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rotationAngleRectObjectId:I

    .line 220
    iput v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rotationAngleTextObjectId:I

    .line 221
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v2

    iput v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_displayZoom:F

    .line 224
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionsForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    .line 225
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_b

    .line 231
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v4

    if-nez v4, :cond_1

    .line 232
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 233
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    return-void

    .line 236
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->rubberBandLayerId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    iput-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandLayer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    if-nez v4, :cond_2

    .line 238
    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 239
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    return-void

    .line 244
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 245
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 246
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setOwner(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;)V

    goto :goto_0

    .line 248
    :cond_3
    invoke-static {v6, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_4
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandLayer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    invoke-virtual {v4, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    if-nez v4, :cond_7

    .line 257
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v4

    iget v4, v4, Lcom/metamoji/un/draw2/module/DrModuleSettings;->hitTestMargin:F

    iget v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_displayZoom:F

    div-float/2addr v4, v5

    .line 258
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->reversedList(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 259
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isActive()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 260
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v8

    if-nez v8, :cond_5

    .line 261
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isMovable()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 262
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 263
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->isActive()Z

    move-result v8

    if-nez v8, :cond_5

    .line 264
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->hitTestPoint(Landroid/graphics/PointF;F)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 265
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v7

    iput-object v7, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    .line 266
    iget-object v8, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandLayer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    invoke-virtual {v8, p1, v7}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->beginMoveActionWithTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 267
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->action()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    goto :goto_2

    .line 270
    :cond_6
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    goto :goto_1

    .line 277
    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 278
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v5

    iget-object v7, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    if-eq v5, v7, :cond_8

    .line 279
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setOwner(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;)V

    goto :goto_3

    .line 284
    :cond_9
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    if-nez v2, :cond_a

    .line 285
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandLayer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 286
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setTargetSelectionId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 287
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    return-void

    .line 292
    :cond_a
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v2

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    const/4 v4, 0x3

    if-nez v2, :cond_b

    .line 294
    invoke-static {v4, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandLayer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 296
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setOwner(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;)V

    .line 297
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setTargetSelectionId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 298
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    return-void

    .line 303
    :cond_b
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setTargetSelectionId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 306
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->handleVisibility()Z

    move-result v2

    if-nez v2, :cond_c

    .line 307
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setHandleVisibility(Z)V

    .line 309
    :cond_c
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->extraHandleVisibility()Z

    move-result v2

    if-nez v2, :cond_d

    .line 310
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setExtraHandleVisibility(Z)V

    .line 314
    :cond_d
    sget-object v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Device:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->device()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;->ordinal()I

    move-result v5

    aget v2, v2, v5

    if-eq v2, v3, :cond_e

    if-eq v2, v6, :cond_e

    .line 320
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v2, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setIgnoreTouchEndVariation(Z)V

    goto :goto_4

    .line 317
    :cond_e
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setIgnoreTouchEndVariation(Z)V

    .line 325
    :goto_4
    sget-object v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandAction$Type:[I

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->type()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->ordinal()I

    move-result v5

    aget v2, v2, v5

    if-eq v2, v3, :cond_18

    if-eq v2, v6, :cond_13

    if-eq v2, v4, :cond_10

    const/4 v5, 0x4

    if-eq v2, v5, :cond_f

    .line 383
    invoke-static {v5, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 384
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    return-void

    .line 380
    :cond_f
    sget-object v2, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->EXTRA_HANDLE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_functionType:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    goto/16 :goto_6

    .line 370
    :cond_10
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isRotatable()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->noRotating()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_5

    .line 376
    :cond_11
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->rubberBandHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getFunctionTypeOfRubberBandHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_functionType:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    goto/16 :goto_6

    .line 371
    :cond_12
    :goto_5
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    goto :goto_6

    .line 338
    :cond_13
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isResizable()Z

    move-result v2

    if-nez v2, :cond_14

    .line 339
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    goto :goto_6

    .line 344
    :cond_14
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isReversible()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setIsReversible(Z)V

    .line 347
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->rubberBandHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getFunctionTypeOfRubberBandHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_functionType:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    .line 348
    sget-object v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandHandle$FunctionType:[I

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_functionType:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->ordinal()I

    move-result v5

    aget v2, v2, v5

    if-eq v2, v3, :cond_17

    if-eq v2, v6, :cond_16

    if-eq v2, v4, :cond_15

    goto :goto_6

    .line 360
    :cond_15
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->noResizingY()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 361
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    goto :goto_6

    .line 355
    :cond_16
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->noResizingX()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 356
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    goto :goto_6

    .line 350
    :cond_17
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->noResizing()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 351
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    goto :goto_6

    .line 328
    :cond_18
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isMovable()Z

    move-result v2

    if-nez v2, :cond_19

    .line 329
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    goto :goto_6

    .line 334
    :cond_19
    sget-object v2, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->MOVE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_functionType:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    .line 389
    :cond_1a
    :goto_6
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    if-eqz v2, :cond_1b

    .line 390
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandLayer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 391
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setOwner(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;)V

    return-void

    .line 396
    :cond_1b
    sget-object v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandHandle$FunctionType:[I

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_functionType:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    goto :goto_7

    .line 409
    :pswitch_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v5

    iget v5, v5, Lcom/metamoji/un/draw2/module/DrModuleSettings;->rotationStep:I

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setRotationStep(I)V

    goto :goto_7

    .line 406
    :pswitch_1
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v2, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setRotationStep(I)V

    goto :goto_7

    .line 399
    :pswitch_2
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v2, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setKeepAspectRatio(Z)V

    goto :goto_7

    .line 403
    :pswitch_3
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setKeepAspectRatio(Z)V

    .line 416
    :goto_7
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    if-nez v2, :cond_1c

    .line 417
    new-instance v2, Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;-><init>()V

    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    .line 421
    :cond_1c
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editWithVariationAlways()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 422
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_variationMap:Ljava/util/HashMap;

    if-nez v2, :cond_1d

    .line 423
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_variationMap:Ljava/util/HashMap;

    goto :goto_8

    .line 425
    :cond_1d
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 427
    :goto_8
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 429
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v2, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElementAtOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v2

    .line 430
    sget-object v5, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v7

    aget v5, v5, v7

    if-eq v5, v3, :cond_1f

    if-eq v5, v6, :cond_1e

    goto/16 :goto_a

    .line 438
    :cond_1e
    move-object v5, v2

    check-cast v5, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 439
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 440
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleWidth()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleHeight()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingX()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingY()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 432
    :cond_1f
    move-object v5, v2

    check-cast v5, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    .line 433
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 434
    new-instance v8, Landroid/graphics/Matrix;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->transform()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-direct {v8, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :goto_9
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->angleInDegrees()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->contentScale()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_variationMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v5, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 458
    :cond_20
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->informationLayerId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_informationLayer:Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    if-eqz p1, :cond_21

    .line 460
    iget p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_displayZoom:F

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rotationAngleRectHorizontalPadding:F

    const/high16 v0, 0x41000000    # 8.0f

    div-float/2addr v0, p1

    .line 461
    iput v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rotationAngleRectVerticalPadding:F

    return-void

    :cond_21
    const/4 p1, 0x5

    .line 463
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 226
    :cond_22
    :goto_b
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 3

    .line 913
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandLayer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    if-eqz v2, :cond_2

    .line 914
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 915
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandObjectsAreHiding:Z

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setFrameVisibility(Z)V

    .line 917
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setHandleVisibility(Z)V

    .line 918
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setExtraHandleVisibility(Z)V

    .line 919
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandObjectsAreHiding:Z

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->rubberBandHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->rubberBandHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->owner()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->rubberBandHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->owner()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->rubberBandHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->cancelEvaluationOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V

    .line 924
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setOwner(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;)V

    .line 925
    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setTargetSelectionId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 927
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 928
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->repaintSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V

    :cond_3
    const/high16 p1, -0x40800000    # -1.0f

    .line 930
    invoke-direct {p0, p1, v1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->displayRotationAngle(FZ)V

    return-void
.end method

.method private displayRotationAngle(FZ)V
    .locals 32

    move-object/from16 v0, p0

    .line 935
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_informationLayer:Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 938
    :cond_0
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 939
    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    cmpg-float v5, p1, v2

    if-gez v5, :cond_4

    .line 945
    iget v2, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rotationAngleRectObjectId:I

    const/4 v3, -0x1

    if-ltz v2, :cond_2

    .line 946
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->removeObjectWithId(I)V

    .line 947
    iput v3, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rotationAngleRectObjectId:I

    .line 949
    :cond_2
    iget v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rotationAngleTextObjectId:I

    if-ltz v1, :cond_3

    .line 950
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_informationLayer:Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    invoke-virtual {v2, v1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->removeObjectWithId(I)V

    .line 951
    iput v3, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rotationAngleTextObjectId:I

    :cond_3
    :goto_0
    return-void

    .line 957
    :cond_4
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-eqz p2, :cond_5

    const/16 v5, 0xb4

    if-le v1, v5, :cond_6

    rsub-int v1, v1, 0x168

    goto :goto_1

    :cond_5
    const/16 v5, 0x168

    if-le v1, v5, :cond_6

    add-int/lit16 v1, v1, -0x168

    .line 965
    :cond_6
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "\u00b0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 968
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_informationLayer:Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    const/4 v12, 0x1

    new-array v7, v12, [Ljava/lang/String;

    aput-object v1, v7, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string/jumbo v8, "sans-serif"

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual/range {v6 .. v11}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->getSizeOfTexts([Ljava/lang/String;Ljava/lang/String;FFZ)Lcom/metamoji/cm/SizeF;

    move-result-object v6

    .line 973
    iget-object v13, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_informationLayer:Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    new-array v14, v12, [Ljava/lang/String;

    aput-object v5, v14, v4

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string/jumbo v15, "sans-serif"

    const/high16 v16, 0x41600000    # 14.0f

    invoke-virtual/range {v13 .. v18}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->getSizeOfTexts([Ljava/lang/String;Ljava/lang/String;FFZ)Lcom/metamoji/cm/SizeF;

    move-result-object v5

    .line 980
    iget v7, v6, Lcom/metamoji/cm/SizeF;->width:F

    iget v8, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rotationAngleRectHorizontalPadding:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 981
    iget v6, v6, Lcom/metamoji/cm/SizeF;->height:F

    iget v8, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rotationAngleRectVerticalPadding:F

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    cmpg-float v8, v7, v6

    if-gez v8, :cond_7

    move v7, v6

    :cond_7
    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v18, v6, v8

    .line 988
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v6

    .line 991
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 992
    iget v9, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v7, v8

    sub-float v14, v9, v7

    iget v8, v6, Landroid/graphics/PointF;->y:F

    sub-float v15, v8, v18

    iget v8, v6, Landroid/graphics/PointF;->x:F

    add-float v16, v8, v7

    iget v7, v6, Landroid/graphics/PointF;->y:F

    add-float v17, v7, v18

    sget-object v20, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v19, v18

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 999
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v3

    .line 1000
    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 1001
    sget-object v2, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    .line 1002
    new-array v2, v12, [Ljava/lang/Integer;

    sget v7, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->ROTATION_ANGLE_RECT_COLOR:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillColors(Ljava/util/List;)V

    const v2, 0x3f75c28f    # 0.96f

    .line 1003
    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillAlpha(F)V

    .line 1004
    iget v2, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rotationAngleRectObjectId:I

    .line 1007
    iget-object v7, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_informationLayer:Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    if-gez v2, :cond_8

    .line 1005
    invoke-virtual {v7, v13, v3}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->drawPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)I

    move-result v2

    iput v2, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rotationAngleRectObjectId:I

    goto :goto_2

    .line 1007
    :cond_8
    invoke-virtual {v7, v13, v3, v2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->repaintPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V

    .line 1011
    :goto_2
    iget v2, v6, Landroid/graphics/PointF;->x:F

    iget v3, v5, Lcom/metamoji/cm/SizeF;->width:F

    const v5, 0x3ed70a3d    # 0.42f

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v6, Landroid/graphics/PointF;->x:F

    .line 1014
    iget v2, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rotationAngleTextObjectId:I

    .line 1027
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_informationLayer:Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    if-gez v2, :cond_9

    .line 1015
    new-array v2, v12, [Ljava/lang/String;

    aput-object v1, v2, v4

    sget v27, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->ROTATION_ANGLE_TEXT_COLOR:I

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    const-string/jumbo v25, "sans-serif"

    const/high16 v26, 0x41600000    # 14.0f

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v20, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    invoke-virtual/range {v19 .. v30}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->drawTexts([Ljava/lang/String;Landroid/graphics/PointF;IIFLjava/lang/String;FIFIF)I

    move-result v1

    iput v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rotationAngleTextObjectId:I

    return-void

    :cond_9
    move-object/from16 v19, v3

    move-object/from16 v21, v6

    .line 1027
    new-array v3, v12, [Ljava/lang/String;

    aput-object v1, v3, v4

    sget v27, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->ROTATION_ANGLE_TEXT_COLOR:I

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    const-string/jumbo v25, "sans-serif"

    const/high16 v26, 0x41600000    # 14.0f

    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v31, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v31}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->repaintTexts([Ljava/lang/String;Landroid/graphics/PointF;IIFLjava/lang/String;FIFIFI)V

    return-void
.end method

.method private endTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 605
    iget-boolean v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandObjectsAreHiding:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setFrameVisibility(Z)V

    .line 607
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setHandleVisibility(Z)V

    .line 608
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setExtraHandleVisibility(Z)V

    .line 609
    iput-boolean v4, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandObjectsAreHiding:Z

    .line 613
    :cond_0
    iget-boolean v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    .line 615
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandLayer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 621
    :cond_1
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;-><init>()V

    iget-object v3, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;

    .line 622
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionsForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Ljava/util/List;

    move-result-object v3

    .line 623
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 624
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 625
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->hitTestPoint(Landroid/graphics/PointF;F)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 626
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->destroy()V

    goto :goto_1

    .line 630
    :cond_2
    invoke-virtual {v0, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->removeSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object v6, v0

    :goto_1
    if-eqz v6, :cond_34

    .line 633
    new-instance v0, Lcom/metamoji/un/draw2/module/command/DrCommand;

    iget-object v2, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-direct {v0, v2}, Lcom/metamoji/un/draw2/module/command/DrCommand;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    .line 634
    invoke-virtual {v0, v6}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 635
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->NORMAL:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->executeCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    return-void

    :cond_4
    const/high16 v0, -0x40800000    # -1.0f

    .line 642
    invoke-direct {v1, v0, v4}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->displayRotationAngle(FZ)V

    .line 645
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandLayer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v0

    iget-object v7, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    if-eq v0, v7, :cond_5

    .line 646
    invoke-static {v4, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 650
    :cond_5
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandAction$Type:[I

    iget-object v7, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->type()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->ordinal()I

    move-result v7

    aget v0, v0, v7

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v0, v3, :cond_e

    const/4 v9, 0x2

    if-eq v0, v9, :cond_c

    if-eq v0, v8, :cond_a

    if-eq v0, v7, :cond_6

    .line 678
    invoke-static {v9, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 661
    :cond_6
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->rubberBandHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 662
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->rubberBandHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v0

    .line 663
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->owner()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 666
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object v5

    .line 667
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget-object v11, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->translateX()F

    move-result v11

    sub-float/2addr v10, v11

    .line 668
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/PointF;->y:F

    iget-object v12, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v12}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->translateY()F

    move-result v12

    sub-float/2addr v11, v12

    .line 667
    invoke-static {v10, v11}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v10

    .line 665
    invoke-interface {v9, v0, v5, v10}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->checkMovementOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    xor-int/2addr v0, v3

    iput-boolean v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    goto/16 :goto_6

    .line 670
    :cond_7
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->translateX()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->translateY()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_8

    move v0, v3

    goto :goto_2

    :cond_8
    move v0, v4

    :goto_2
    iput-boolean v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    goto :goto_6

    .line 673
    :cond_9
    invoke-static {v3, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 674
    iput-boolean v4, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    goto :goto_6

    .line 658
    :cond_a
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->angleInRadians()F

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustRadian(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_b

    move v0, v3

    goto :goto_3

    :cond_b
    move v0, v4

    :goto_3
    iput-boolean v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    goto :goto_6

    .line 655
    :cond_c
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->scaleWidth()F

    move-result v0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v5

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->scaleHeight()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_d

    move v0, v3

    goto :goto_4

    :cond_d
    move v0, v4

    :goto_4
    iput-boolean v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    goto :goto_6

    .line 652
    :cond_e
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->translateX()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->translateY()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_f

    move v0, v3

    goto :goto_5

    :cond_f
    move v0, v4

    :goto_5
    iput-boolean v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    .line 683
    :goto_6
    iget-boolean v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    if-eqz v0, :cond_10

    .line 684
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandLayer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 687
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    iget-object v2, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v0, v2, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->repaintSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V

    return-void

    .line 693
    :cond_10
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElements()Ljava/util/List;

    move-result-object v0

    .line 696
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    .line 697
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandLayer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 698
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    iget-object v3, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    .line 699
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setTargetSelectionId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void

    .line 708
    :cond_11
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->hasLinkageTarget()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 709
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getLinkageTargetIds()Ljava/util/Set;

    move-result-object v0

    .line 710
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getLinkageFollowerIds()Ljava/util/Set;

    move-result-object v5

    .line 711
    iget-object v9, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v9

    sget-object v10, Lcom/metamoji/un/draw2/module/element/DrEditType;->EDIT_EXTRA_HANDLE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    if-ne v9, v10, :cond_16

    .line 712
    iget-object v9, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->extraHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v9

    if-eqz v9, :cond_15

    iget-object v9, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->extraHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->owner()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    move-result-object v9

    if-eqz v9, :cond_15

    iget-object v9, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->extraHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->owner()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    move-result-object v9

    instance-of v9, v9, Lcom/metamoji/un/draw2/module/element/DrElement;

    if-eqz v9, :cond_15

    .line 713
    iget-object v8, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->extraHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->owner()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    move-result-object v8

    check-cast v8, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 714
    iget-object v9, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v9

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v9

    if-ne v9, v8, :cond_14

    .line 715
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-array v0, v3, [Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    aput-object v9, v0, v4

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->setWithObjects([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_7

    :cond_12
    move-object v0, v6

    :goto_7
    if-eqz v5, :cond_16

    .line 716
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v9

    if-lez v9, :cond_16

    .line 717
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    new-array v5, v3, [Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    aput-object v8, v5, v4

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->setWithObjects([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v5

    goto :goto_8

    :cond_13
    move-object v5, v6

    goto :goto_8

    :cond_14
    move-object v0, v6

    move-object v5, v0

    goto :goto_8

    .line 724
    :cond_15
    invoke-static {v8, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move-object v9, v6

    move-object v10, v9

    goto :goto_9

    :cond_16
    :goto_8
    move-object v10, v0

    move-object v9, v5

    :goto_9
    if-eqz v10, :cond_17

    if-eqz v9, :cond_17

    .line 729
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 730
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 731
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 732
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 733
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v8

    invoke-virtual/range {v8 .. v13}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->constructInformationsForEditTargetFollowerIds(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    move-object v15, v10

    move-object/from16 v19, v11

    goto :goto_a

    :cond_17
    move-object v12, v6

    move-object v13, v12

    move-object/from16 v19, v13

    move-object v15, v10

    goto :goto_a

    :cond_18
    move-object v12, v6

    move-object v13, v12

    move-object v15, v13

    move-object/from16 v19, v15

    .line 742
    :goto_a
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    iget-object v5, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    iget-object v8, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-virtual {v0, v5, v8, v6}, Lcom/metamoji/un/draw2/module/DrModuleContext;->createEditDirectionForSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;Lcom/metamoji/un/draw2/module/element/DrEditContext;Ljava/util/Set;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v0

    if-nez v0, :cond_19

    .line 744
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandLayer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 745
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    iget-object v3, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    .line 746
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setTargetSelectionId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void

    :cond_19
    if-eqz v15, :cond_21

    .line 759
    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_21

    .line 761
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->isRegistering()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 762
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->beginRegistration()V

    move v5, v3

    goto :goto_b

    :cond_1a
    move v5, v4

    .line 767
    :goto_b
    iget-object v8, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v8

    invoke-interface {v8}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->delayEndRegistration()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 768
    iget-object v8, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v8

    invoke-interface {v8, v3}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->setDelayEndRegistration(Z)V

    move v8, v3

    goto :goto_c

    :cond_1b
    move v8, v4

    .line 773
    :goto_c
    iget-object v9, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvasQueueing()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 774
    iget-object v9, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v9, v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setCanvasQueueing(Z)V

    move v9, v3

    goto :goto_d

    :cond_1c
    move v9, v4

    .line 777
    :goto_d
    iget-object v10, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->delaySelectionUpdation()Z

    move-result v10

    if-nez v10, :cond_1d

    .line 778
    iget-object v10, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->setDelaySelectionUpdation(Z)V

    move v10, v3

    goto :goto_e

    :cond_1d
    move v10, v4

    .line 783
    :goto_e
    iget-object v11, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/DrModuleContext;->collaborationManager()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;

    move-result-object v11

    if-eqz v11, :cond_20

    iget-object v11, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/DrModuleContext;->collaborationManager()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;->senderIsPausing()Z

    move-result v11

    if-nez v11, :cond_20

    iget-object v11, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->hasUnitElement()Z

    move-result v11

    if-nez v11, :cond_1e

    iget-object v11, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->linkageFollowerUnitElementExists()Z

    move-result v11

    if-eqz v11, :cond_20

    .line 784
    :cond_1e
    iget-object v11, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/DrModuleContext;->collaborationManager()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;->pauseSender()V

    .line 785
    iget-object v11, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/DrModuleContext;->collaborationManager()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;->senderIsPausing()Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 789
    iget-object v14, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v14

    invoke-interface {v14}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->setNeedIntegrationToUndoModel()V

    .line 792
    iget-object v14, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->delayCollaborationModelDestruction()Z

    move-result v14

    if-nez v14, :cond_1f

    .line 793
    iget-object v14, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v14

    invoke-virtual {v14, v3}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setDelayCollaborationModelDestruction(Z)V

    move/from16 v21, v3

    goto :goto_10

    :cond_1f
    move/from16 v21, v4

    goto :goto_10

    :cond_20
    move v11, v4

    goto :goto_f

    :cond_21
    move v5, v4

    move v8, v5

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_f
    move/from16 v21, v11

    .line 802
    :goto_10
    iget-object v14, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v14

    invoke-interface {v14}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->isRegistering()Z

    move-result v14

    if-eqz v14, :cond_22

    iget-object v14, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v14

    invoke-interface {v14}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->delayEndRegistration()Z

    move-result v14

    if-eqz v14, :cond_22

    iget-object v14, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/DrModuleContext;->delayNotifyUnit()Z

    move-result v14

    if-nez v14, :cond_22

    .line 803
    iget-object v14, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v14, v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDelayNotifyUnit(Z)V

    move/from16 v22, v3

    goto :goto_11

    :cond_22
    move/from16 v22, v4

    .line 810
    :goto_11
    :try_start_0
    iget-object v14, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/DrModuleContext;->deupdateTargetLinkageFollowerIdsAtCommandExecution()Ljava/util/Set;

    move-result-object v14

    .line 811
    iget-object v7, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v7, v12}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDeupdateTargetLinkageFollowerIdsAtCommandExecution(Ljava/util/Set;)V

    .line 814
    iget-object v7, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/DrModuleContext;->deactivateLinkageAtEditNotificationFromUnit()Z

    move-result v7

    .line 815
    iget-object v12, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v12, v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDeactivateLinkageAtEditNotificationFromUnit(Z)V

    .line 818
    iget-object v12, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/DrModuleContext;->disableLinkageUpdateForLinkageTargetAtCommandExecution()Z

    move-result v12

    .line 819
    iget-object v4, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v4, v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDisableLinkageUpdateForLinkageTargetAtCommandExecution(Z)V

    .line 822
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    iget-object v4, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setEditContextOfInteraction(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    .line 825
    new-instance v3, Lcom/metamoji/un/draw2/module/command/DrCommand;

    iget-object v4, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-direct {v3, v4}, Lcom/metamoji/un/draw2/module/command/DrCommand;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    .line 826
    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 827
    sget-object v0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->PERMANENT:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationType(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;)V

    .line 828
    sget-object v0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->EVERYONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationTarget(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;)V

    .line 829
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    sget-object v4, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->REGISTER:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {v0, v3, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->executeCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    .line 832
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v6}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setEditContextOfInteraction(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    .line 835
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v14}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDeupdateTargetLinkageFollowerIdsAtCommandExecution(Ljava/util/Set;)V

    .line 838
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v7}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDeactivateLinkageAtEditNotificationFromUnit(Z)V

    .line 841
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v12}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDisableLinkageUpdateForLinkageTargetAtCommandExecution(Z)V

    if-eqz v13, :cond_23

    .line 844
    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 845
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 846
    iget-object v4, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->updateLinkageOfElementWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    goto :goto_12

    :cond_23
    if-eqz v15, :cond_24

    .line 851
    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 852
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x5

    :try_start_1
    sget-object v16, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->REGISTER:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    sget-object v17, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->PERMANENT:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    sget-object v18, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->EVERYONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 857
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editWithVariationAlways()Z

    move-result v20

    .line 852
    invoke-virtual/range {v14 .. v20}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->activateLinkageForTargetIds(Ljava/util/Set;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;Ljava/util/Set;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_13

    :catch_0
    move-exception v0

    goto :goto_16

    :cond_24
    const/4 v3, 0x5

    :goto_13
    if-eqz v22, :cond_25

    .line 864
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDelayNotifyUnit(Z)V

    :cond_25
    if-eqz v11, :cond_26

    .line 868
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->collaborationManager()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;->senderIsPausing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 869
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->collaborationManager()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;->resumeSender()V

    :cond_26
    if-eqz v21, :cond_27

    .line 874
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setDelayCollaborationModelDestruction(Z)V

    :cond_27
    if-eqz v5, :cond_29

    .line 879
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->isRegistering()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 880
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->endRegistration()V

    goto :goto_14

    .line 882
    :cond_28
    invoke-static {v3, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_29
    :goto_14
    if-eqz v8, :cond_2a

    .line 888
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->setDelayEndRegistration(Z)V

    goto :goto_15

    :cond_2a
    const/4 v4, 0x0

    :goto_15
    if-eqz v9, :cond_2b

    .line 893
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setCanvasQueueing(Z)V

    :cond_2b
    if-eqz v10, :cond_33

    goto :goto_19

    :catchall_0
    move-exception v0

    const/4 v3, 0x5

    goto/16 :goto_1a

    :catch_1
    move-exception v0

    const/4 v3, 0x5

    :goto_16
    const/4 v4, 0x4

    .line 860
    :try_start_2
    invoke-static {v4, v6, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v22, :cond_2c

    .line 864
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDelayNotifyUnit(Z)V

    :cond_2c
    if-eqz v11, :cond_2d

    .line 868
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->collaborationManager()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;->senderIsPausing()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 869
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->collaborationManager()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;->resumeSender()V

    :cond_2d
    if-eqz v21, :cond_2e

    .line 874
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setDelayCollaborationModelDestruction(Z)V

    :cond_2e
    if-eqz v5, :cond_30

    .line 879
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->isRegistering()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 880
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->endRegistration()V

    goto :goto_17

    .line 882
    :cond_2f
    invoke-static {v3, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_30
    :goto_17
    if-eqz v8, :cond_31

    .line 888
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->setDelayEndRegistration(Z)V

    goto :goto_18

    :cond_31
    const/4 v4, 0x0

    :goto_18
    if-eqz v9, :cond_32

    .line 893
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setCanvasQueueing(Z)V

    :cond_32
    if-eqz v10, :cond_33

    .line 896
    :goto_19
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->setDelaySelectionUpdation(Z)V

    .line 900
    :cond_33
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v6}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setEditContextOfInteraction(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    .line 904
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandLayer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 907
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 908
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    iget-object v2, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    :cond_34
    return-void

    :catchall_1
    move-exception v0

    :goto_1a
    if-eqz v22, :cond_35

    .line 864
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDelayNotifyUnit(Z)V

    :cond_35
    if-eqz v11, :cond_36

    .line 868
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->collaborationManager()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;->senderIsPausing()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 869
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->collaborationManager()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;->resumeSender()V

    :cond_36
    if-eqz v21, :cond_37

    .line 874
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setDelayCollaborationModelDestruction(Z)V

    :cond_37
    if-eqz v5, :cond_39

    .line 879
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->isRegistering()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 880
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->endRegistration()V

    goto :goto_1b

    .line 882
    :cond_38
    invoke-static {v3, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_39
    :goto_1b
    if-eqz v8, :cond_3a

    .line 888
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->setDelayEndRegistration(Z)V

    goto :goto_1c

    :cond_3a
    const/4 v4, 0x0

    :goto_1c
    if-eqz v9, :cond_3b

    .line 893
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2, v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setCanvasQueueing(Z)V

    :cond_3b
    if-eqz v10, :cond_3c

    .line 896
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->setDelaySelectionUpdation(Z)V

    .line 900
    :cond_3c
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setEditContextOfInteraction(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    .line 901
    throw v0
.end method

.method private moveTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 5

    .line 468
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_noEdit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 473
    iput v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_displayAngleForExtraHandle:F

    .line 476
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandLayer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    .line 477
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 483
    :cond_1
    sget-object p1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandHandle$FunctionType:[I

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_functionType:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 569
    :pswitch_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->translateX()F

    move-result p1

    iget v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevCenterPointTranslateX:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    .line 570
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->translateY()F

    move-result p1

    iget v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevCenterPointTranslateY:F

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 571
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->rubberBandHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->rubberBandHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->setEditExtraHandleContext(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V

    .line 574
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandObjectsAreHiding:Z

    if-nez v2, :cond_4

    .line 575
    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setFrameVisibility(Z)V

    .line 576
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setHandleVisibility(Z)V

    .line 577
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setExtraHandleVisibility(Z)V

    .line 578
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->rubberBandHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    .line 579
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandObjectsAreHiding:Z

    .line 583
    :cond_4
    iget p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_displayAngleForExtraHandle:F

    invoke-direct {p0, p1, v1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->displayRotationAngle(FZ)V

    .line 586
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->translateX()F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevCenterPointTranslateX:F

    .line 587
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->translateY()F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevCenterPointTranslateY:F

    goto/16 :goto_3

    .line 485
    :pswitch_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->translateX()F

    move-result p1

    iget v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevTranslateX:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->translateY()F

    move-result p1

    iget v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevTranslateY:F

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    return-void

    .line 486
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->translateX()F

    move-result v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->translateY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->setTranslateContext(FF)V

    .line 489
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    if-eqz p1, :cond_7

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandObjectsAreHiding:Z

    if-nez v2, :cond_7

    .line 490
    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setHandleVisibility(Z)V

    .line 491
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setExtraHandleVisibility(Z)V

    .line 492
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandObjectsAreHiding:Z

    .line 496
    :cond_7
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->translateX()F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevTranslateX:F

    .line 497
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->translateY()F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevTranslateY:F

    goto/16 :goto_3

    .line 547
    :pswitch_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->angleInRadians()F

    move-result p1

    iget v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevAngleInRadians:F

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_9

    .line 548
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->angleInRadians()F

    move-result v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->fixedPoint()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->setRotateContextWithAngleInRadians(FLandroid/graphics/PointF;)V

    .line 551
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    if-eqz p1, :cond_8

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandObjectsAreHiding:Z

    if-nez v2, :cond_8

    .line 552
    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setHandleVisibility(Z)V

    .line 553
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setExtraHandleVisibility(Z)V

    .line 554
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->rubberBandHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    .line 555
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandObjectsAreHiding:Z

    .line 559
    :cond_8
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->angleInRadians()F

    move-result p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->displayRotationAngle(FZ)V

    .line 562
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->angleInRadians()F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevAngleInRadians:F

    goto/16 :goto_3

    :cond_9
    return-void

    .line 526
    :pswitch_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->scaleWidth()F

    move-result p1

    iget v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevScaleWidth:F

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_b

    .line 527
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->scaleWidth()F

    move-result v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->fixedPoint()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->setScaleContext(FLandroid/graphics/PointF;)V

    .line 530
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    if-eqz p1, :cond_a

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandObjectsAreHiding:Z

    if-nez v2, :cond_a

    .line 531
    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setHandleVisibility(Z)V

    .line 532
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setExtraHandleVisibility(Z)V

    .line 533
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->rubberBandHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    .line 534
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandObjectsAreHiding:Z

    .line 538
    :cond_a
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->scaleWidth()F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevScaleWidth:F

    .line 539
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->scaleHeight()F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevScaleHeight:F

    goto :goto_3

    :cond_b
    return-void

    .line 506
    :pswitch_4
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->scaleWidth()F

    move-result p1

    iget v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevScaleWidth:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->scaleHeight()F

    move-result p1

    iget v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevScaleHeight:F

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_c

    goto :goto_2

    :cond_c
    return-void

    .line 507
    :cond_d
    :goto_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->scaleWidth()F

    move-result v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->scaleHeight()F

    move-result v3

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->fixedPoint()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->setResizeContext(FFLandroid/graphics/PointF;)V

    .line 510
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    if-eqz p1, :cond_e

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandObjectsAreHiding:Z

    if-nez v2, :cond_e

    .line 511
    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setHandleVisibility(Z)V

    .line 512
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setExtraHandleVisibility(Z)V

    .line 513
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->rubberBandHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    .line 514
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandObjectsAreHiding:Z

    .line 518
    :cond_e
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->scaleWidth()F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevScaleWidth:F

    .line 519
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->scaleHeight()F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_prevScaleHeight:F

    .line 599
    :goto_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->editSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public checkPermissionToTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public destroy()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_variationMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 145
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_variationMap:Ljava/util/HashMap;

    .line 147
    :cond_0
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 148
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 149
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBand:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    .line 150
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandLayer:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    .line 151
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    .line 152
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    .line 153
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_informationLayer:Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    if-eqz v0, :cond_3

    .line 154
    iget v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rotationAngleRectObjectId:I

    if-ltz v2, :cond_1

    .line 155
    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->removeObjectWithId(I)V

    .line 157
    :cond_1
    iget v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rotationAngleTextObjectId:I

    if-ltz v0, :cond_2

    .line 158
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_informationLayer:Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->removeObjectWithId(I)V

    .line 160
    :cond_2
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_informationLayer:Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    :cond_3
    return-void
.end method

.method public getPermittedPointForExtraHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 182
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->owner()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 184
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p2

    .line 187
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->evaluateCenterPointOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 190
    invoke-interface {v0, p1, p2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getDisplayAngleForHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_displayAngleForExtraHandle:F

    return-object p2
.end method

.method public handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 120
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 123
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->type()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return-void

    .line 134
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 131
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->endTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 128
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->moveTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 125
    :cond_4
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->beginTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_isActive:Z

    return v0
.end method

.method public receiveAction(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_rubberBandAction:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;

    return-void
.end method

.method public setIsActive(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->m_isActive:Z

    return-void
.end method

.method public type()Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;
    .locals 1

    .line 114
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->EDIT:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    return-object v0
.end method
