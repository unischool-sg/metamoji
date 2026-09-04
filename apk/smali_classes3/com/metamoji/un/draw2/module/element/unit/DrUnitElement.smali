.class public Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;
.super Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;
.source "DrUnitElement.java"


# static fields
.field public static final MODEL_PROPERTY_UNIT_MODEL:Ljava/lang/String; = "u"


# instance fields
.field private m_framePath:Landroid/graphics/Path;

.field private m_unit:Lcom/metamoji/nt/NtUnitController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;-><init>()V

    return-void
.end method

.method public static checkUnitElementModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 414
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->checkRectBaseElementModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->getTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object p0

    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getUnitModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 426
    :cond_0
    const-string/jumbo v0, "u"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static newEmptyUnitElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 435
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->newEmptyRectBaseElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 437
    const-string v0, "T"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 439
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method public static newUnitElementModelWithUnitModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 448
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->newEmptyUnitElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 454
    const-string/jumbo v0, "u"

    invoke-static {v0, p0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-object v1

    :cond_1
    const/4 p0, 0x1

    .line 456
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 449
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0
.end method

.method public static newUnitElementWithFamily(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;
    .locals 1

    if-eqz p0, :cond_0

    .line 467
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->newEmptyUnitElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 468
    :goto_0
    new-instance v0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    return-object p0
.end method

.method private static saveUnitToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtUnitController;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 490
    :cond_0
    const-string/jumbo v0, "u"

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->model(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 491
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->model(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 493
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private updateFramePath()V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_framePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 476
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_framePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->leftTop()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->leftTop()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 477
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_framePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rightTop()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rightTop()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 478
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_framePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rightBottom()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rightBottom()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 479
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_framePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->leftBottom()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->leftBottom()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 480
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_framePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method protected activate_()V
    .locals 5

    .line 340
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->activate_()V

    .line 342
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->rect(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectEqualToRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->angleInRadians()F

    move-result v3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->contentScale()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->notifyUnit(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/cm/RectEx;FF)V

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->registerUnit(Lcom/metamoji/nt/NtUnitController;)V

    :cond_1
    return-void
.end method

.method protected applyVariationWithTranslate_(FFFFZZFF)Z
    .locals 0

    .line 380
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->updateFramePath()V

    .line 383
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object p3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->angleInRadians()F

    move-result p4

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->contentScale()F

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->notifyUnit(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/cm/RectEx;FF)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected coverAtIndex_(I)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 202
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected coverCount_()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected deactivate_()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->unregisterUnit(Lcom/metamoji/nt/NtUnitController;)V

    .line 362
    :cond_0
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->deactivate_()V

    return-void
.end method

.method protected destroy_()V
    .locals 3

    .line 314
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->parent(Lcom/metamoji/df/sprite/Sprite;)Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->removeChildren(Lcom/metamoji/df/sprite/Sprite;)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 318
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->isDeallocating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->destroyUnit(Lcom/metamoji/nt/NtUnitController;)V

    .line 321
    :cond_1
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    .line 323
    :cond_2
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_framePath:Landroid/graphics/Path;

    .line 324
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->destroy_()V

    return-void
.end method

.method protected distanceToPoint_(Landroid/graphics/PointF;I)F
    .locals 3

    .line 292
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_framePath:Landroid/graphics/Path;

    invoke-static {p2, p1}, Lcom/metamoji/df/sprite/PathUtil;->fillContainsPoint(Landroid/graphics/Path;Landroid/graphics/PointF;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->leftTop()Landroid/graphics/PointF;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rightTop()Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p2

    .line 296
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rightTop()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rightBottom()Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 295
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 297
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rightBottom()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->leftBottom()Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 298
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->leftBottom()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->leftTop()Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 297
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 295
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method protected distanceToSegment_(Landroid/graphics/PointF;Landroid/graphics/PointF;I)F
    .locals 3

    .line 303
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_framePath:Landroid/graphics/Path;

    invoke-static {p3, p1}, Lcom/metamoji/df/sprite/PathUtil;->fillContainsPoint(Landroid/graphics/Path;Landroid/graphics/PointF;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_framePath:Landroid/graphics/Path;

    invoke-static {p3, p2}, Lcom/metamoji/df/sprite/PathUtil;->fillContainsPoint(Landroid/graphics/Path;Landroid/graphics/PointF;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->leftTop()Landroid/graphics/PointF;

    move-result-object p3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rightTop()Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p3, v0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p3

    .line 307
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rightTop()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rightBottom()Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 306
    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 308
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rightBottom()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->leftBottom()Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 309
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->leftBottom()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->leftTop()Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v1, v2, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 308
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 306
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z
    .locals 4

    .line 268
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z

    .line 271
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->updateFramePath()V

    .line 274
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->angleInRadians()F

    move-result v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->contentScale()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->notifyUnit(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/cm/RectEx;FF)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected frameRect_()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 367
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->frameRect_()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method protected highlightFramePadding_()F
    .locals 1

    .line 404
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->unitFramePadding:F

    return v0
.end method

.method protected highlightFrameStyle_()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 4

    .line 397
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->defaultUnitFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    const/4 v1, 0x1

    .line 398
    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->highlightBaseColor()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillColors(Ljava/util/List;)V

    return-object v0
.end method

.method protected highlightRectWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;Lcom/metamoji/cm/RectEx;F)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 392
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->highlightRectWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;Lcom/metamoji/cm/RectEx;F)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V
    .locals 0

    .line 287
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    return-void
.end method

.method protected initWithTranslate_(FFFFZZFF)Z
    .locals 0

    .line 140
    new-instance p5, Landroid/graphics/Path;

    invoke-direct {p5}, Landroid/graphics/Path;-><init>()V

    iput-object p5, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_framePath:Landroid/graphics/Path;

    .line 143
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p5

    if-eqz p5, :cond_5

    .line 145
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p5

    invoke-static {p5}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->getUnitModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p5

    if-eqz p5, :cond_5

    .line 148
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p6

    invoke-virtual {p6, p5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->createUnitByModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtUnitController;

    move-result-object p5

    iput-object p5, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    if-eqz p5, :cond_4

    .line 151
    invoke-static {p5}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->contentScale(Lcom/metamoji/nt/NtUnitController;)F

    move-result p5

    mul-float/2addr p5, p8

    .line 152
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->contentScale()F

    move-result p6

    cmpl-float p6, p5, p6

    if-eqz p6, :cond_0

    .line 153
    invoke-virtual {p0, p5}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->updateContentScale(F)V

    .line 157
    :cond_0
    iget-object p5, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    invoke-static {p5}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->angleInDegrees(Lcom/metamoji/nt/NtUnitController;)F

    move-result p5

    add-float/2addr p5, p7

    invoke-static {p5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result p5

    .line 158
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->angleInDegrees()F

    move-result p6

    cmpl-float p6, p5, p6

    if-eqz p6, :cond_1

    .line 159
    invoke-virtual {p0, p5}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->updateAngleInDegrees(F)V

    .line 163
    :cond_1
    iget-object p5, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    invoke-static {p5}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->rect(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/cm/RectEx;

    move-result-object p5

    .line 164
    iget p6, p5, Lcom/metamoji/cm/RectEx;->x:F

    add-float/2addr p6, p1

    iput p6, p5, Lcom/metamoji/cm/RectEx;->x:F

    .line 165
    iget p6, p5, Lcom/metamoji/cm/RectEx;->y:F

    add-float/2addr p6, p2

    iput p6, p5, Lcom/metamoji/cm/RectEx;->y:F

    .line 166
    iget p6, p5, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr p6, p3

    iput p6, p5, Lcom/metamoji/cm/RectEx;->width:F

    .line 167
    iget p6, p5, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr p6, p4

    iput p6, p5, Lcom/metamoji/cm/RectEx;->height:F

    .line 168
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object p6

    invoke-static {p5, p6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectEqualToRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Z

    move-result p6

    if-nez p6, :cond_2

    .line 169
    invoke-virtual {p0, p5}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->updateRect(Lcom/metamoji/cm/RectEx;)V

    :cond_2
    const/4 p5, 0x0

    cmpl-float p1, p1, p5

    if-nez p1, :cond_3

    cmpl-float p1, p2, p5

    if-nez p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p2, p3, p1

    if-nez p2, :cond_3

    cmpl-float p2, p4, p1

    if-nez p2, :cond_3

    cmpl-float p2, p7, p5

    if-nez p2, :cond_3

    cmpl-float p1, p8, p1

    if-eqz p1, :cond_5

    .line 174
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object p3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->angleInRadians()F

    move-result p4

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->contentScale()F

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->notifyUnit(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/cm/RectEx;FF)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 177
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 183
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    if-eqz p1, :cond_6

    .line 184
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->updateFramePath()V

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method protected isErasable_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->focusable(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    return v0

    :cond_0
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

.method protected isSelectable_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected noFocusing_()Z
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->noFocusing(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected noResizingX_()Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->noResizingX(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected noResizingY_()Z
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->noResizingY(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected noResizing_()Z
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->noResizing(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected noRotating_()Z
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->noRotating(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected repaintHighlightAlways_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected repaint_()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->sprite(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->parent(Lcom/metamoji/df/sprite/Sprite;)Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->addChild(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/df/sprite/Sprite;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRect(Lcom/metamoji/cm/RectEx;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 128
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public setUnit(Lcom/metamoji/nt/NtUnitController;)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 63
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 67
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 71
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 74
    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->checkUnit(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p1, 0x3

    .line 75
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 81
    :cond_4
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    .line 84
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->contentScale(Lcom/metamoji/nt/NtUnitController;)F

    move-result p1

    .line 85
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->contentScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_5

    .line 86
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->updateContentScale(F)V

    .line 90
    :cond_5
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->angleInDegrees(Lcom/metamoji/nt/NtUnitController;)F

    move-result p1

    .line 91
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->angleInDegrees()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_6

    .line 92
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->updateAngleInDegrees(F)V

    .line 96
    :cond_6
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->rect(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectEqualToRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 98
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->updateRect(Lcom/metamoji/cm/RectEx;)V

    .line 99
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->updateFramePath()V

    .line 103
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 104
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->saveUnitToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtUnitController;)V

    :cond_8
    :goto_0
    return-void
.end method

.method protected type_()Lcom/metamoji/un/draw2/module/element/DrElementType;
    .locals 1

    .line 192
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    return-object v0
.end method

.method public unit()Lcom/metamoji/nt/NtUnitController;
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    return-object v0
.end method

.method public unitId()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->m_unit:Lcom/metamoji/nt/NtUnitController;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->unitId(Lcom/metamoji/nt/NtUnitController;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
