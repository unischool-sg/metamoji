.class public Lcom/metamoji/ui/TextUnitView;
.super Landroid/view/View;
.source "TextUnitView.java"

# interfaces
.implements Lcom/metamoji/un/text/IUnTextUnitDelegate;


# instance fields
.field private _fontSize:F

.field private _textModel:Lcom/metamoji/un/text/model/TextModel;

.field private _textSprite:Lcom/metamoji/un/text/sprite/TextSprite;


# direct methods
.method static bridge synthetic -$$Nest$fget_fontSize(Lcom/metamoji/ui/TextUnitView;)F
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/TextUnitView;->_fontSize:F

    return p0
.end method

.method static bridge synthetic -$$Nest$mcopy(Lcom/metamoji/ui/TextUnitView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitView;->copy()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/TextUnitView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/TextUnitView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/TextUnitView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private copy()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitView;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/un/text/ClipboardUtils;->copy(Lcom/metamoji/un/text/model/TextModel;Lcom/metamoji/un/text/model/TextRange;)V

    return-void
.end method

.method public static createTextModelForChat(Ljava/lang/String;)Lcom/metamoji/un/text/model/TextModel;
    .locals 3

    .line 174
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 176
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    .line 180
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getTextUnitSettings()Lcom/metamoji/un/text/IUnTextSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/metamoji/un/text/UnTextUnit;->createNewTextModelFromPlainText(Ljava/lang/String;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/un/text/IUnTextSettings;Z)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/model/TextModel;

    .line 183
    new-instance v0, Lcom/metamoji/ui/TextUnitView$3;

    invoke-direct {v0}, Lcom/metamoji/ui/TextUnitView$3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;)V

    .line 193
    iput-boolean v2, p0, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 72
    sget-object v0, Lcom/metamoji/noteanytime/R$styleable;->TextUnitView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->TextUnitView_fontSize:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/metamoji/ui/TextUnitView;->_fontSize:F

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/TextUnitView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public adjustWidthInsidePaper(F)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public appearContextMenu()V
    .locals 4

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    const/4 v2, 0x0

    sget v3, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Copy:I

    invoke-direct {v1, v2, v2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Lcom/metamoji/ui/TextUnitView$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/TextUnitView$2;-><init>(Lcom/metamoji/ui/TextUnitView;)V

    .line 162
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 163
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/TextUnitView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 164
    invoke-static {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method public applyBackgroundColorToMazec()V
    .locals 0

    return-void
.end method

.method public changedTextModelModified(Z)V
    .locals 0

    return-void
.end method

.method public changedUnitStyle(Lcom/metamoji/un/text/model/UnitStyles;)V
    .locals 0

    return-void
.end method

.method public checkSpellingAt(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/cm/IAction1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/TextPosition;",
            "Lcom/metamoji/cm/IAction1<",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public checkUnitMinSize(Lcom/metamoji/cm/SizeF;)V
    .locals 2

    .line 218
    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 219
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitView;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    const-string v1, "height"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;I)V

    .line 220
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitView;->_textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/sprite/TextSprite;->setHeight(F)V

    .line 221
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitView;->requestLayout()V

    return-void
.end method

.method public checkUnitMinSizeOnInit(Lcom/metamoji/cm/SizeF;)V
    .locals 2

    .line 227
    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 228
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitView;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    const-string v1, "height"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public delayShareSendTextUnitDataAfterUndoOrRedo(Z)V
    .locals 0

    return-void
.end method

.method public didEndMakingLineTable()V
    .locals 0

    return-void
.end method

.method public getGeometricUndoOrRedo(Lcom/metamoji/df/controller/GeometricProps;)Lcom/metamoji/df/controller/GeometricProps;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHotSpotLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnitFilterColor()Lcom/metamoji/un/text/model/ColorComponent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasTag(Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hideSelectionModifierCursorController()V
    .locals 0

    return-void
.end method

.method public isVisibleHotSpots()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitView;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    if-nez v0, :cond_0

    .line 143
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 147
    :cond_0
    new-instance v0, Lcom/metamoji/df/sprite/CanvasContext;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/CanvasContext;-><init>()V

    .line 148
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/CanvasContext;->setCanvas(Landroid/graphics/Canvas;)V

    .line 149
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitView;->_textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/sprite/TextSprite;->paint(Lcom/metamoji/df/sprite/Context;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 111
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitView;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    if-eqz v1, :cond_3

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v1, v0, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 124
    iget-object p2, p0, Lcom/metamoji/ui/TextUnitView;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getUnitWidth()F

    move-result p2

    int-to-float v0, p1

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_1

    .line 125
    iget-object p2, p0, Lcom/metamoji/ui/TextUnitView;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    const-string/jumbo v0, "width"

    invoke-virtual {p2, v0, p1}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;I)V

    .line 126
    iget-object p2, p0, Lcom/metamoji/ui/TextUnitView;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;Z)V

    .line 127
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitView;->invalidate()V

    .line 129
    :cond_1
    iget-object p2, p0, Lcom/metamoji/ui/TextUnitView;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getUnitHeight()F

    move-result p2

    float-to-int p2, p2

    .line 131
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 133
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitView;->_textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/sprite/TextSprite;->setWidth(F)V

    .line 134
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitView;->_textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    if-eqz p1, :cond_2

    int-to-float v1, p2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/sprite/TextSprite;->setHeight(F)V

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/TextUnitView;->setMeasuredDimension(II)V

    return-void

    .line 114
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/metamoji/ui/TextUnitView;->getDefaultSize(II)I

    move-result p1

    .line 115
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/metamoji/ui/TextUnitView;->getDefaultSize(II)I

    move-result p2

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/TextUnitView;->setMeasuredDimension(II)V

    return-void
.end method

.method public overrideAttributesByStyleBar(Lcom/metamoji/un/text/model/attr/Attributes;)Lcom/metamoji/un/text/model/attr/Attributes;
    .locals 0

    return-object p1
.end method

.method public remakeLineTableAfter()V
    .locals 0

    return-void
.end method

.method public remakeLineTableBefore()V
    .locals 0

    return-void
.end method

.method public removeSpellErrorLocations(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 0

    return-void
.end method

.method public setGeometricUndoOrRedo(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/model/IModel;ZZ)V
    .locals 0

    return-void
.end method

.method public setHotSpotLocations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setNeedsDisplay()V
    .locals 0

    return-void
.end method

.method public setNeedsDisplayFrom(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 0

    return-void
.end method

.method public setTextModel(Lcom/metamoji/un/text/model/TextModel;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitView;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 87
    iput-object v1, v0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    .line 92
    :cond_0
    const-string/jumbo v0, "width"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;I)V

    .line 94
    iput-object p1, p0, Lcom/metamoji/ui/TextUnitView;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    .line 95
    iput-boolean v1, p1, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    const/4 p1, 0x0

    .line 96
    iget v0, p0, Lcom/metamoji/ui/TextUnitView;->_fontSize:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 97
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitView;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    new-instance v0, Lcom/metamoji/ui/TextUnitView$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/TextUnitView$1;-><init>(Lcom/metamoji/ui/TextUnitView;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;Z)V

    .line 101
    :cond_1
    new-instance p1, Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-direct {p1}, Lcom/metamoji/un/text/sprite/TextSprite;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/TextUnitView;->_textSprite:Lcom/metamoji/un/text/sprite/TextSprite;

    .line 102
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitView;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/sprite/TextSprite;->setTextModel(Lcom/metamoji/un/text/model/TextModel;)V

    .line 104
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitView;->_textModel:Lcom/metamoji/un/text/model/TextModel;

    iput-object p0, p1, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    .line 106
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitView;->requestLayout()V

    return-void
.end method

.method public setUnitNoDropShadowUndoOrRedo(Z)V
    .locals 0

    return-void
.end method

.method public setUnitNotDelWhenEmptyUndoOrRedo(Z)V
    .locals 0

    return-void
.end method

.method public shareSendTextUnitData()V
    .locals 0

    return-void
.end method

.method public transcribeUnitBorderStyle(Lcom/metamoji/un/text/model/UnitBorderStyle;)Lcom/metamoji/un/text/model/UnitBorderStyle;
    .locals 0

    return-object p1
.end method

.method public updateCursorControlerPositions()V
    .locals 0

    return-void
.end method
