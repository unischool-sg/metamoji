.class Lcom/metamoji/un/text/UnTextUnit$52;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->addTextUnitForLabel(Lcom/metamoji/cm/CmContext;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Lcom/metamoji/cm/CmContext;

.field final synthetic val$editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$labelColor:I

.field final synthetic val$noteController:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;ILcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtEditorWindowController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12394
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$52;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    iput p2, p0, Lcom/metamoji/un/text/UnTextUnit$52;->val$labelColor:I

    iput-object p3, p0, Lcom/metamoji/un/text/UnTextUnit$52;->val$context:Lcom/metamoji/cm/CmContext;

    iput-object p4, p0, Lcom/metamoji/un/text/UnTextUnit$52;->val$editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 12398
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$52;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$52;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getTextUnitSettings()Lcom/metamoji/un/text/IUnTextSettings;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->createNewTextModel(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/un/text/IUnTextSettings;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/TextModel;

    .line 12400
    sget-boolean v1, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 12401
    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/TextModel;->setVerticalWriting(Z)V

    .line 12403
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v1

    .line 12406
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v3

    .line 12407
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v4

    sget-object v5, Lcom/metamoji/nt/NtLocale;->ja:Lcom/metamoji/nt/NtLocale;

    if-ne v4, v5, :cond_1

    .line 12409
    const-string v3, "UDDigiKyokasho ProN"

    .line 12411
    :cond_1
    iput-object v3, v1, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    .line 12414
    iget v3, p0, Lcom/metamoji/un/text/UnTextUnit$52;->val$labelColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    const/16 v3, 0xff

    .line 12417
    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    .line 12420
    sget-object v3, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style5:Lcom/metamoji/un/text/model/UnitBorderStyle;

    iput-object v3, v1, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 12424
    new-instance v3, Lcom/metamoji/cm/EdgeInsets;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v3, v4, v4, v4, v4}, Lcom/metamoji/cm/EdgeInsets;-><init>(FFFF)V

    iput-object v3, v1, Lcom/metamoji/un/text/model/UnitStyles;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    .line 12426
    new-instance v3, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v6, 0x41200000    # 10.0f

    .line 12433
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    const v7, 0x3f99999a    # 1.2f

    .line 12434
    invoke-static {v3, v7}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$smgetMinSizeWithFont(Landroid/graphics/Paint;F)Lcom/metamoji/cm/SizeF;

    move-result-object v3

    .line 12437
    iget v8, v3, Lcom/metamoji/cm/SizeF;->width:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    float-to-double v10, v8

    const-string/jumbo v8, "width"

    invoke-virtual {v0, v8, v10, v11}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 12438
    iget v8, v3, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr v8, v9

    iget v3, v3, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr v3, v4

    add-float/2addr v8, v3

    float-to-double v3, v8

    const-string v8, "height"

    invoke-virtual {v0, v8, v3, v4}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 12441
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    .line 12444
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    .line 12447
    sget-object v3, Lcom/metamoji/un/text/model/RuledLineStyle;->None:Lcom/metamoji/un/text/model/RuledLineStyle;

    iput-object v3, v1, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 12449
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;)V

    .line 12450
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$52;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 12452
    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit$52;->val$context:Lcom/metamoji/cm/CmContext;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 12454
    new-instance v3, Landroid/graphics/PointF;

    const/high16 v6, 0x420c0000    # 35.0f

    const/high16 v7, 0x428c0000    # 70.0f

    invoke-direct {v3, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 12455
    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/metamoji/un/text/UnTextUnit$52;->val$editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v7}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v7

    invoke-interface {v7}, Lcom/metamoji/nt/INtEditor;->getTopAppBarHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v3, Landroid/graphics/PointF;->y:F

    .line 12457
    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetX()F

    move-result v7

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetY()F

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 12458
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getZoom()F

    move-result v7

    .line 12459
    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget v9, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v9, v7

    add-float/2addr v8, v9

    iput v8, v3, Landroid/graphics/PointF;->x:F

    .line 12460
    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    div-float/2addr v8, v7

    add-float/2addr v6, v8

    iput v6, v3, Landroid/graphics/PointF;->y:F

    .line 12462
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v6

    .line 12463
    invoke-virtual {v6, v3}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 12466
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 12469
    iget v6, v3, Landroid/graphics/PointF;->x:F

    const/high16 v7, 0x41a00000    # 20.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 12470
    iput v7, v3, Landroid/graphics/PointF;->x:F

    .line 12472
    :cond_2
    iget v6, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .line 12473
    iput v7, v3, Landroid/graphics/PointF;->y:F

    .line 12477
    :cond_3
    iget-object v6, p0, Lcom/metamoji/un/text/UnTextUnit$52;->val$context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {v6, v4, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 12480
    :cond_4
    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit$52;->val$context:Lcom/metamoji/cm/CmContext;

    const-string/jumbo v4, "tapPos"

    sget-object v6, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->LEFTTOP:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {v3, v4, v6}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12484
    :goto_0
    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit$52;->val$context:Lcom/metamoji/cm/CmContext;

    const-string/jumbo v4, "toFocus"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12486
    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit$52;->val$context:Lcom/metamoji/cm/CmContext;

    const-string/jumbo v4, "toSelect"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12488
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 12490
    instance-of v2, v1, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    if-eqz v2, :cond_5

    .line 12491
    check-cast v1, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    .line 12492
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit$52;->val$context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->addUnit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/CmContext;)V

    :cond_5
    return-void
.end method
