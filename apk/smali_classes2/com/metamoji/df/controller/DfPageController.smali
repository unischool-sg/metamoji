.class public Lcom/metamoji/df/controller/DfPageController;
.super Lcom/metamoji/df/controller/DfController;
.source "DfPageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/controller/DfPageController$WaType;,
        Lcom/metamoji/df/controller/DfPageController$WaStatus;,
        Lcom/metamoji/df/controller/DfPageController$ModelDef;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final FIT_HEIGHT_MARGIN:F = 1.0f

.field public static final FIT_WIDTH_MARGIN:F = 1.0f

.field public static final MIN_ZOOM_HEIGHT_MARGIN:F = 1.0f

.field static final STATUSBAR_HEIGHT:F = 144.0f


# instance fields
.field private _activated:Z

.field protected _autoPaper:I

.field private _paper:Lcom/metamoji/cm/SizeF;

.field protected _paperSprite:Lcom/metamoji/df/sprite/Sprite;

.field protected _paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

.field protected _temporaryRestored:Z


# direct methods
.method public static synthetic $r8$lambda$TeUmOnfHESsUEMwf-zdXTuL6c8I(Lcom/metamoji/df/controller/DfPageController;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->lambda$setPaperSize$1(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UPP4L9-1Wgy2fWnI-G6SR9Uq058(Lcom/metamoji/df/controller/DfPageController;Lcom/metamoji/df/controller/DfPageController$WaType;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/controller/DfPageController;->lambda$activate$0(Lcom/metamoji/df/controller/DfPageController$WaType;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/DfController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 83
    new-instance p1, Lcom/metamoji/cm/SizeF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lcom/metamoji/df/controller/DfPageController;->_temporaryRestored:Z

    const/4 p2, 0x0

    .line 85
    iput-object p2, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 86
    iput-object p2, p0, Lcom/metamoji/df/controller/DfPageController;->_paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 87
    iput-boolean p1, p0, Lcom/metamoji/df/controller/DfPageController;->_activated:Z

    .line 88
    iput p1, p0, Lcom/metamoji/df/controller/DfPageController;->_autoPaper:I

    .line 89
    iput-boolean p1, p0, Lcom/metamoji/df/controller/DfPageController;->_purged:Z

    .line 93
    invoke-direct {p0}, Lcom/metamoji/df/controller/DfPageController;->updatePaperFromModel()Z

    .line 95
    iget-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    const-string p2, "page"

    iput-object p2, p1, Lcom/metamoji/df/sprite/Sprite;->name:Ljava/lang/String;

    return-void
.end method

.method public static getPaperSizeFromModel(Lcom/metamoji/df/model/IModel;ZZ)Lcom/metamoji/cm/SizeF;
    .locals 10

    .line 661
    const-string v0, "paperWidth"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 662
    const-string v4, "paperHeight"

    invoke-interface {p0, v4, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x0

    .line 663
    const-string v5, "autoPaper"

    invoke-interface {p0, v5, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz p2, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    move v1, v3

    .line 671
    :cond_0
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v6, p2

    const-wide v8, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double p2, v6, v8

    if-ltz p2, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v6, p2

    cmpg-double p2, v6, v8

    if-gez p2, :cond_4

    .line 673
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 675
    iget v1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, p2}, Lcom/metamoji/un/form/UnFormBase;->calcPaperSize(II)Lcom/metamoji/cm/Size;

    move-result-object p2

    .line 676
    iget v1, p2, Lcom/metamoji/cm/Size;->width:I

    int-to-float v3, v1

    .line 677
    iget p2, p2, Lcom/metamoji/cm/Size;->height:I

    int-to-float v1, p2

    if-eqz p1, :cond_4

    float-to-double v6, v3

    .line 679
    invoke-interface {p0, v0, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    float-to-double v6, v1

    .line 680
    invoke-interface {p0, v4, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    const/high16 p2, 0x43520000    # 210.0f

    const/high16 v0, 0x42900000    # 72.0f

    .line 682
    invoke-static {p2, v0}, Lcom/metamoji/df/controller/DfUtility;->mm2px(FF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    const v4, 0x43948000    # 297.0f

    .line 683
    invoke-static {v4, v0}, Lcom/metamoji/df/controller/DfUtility;->mm2px(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v4, v3, v1

    if-gez v4, :cond_2

    move v6, p2

    goto :goto_0

    :cond_2
    move v6, v0

    :goto_0
    if-gez v4, :cond_3

    move p2, v0

    .line 686
    :cond_3
    const-string v0, "printWidth"

    float-to-double v6, v6

    invoke-interface {p0, v0, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 687
    const-string v0, "printHeight"

    float-to-double v6, p2

    invoke-interface {p0, v0, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    :cond_4
    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    .line 692
    invoke-interface {p0, v5}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 694
    :cond_5
    new-instance p0, Lcom/metamoji/cm/SizeF;

    invoke-direct {p0, v3, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object p0
.end method

.method private synthetic lambda$activate$0(Lcom/metamoji/df/controller/DfPageController$WaType;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 246
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/df/controller/DfPageController;->resetWorkarea(Lcom/metamoji/df/controller/DfPageController$WaType;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method private synthetic lambda$setPaperSize$1(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 954
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$WaType;->FROM_PAPERSIZE:Lcom/metamoji/df/controller/DfPageController$WaType;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/df/controller/DfPageController;->resetWorkarea(Lcom/metamoji/df/controller/DfPageController$WaType;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method private recalcWorkarea()Lcom/metamoji/df/controller/DfPageController$WaStatus;
    .locals 4

    .line 412
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$WaStatus;->STATUS_NOCHANGE:Lcom/metamoji/df/controller/DfPageController$WaStatus;

    .line 413
    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v1, Lcom/metamoji/df/controller/DfNoteController;

    .line 414
    invoke-virtual {v1}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/ThicknessF;->left:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/ThicknessF;->top:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 415
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v0

    .line 416
    iput v3, v0, Lcom/metamoji/cm/ThicknessF;->left:F

    .line 417
    iput v3, v0, Lcom/metamoji/cm/ThicknessF;->top:F

    .line 418
    invoke-virtual {v1, v0}, Lcom/metamoji/df/controller/DfNoteController;->setOverflow(Lcom/metamoji/cm/ThicknessF;)V

    .line 419
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$WaStatus;->STATUS_NEEDSCROLL:Lcom/metamoji/df/controller/DfPageController$WaStatus;

    .line 421
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/ThicknessF;->right:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/ThicknessF;->bottom:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 422
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v2

    .line 423
    iput v3, v2, Lcom/metamoji/cm/ThicknessF;->right:F

    .line 424
    iput v3, v2, Lcom/metamoji/cm/ThicknessF;->bottom:F

    .line 425
    invoke-virtual {v1, v2}, Lcom/metamoji/df/controller/DfNoteController;->setOverflow(Lcom/metamoji/cm/ThicknessF;)V

    .line 426
    sget-object v1, Lcom/metamoji/df/controller/DfPageController$WaStatus;->STATUS_NOCHANGE:Lcom/metamoji/df/controller/DfPageController$WaStatus;

    if-ne v0, v1, :cond_3

    .line 427
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$WaStatus;->STATUS_WORKAREAEXPAND:Lcom/metamoji/df/controller/DfPageController$WaStatus;

    :cond_3
    return-object v0
.end method

.method private setOffset(FFZZ)V
    .locals 1

    .line 983
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/metamoji/df/controller/DfNoteController;->setOffset(FFZZ)V

    return-void
.end method

.method private updatePaperFromModel()Z
    .locals 5

    .line 642
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getDocument()Lcom/metamoji/df/controller/DfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfDocument;->isFromTemplate()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    const-string v3, "autoPaper"

    invoke-interface {v2, v3, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/metamoji/df/controller/DfPageController;->_autoPaper:I

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Lcom/metamoji/df/controller/DfPageController;->getPaperSizeFromModel(Lcom/metamoji/df/model/IModel;ZZ)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    .line 649
    iget-object v2, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    iget v4, v0, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    iget v4, v0, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 652
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v2, v0, Lcom/metamoji/cm/SizeF;->width:F

    iput v2, v1, Lcom/metamoji/cm/SizeF;->width:F

    .line 653
    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    iput v0, v1, Lcom/metamoji/cm/SizeF;->height:F

    return v3
.end method


# virtual methods
.method public activate()V
    .locals 3

    .line 210
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getDocument()Lcom/metamoji/df/controller/DfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfDocument;->isFromTemplate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget v0, p0, Lcom/metamoji/df/controller/DfPageController;->_autoPaper:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 213
    iput v0, p0, Lcom/metamoji/df/controller/DfPageController;->_autoPaper:I

    .line 214
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_HEAD:Lcom/metamoji/df/controller/DfPageController$WaType;

    goto :goto_0

    .line 217
    :cond_0
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_PAPER_WIDTH:Lcom/metamoji/df/controller/DfPageController$WaType;

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getNoteController()Lcom/metamoji/df/controller/DfNoteController;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->queryWorkareaLayoutOnActivation()Lcom/metamoji/df/controller/DfPageController$WaType;

    move-result-object v0

    .line 222
    sget-object v1, Lcom/metamoji/df/controller/DfPageController$WaType;->UNDEFINED:Lcom/metamoji/df/controller/DfPageController$WaType;

    if-ne v0, v1, :cond_3

    .line 223
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    iget-object v0, v0, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "zoom"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 224
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_SAVED:Lcom/metamoji/df/controller/DfPageController$WaType;

    goto :goto_0

    .line 226
    :cond_2
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_CENTER:Lcom/metamoji/df/controller/DfPageController$WaType;

    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 242
    iput-boolean v1, p0, Lcom/metamoji/df/controller/DfPageController;->_activated:Z

    .line 244
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v1

    .line 245
    new-instance v2, Lcom/metamoji/df/controller/DfPageController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/df/controller/DfPageController$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/df/controller/DfPageController;Lcom/metamoji/df/controller/DfPageController$WaType;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    .line 250
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->show()V

    .line 251
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->notifyPageActivated()V

    return-void
.end method

.method protected addLayer(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 1445
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getNumberOfLayers()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/df/controller/DfPageController;->insertLayer(ILcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method protected correctZoom()V
    .locals 5

    .line 462
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getMinZoom()F

    move-result v0

    .line 463
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getMaxZoom()F

    move-result v1

    .line 464
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v2

    cmpg-float v3, v2, v0

    const/4 v4, 0x1

    if-gez v3, :cond_0

    .line 466
    invoke-virtual {p0, v0, v4}, Lcom/metamoji/df/controller/DfPageController;->setZoom(FZ)V

    :cond_0
    cmpl-float v0, v2, v1

    if-lez v0, :cond_1

    .line 468
    invoke-virtual {p0, v1, v4}, Lcom/metamoji/df/controller/DfPageController;->setZoom(FZ)V

    :cond_1
    return-void
.end method

.method public demandChild(I)Z
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPageIndex()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public destroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 164
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v1, :cond_1

    .line 167
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 168
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 171
    iput-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 172
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfController;->destroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method public fitToPaper()V
    .locals 2

    .line 1204
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getZoomFitToPaper()F

    move-result v0

    const/4 v1, 0x1

    .line 1205
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/df/controller/DfPageController;->setZoom(FZ)V

    .line 1208
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->scrollForFitting()V

    return-void
.end method

.method public fitToPaperWidth()V
    .locals 2

    .line 1216
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getZoomFitToPaperWidth()F

    move-result v0

    const/4 v1, 0x1

    .line 1217
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/df/controller/DfPageController;->setZoom(FZ)V

    .line 1220
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->scrollForFitting()V

    return-void
.end method

.method public fitToRect(Landroid/graphics/RectF;)V
    .locals 7

    .line 1170
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getMizuhikimakuHeight()F

    move-result v0

    .line 1171
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v1

    .line 1172
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 1173
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    .line 1176
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v3, v2, v3

    .line 1177
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v3

    cmpl-float v4, v4, v1

    if-lez v4, :cond_0

    .line 1178
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v3, v1, v3

    .line 1182
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getMaxZoom()F

    move-result v4

    cmpl-float v5, v3, v4

    if-lez v5, :cond_1

    :goto_0
    move v3, v4

    goto :goto_1

    .line 1186
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getMinZoom()F

    move-result v4

    cmpg-float v5, v3, v4

    if-gez v5, :cond_2

    goto :goto_0

    .line 1193
    :cond_2
    :goto_1
    iget v4, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    div-float/2addr v2, v3

    div-float/2addr v2, v6

    sub-float/2addr v4, v2

    .line 1194
    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v6

    add-float/2addr v2, p1

    div-float/2addr v1, v3

    div-float/2addr v1, v6

    sub-float/2addr v2, v1

    const/4 p1, 0x1

    .line 1195
    invoke-virtual {p0, v3, p1}, Lcom/metamoji/df/controller/DfPageController;->setZoom(FZ)V

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    const/4 v0, 0x0

    .line 1196
    invoke-direct {p0, v4, v2, p1, v0}, Lcom/metamoji/df/controller/DfPageController;->setOffset(FFZZ)V

    return-void
.end method

.method public getBindSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public getContentOffsetInRootSprite()Landroid/graphics/PointF;
    .locals 2

    .line 1002
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    .line 1003
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v1

    .line 1004
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getContentOffset()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLayer()Lcom/metamoji/df/controller/DfLayerController;
    .locals 1

    .line 1529
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getCurrentLayerIndex()I

    move-result v0

    .line 1530
    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfPageController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/controller/DfLayerController;

    return-object v0
.end method

.method public getCurrentLayerIndex()I
    .locals 3

    .line 1538
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "currentLayer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCurrentUnitContainer()Lcom/metamoji/df/controller/DfController;
    .locals 1

    .line 846
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getCurrentLayer()Lcom/metamoji/df/controller/DfLayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfLayerController;->getCurrentUnitContainer()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawBounds()Landroid/graphics/RectF;
    .locals 4

    .line 1561
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v0

    .line 1562
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v1

    .line 1564
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getMinZoom()F

    move-result v1

    div-float/2addr v0, v1

    .line 1565
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getPaperWidth()F

    move-result v1

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 1566
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getPaperHeight()F

    move-result v3

    sub-float/2addr v3, v0

    div-float/2addr v3, v2

    .line 1565
    invoke-static {v1, v3, v0, v0}, Lcom/metamoji/cm/RectEx;->newRectF(FFFF)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getLayer(I)Lcom/metamoji/df/controller/DfLayerController;
    .locals 1

    .line 1427
    iget-boolean v0, p0, Lcom/metamoji/df/controller/DfPageController;->_purged:Z

    if-nez v0, :cond_0

    .line 1431
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/controller/DfLayerController;

    return-object p1

    .line 1428
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public getLayerIndex(Lcom/metamoji/df/controller/DfLayerController;)I
    .locals 0

    .line 1437
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->getChildIndex(Lcom/metamoji/df/controller/DfController;)I

    move-result p1

    return p1
.end method

.method getMagnification()F
    .locals 1

    .line 1261
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getZoom()F

    move-result v0

    invoke-static {v0}, Lcom/metamoji/df/controller/DfUtility;->getMagnificationFromZoom(F)F

    move-result v0

    return v0
.end method

.method public getMaxZoom()F
    .locals 1

    const/high16 v0, 0x42480000    # 50.0f

    return v0
.end method

.method public getMinZoom()F
    .locals 4

    .line 444
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getDocument()Lcom/metamoji/df/controller/DfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfDocument;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(Landroid/content/Context;F)F

    move-result v0

    .line 445
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getDocument()Lcom/metamoji/df/controller/DfDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/df/controller/DfDocument;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(Landroid/content/Context;F)F

    move-result v2

    .line 446
    new-instance v3, Lcom/metamoji/cm/ThicknessF;

    invoke-direct {v3, v0, v2, v0, v2}, Lcom/metamoji/cm/ThicknessF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getDocument()Lcom/metamoji/df/controller/DfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfDocument;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/metamoji/df/controller/DfPageController;->getZoomFitToDevice(Lcom/metamoji/cm/ThicknessF;Landroid/content/Context;)F

    move-result v0

    .line 447
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method protected getMizuhikimakuHeight()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNoteController()Lcom/metamoji/df/controller/DfNoteController;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    return-object v0
.end method

.method public getNumberOfLayers()I
    .locals 1

    .line 1421
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOffsetX()F
    .locals 1

    .line 987
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOffsetX()F

    move-result v0

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOffsetY()F

    move-result v0

    return v0
.end method

.method public getPageController()Lcom/metamoji/df/controller/DfPageController;
    .locals 0

    return-object p0
.end method

.method public getPageIndex()I
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 874
    :cond_0
    invoke-virtual {v0, p0}, Lcom/metamoji/df/controller/DfNoteController;->getPageIndex(Lcom/metamoji/df/controller/DfPageController;)I

    move-result v0

    return v0
.end method

.method public getPaperHeight()F
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    return v0
.end method

.method public getPaperSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public getPaperWidth()F
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    return v0
.end method

.method public getPrintHeight()F
    .locals 4

    .line 935
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getPaperHeight()F

    move-result v1

    float-to-double v1, v1

    const-string v3, "printHeight"

    invoke-interface {v0, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getPrintWidth()F
    .locals 4

    .line 927
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getPaperWidth()F

    move-result v1

    float-to-double v1, v1

    const-string v3, "printWidth"

    invoke-interface {v0, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getViewportHeight()F
    .locals 2

    .line 1041
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getViewportOffset()Landroid/graphics/PointF;
    .locals 2

    .line 1011
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getContentOffsetInRootSprite()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getViewportOffsetX()F
    .locals 1

    .line 1018
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public getViewportOffsetY()F
    .locals 1

    .line 1025
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method public getViewportRect(Landroid/graphics/RectF;)V
    .locals 7

    .line 1049
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v0

    .line 1050
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1051
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1052
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v3

    .line 1053
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget v6, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v3

    add-float/2addr v6, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public getViewportWidth()F
    .locals 2

    .line 1032
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1033
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method getWorkareaBottom()F
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/ThicknessF;->bottom:F

    return v0
.end method

.method public getWorkareaHeight()F
    .locals 3

    .line 896
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    .line 897
    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/ThicknessF;->top:F

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/ThicknessF;->bottom:F

    add-float/2addr v1, v0

    return v1
.end method

.method getWorkareaLeft()F
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/ThicknessF;->left:F

    return v0
.end method

.method getWorkareaRight()F
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/ThicknessF;->right:F

    return v0
.end method

.method getWorkareaSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method getWorkareaTop()F
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/ThicknessF;->top:F

    return v0
.end method

.method public getWorkareaWidth()F
    .locals 3

    .line 891
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    .line 892
    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/ThicknessF;->left:F

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/ThicknessF;->right:F

    add-float/2addr v1, v0

    return v1
.end method

.method public getZoom()F
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getZoom()F

    move-result v0

    return v0
.end method

.method getZoomFitToDevice(Lcom/metamoji/cm/ThicknessF;Landroid/content/Context;)F
    .locals 3

    .line 1390
    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 1391
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 1392
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1393
    invoke-virtual {p2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1396
    iget p2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x43100000    # 144.0f

    sub-float/2addr p2, v0

    .line 1400
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getPaperWidth()F

    move-result v0

    .line 1401
    iget v1, p1, Lcom/metamoji/cm/ThicknessF;->left:F

    iget v2, p1, Lcom/metamoji/cm/ThicknessF;->right:F

    add-float/2addr v1, v2

    sub-float v1, p2, v1

    div-float/2addr v1, v0

    .line 1405
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getPaperHeight()F

    move-result v0

    .line 1406
    iget v2, p1, Lcom/metamoji/cm/ThicknessF;->top:F

    iget p1, p1, Lcom/metamoji/cm/ThicknessF;->bottom:F

    add-float/2addr v2, p1

    sub-float/2addr p2, v2

    div-float/2addr p2, v0

    cmpl-float p1, v1, p2

    if-lez p1, :cond_0

    return p2

    :cond_0
    return v1
.end method

.method public getZoomFitToPaper()F
    .locals 3

    .line 1336
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getZoomFitToPaperWidth()F

    move-result v0

    .line 1337
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getZoomFitToPaperHeight()F

    move-result v1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1345
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getZoomFitToWorkarea()F

    move-result v1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method getZoomFitToPaperHeight()F
    .locals 4

    .line 1320
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 1321
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getPaperHeight()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1322
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 1326
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getZoomFitToWorkarea()F

    move-result v1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method getZoomFitToPaperWidth()F
    .locals 4

    .line 1269
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1270
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getPaperWidth()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1271
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 1284
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getZoomFitToWorkarea()F

    move-result v1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method getZoomFitToPaperWidthNoMargin()F
    .locals 3

    .line 1295
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getPaperWidth()F

    move-result v0

    .line 1296
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 1300
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getZoomFitToWorkarea()F

    move-result v0

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method getZoomFitToWorkarea()F
    .locals 1

    .line 1377
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getMinZoom()F

    move-result v0

    return v0
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 2

    .line 115
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfController;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 121
    new-instance p1, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 122
    const-string v0, "paper"

    iput-object v0, p1, Lcom/metamoji/df/sprite/Sprite;->name:Ljava/lang/String;

    .line 123
    iget-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/ThicknessF;->left:F

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 124
    iget-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/ThicknessF;->top:F

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 125
    iget-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 126
    iget-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 127
    iget-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 130
    new-instance p1, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 131
    const-string v1, "paperTexture"

    iput-object v1, p1, Lcom/metamoji/df/sprite/Sprite;->name:Ljava/lang/String;

    .line 132
    iget-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 133
    iget-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 134
    iget-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 135
    iget-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 136
    iget-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 148
    iget-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 149
    iget-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    return-void
.end method

.method protected initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
    .locals 0

    .line 155
    invoke-super {p0, p1, p2}, Lcom/metamoji/df/controller/DfController;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V

    return-void
.end method

.method protected insertLayer(ILcom/metamoji/df/model/IModel;)V
    .locals 2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1456
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getNumberOfLayers()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 1458
    iget-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    const/4 p1, -0x1

    .line 1461
    invoke-static {p2, p0, p1}, Lcom/metamoji/df/controller/DfUtility;->attachChildControllerFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/DfController;I)Lcom/metamoji/df/controller/DfController;

    return-void

    .line 1463
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->getLayer(I)Lcom/metamoji/df/controller/DfLayerController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1465
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfLayerController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1468
    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1, v0, p2}, Lcom/metamoji/df/model/IModel;->insertBefore(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 1471
    invoke-static {p2, p0, p1}, Lcom/metamoji/df/controller/DfUtility;->attachChildControllerFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/DfController;I)Lcom/metamoji/df/controller/DfController;

    .line 1474
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getCurrentLayerIndex()I

    move-result p2

    if-gt p1, p2, :cond_2

    add-int/lit8 p2, p2, 0x1

    .line 1476
    invoke-virtual {p0, p2}, Lcom/metamoji/df/controller/DfPageController;->setCurrentLayerIndex(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isActivated()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/metamoji/df/controller/DfPageController;->_activated:Z

    return v0
.end method

.method public isCurrentPage()Z
    .locals 2

    .line 883
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPageIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getPageIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTemporaryRestored()Z
    .locals 1

    .line 626
    iget-boolean v0, p0, Lcom/metamoji/df/controller/DfPageController;->_temporaryRestored:Z

    return v0
.end method

.method public listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z
    .locals 2

    .line 480
    const-class v0, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;

    if-eqz p1, :cond_1

    .line 482
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$5;->$SwitchMap$com$metamoji$df$controller$MediaChangedBroadcastContext$EventName:[I

    invoke-virtual {p1}, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;->getEventName()Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;->getMediaType()Lcom/metamoji/df/controller/ControllerContext$MediaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->updateSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public notifyPageActivated()V
    .locals 1

    .line 184
    new-instance v0, Lcom/metamoji/df/controller/DfPageController$1;

    invoke-direct {v0, p0, p0}, Lcom/metamoji/df/controller/DfPageController$1;-><init>(Lcom/metamoji/df/controller/DfPageController;Lcom/metamoji/df/controller/DfPageController;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfPageController;->accessControllerTree(Lcom/metamoji/df/controller/IControllerAccessHandler;)V

    return-void
.end method

.method public notifyPageDeactivating()V
    .locals 1

    .line 197
    new-instance v0, Lcom/metamoji/df/controller/DfPageController$2;

    invoke-direct {v0, p0, p0}, Lcom/metamoji/df/controller/DfPageController$2;-><init>(Lcom/metamoji/df/controller/DfPageController;Lcom/metamoji/df/controller/DfPageController;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfPageController;->accessControllerTree(Lcom/metamoji/df/controller/IControllerAccessHandler;)V

    return-void
.end method

.method protected notifyPaperChanged()V
    .locals 1

    .line 719
    new-instance v0, Lcom/metamoji/df/controller/DfPageController$4;

    invoke-direct {v0, p0, p0}, Lcom/metamoji/df/controller/DfPageController$4;-><init>(Lcom/metamoji/df/controller/DfPageController;Lcom/metamoji/df/controller/DfPageController;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfPageController;->accessControllerTree(Lcom/metamoji/df/controller/IControllerAccessHandler;)V

    .line 728
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    invoke-virtual {v0, p0}, Lcom/metamoji/df/controller/DfController;->paperSizeChanged(Lcom/metamoji/df/controller/DfPageController;)V

    return-void
.end method

.method protected notifyWorkareaChanged()V
    .locals 1

    .line 702
    new-instance v0, Lcom/metamoji/df/controller/DfPageController$3;

    invoke-direct {v0, p0, p0}, Lcom/metamoji/df/controller/DfPageController$3;-><init>(Lcom/metamoji/df/controller/DfPageController;Lcom/metamoji/df/controller/DfPageController;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfPageController;->accessControllerTree(Lcom/metamoji/df/controller/IControllerAccessHandler;)V

    .line 711
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    invoke-virtual {v0, p0}, Lcom/metamoji/df/controller/DfController;->workareaChanged(Lcom/metamoji/df/controller/DfPageController;)V

    return-void
.end method

.method protected onPurged(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    return-void
.end method

.method protected onPurging(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    return-void
.end method

.method protected onRestored(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    return-void
.end method

.method protected onRestoring(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    return-void
.end method

.method public onViewportScrollEnd(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 1065
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfController;->onViewportScrollEnd(Lcom/metamoji/cm/CmContext;)V

    .line 1067
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getContentOffsetInRootSprite()Landroid/graphics/PointF;

    move-result-object p1

    .line 1068
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/metamoji/df/controller/DfPageController;->setOffset(FFZZ)V

    return-void
.end method

.method public onViewportZoomEnd(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 1077
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfController;->onViewportZoomEnd(Lcom/metamoji/cm/CmContext;)V

    .line 1079
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result p1

    .line 1080
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getZoom()F

    move-result v0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1082
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/df/controller/DfPageController;->setZoom(FZ)V

    .line 1087
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getContentOffsetInRootSprite()Landroid/graphics/PointF;

    move-result-object p1

    .line 1088
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/metamoji/df/controller/DfPageController;->setOffset(FFZZ)V

    return-void
.end method

.method public pageController()Lcom/metamoji/df/controller/DfPageController;
    .locals 0

    return-object p0
.end method

.method public purgeChildren(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 5

    .line 509
    iget-boolean v0, p0, Lcom/metamoji/df/controller/DfPageController;->_temporaryRestored:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 512
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/df/controller/DfPageController;->_purged:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_1

    .line 515
    invoke-virtual {p0, p0}, Lcom/metamoji/df/controller/DfPageController;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object p1

    :cond_1
    const/4 v0, 0x1

    .line 517
    invoke-virtual {p1, v0}, Lcom/metamoji/df/controller/ControllerContext;->setPurged(Z)V

    const/4 v1, 0x0

    .line 518
    invoke-virtual {p1, v1}, Lcom/metamoji/df/controller/ControllerContext;->setClosed(Z)V

    .line 519
    iput-object p0, p1, Lcom/metamoji/df/controller/ControllerContext;->parent:Lcom/metamoji/df/controller/DfController;

    .line 521
    new-instance v1, Lcom/metamoji/df/controller/StageQueueingDisposer;

    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/metamoji/df/controller/StageQueueingDisposer;-><init>(Lcom/metamoji/df/sprite/Stage;)V

    .line 524
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->onPurging(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 526
    iget-object v2, p0, Lcom/metamoji/df/controller/DfPageController;->_document:Lcom/metamoji/df/controller/DfDocument;

    invoke-virtual {v2}, Lcom/metamoji/df/controller/DfDocument;->saveModels()V

    .line 529
    iput-boolean v0, p0, Lcom/metamoji/df/controller/DfPageController;->_purged:Z

    .line 532
    iget-object v2, p0, Lcom/metamoji/df/controller/DfPageController;->_children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_0
    if-ltz v2, :cond_2

    .line 533
    iget-object v3, p0, Lcom/metamoji/df/controller/DfPageController;->_children:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/controller/DfController;

    .line 534
    iget-object v4, v3, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    .line 535
    invoke-static {p1, p0, v3}, Lcom/metamoji/df/controller/DfController;->detachFromControllerTree(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/controller/DfController;)V

    .line 536
    invoke-interface {v4, v0}, Lcom/metamoji/df/model/IModel;->purgeMemory(Z)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 539
    :cond_2
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->onPurged(Lcom/metamoji/df/controller/ControllerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    invoke-virtual {v1}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    .line 543
    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public removeLayerAt(I)V
    .locals 4

    if-ltz p1, :cond_3

    .line 1488
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1493
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1497
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->getLayer(I)Lcom/metamoji/df/controller/DfLayerController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1499
    iget-object v2, p0, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfLayerController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    .line 1502
    invoke-static {v0}, Lcom/metamoji/df/controller/DfUtility;->detachChildController(Lcom/metamoji/df/controller/DfController;)V

    .line 1505
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getCurrentLayerIndex()I

    move-result v0

    if-ge p1, v0, :cond_2

    sub-int/2addr v0, v1

    .line 1507
    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfPageController;->setCurrentLayerIndex(I)V

    return-void

    :cond_2
    if-ne p1, v0, :cond_3

    .line 1510
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getNumberOfLayers()I

    move-result p1

    add-int/lit8 v1, p1, -0x1

    if-lt v0, v1, :cond_3

    add-int/lit8 p1, p1, -0x2

    .line 1513
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->setCurrentLayerIndex(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method resetWorkarea(Lcom/metamoji/df/controller/DfPageController$WaType;Landroidx/fragment/app/FragmentActivity;)V
    .locals 6

    .line 259
    iget-boolean v0, p0, Lcom/metamoji/df/controller/DfPageController;->_activated:Z

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/df/controller/DfPageController;->recalcWorkarea()Lcom/metamoji/df/controller/DfPageController$WaStatus;

    move-result-object v0

    .line 266
    sget-object v1, Lcom/metamoji/df/controller/DfPageController$WaType;->FROM_PAPERSIZE:Lcom/metamoji/df/controller/DfPageController$WaType;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_SAVED:Lcom/metamoji/df/controller/DfPageController$WaType;

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    .line 267
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getZoom()F

    move-result v1

    .line 269
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->updateSpriteSize()V

    .line 270
    sget-object v2, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_CENTER:Lcom/metamoji/df/controller/DfPageController$WaType;

    if-ne p1, v2, :cond_3

    .line 271
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getZoomFitToPaper()F

    move-result v1

    goto :goto_2

    .line 272
    :cond_3
    sget-object v2, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_HEAD:Lcom/metamoji/df/controller/DfPageController$WaType;

    if-ne p1, v2, :cond_5

    .line 273
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 274
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getZoomFitToPaperWidth()F

    move-result v1

    goto :goto_2

    .line 276
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getZoomFitToPaperWidthNoMargin()F

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p2

    goto :goto_2

    .line 278
    :cond_5
    sget-object p2, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_PAPER_WIDTH:Lcom/metamoji/df/controller/DfPageController$WaType;

    if-ne p1, p2, :cond_6

    .line 279
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getZoomFitToPaperWidth()F

    move-result v1

    .line 281
    :cond_6
    :goto_2
    sget-object p2, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-virtual {p0, p2}, Lcom/metamoji/df/controller/DfPageController;->updateSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    .line 283
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->setZoomMinMax()V

    .line 285
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getMinZoom()F

    move-result p2

    .line 286
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getMaxZoom()F

    move-result v2

    cmpg-float v3, v1, p2

    if-gez v3, :cond_7

    goto :goto_3

    :cond_7
    move p2, v1

    :goto_3
    cmpl-float v3, p2, v2

    if-lez v3, :cond_8

    goto :goto_4

    :cond_8
    move v2, p2

    .line 294
    :goto_4
    iget-object p2, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    iget-object p2, p2, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v3, "zoom"

    float-to-double v4, v2

    invoke-interface {p2, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 295
    iget-object p2, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast p2, Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {p2, v2}, Lcom/metamoji/df/controller/DfNoteController;->setOldZoom(F)V

    .line 298
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/metamoji/df/sprite/Stage;->setIgnoreDraw(Z)V

    .line 299
    sget-object p2, Lcom/metamoji/df/controller/DfPageController$WaType;->FROM_PAPERSIZE:Lcom/metamoji/df/controller/DfPageController$WaType;

    const/4 v4, 0x1

    if-ne p1, p2, :cond_9

    .line 300
    invoke-virtual {p0, v2, v4}, Lcom/metamoji/df/controller/DfPageController;->setZoom(FZ)V

    goto :goto_5

    .line 302
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object p2

    iget-object v5, p0, Lcom/metamoji/df/controller/DfPageController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p2, v5, v2}, Lcom/metamoji/df/sprite/Stage;->transship(Lcom/metamoji/df/sprite/Sprite;F)V

    .line 304
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/metamoji/df/sprite/Viewport;->setZoomScale(F)V

    .line 307
    :goto_5
    sget-object p2, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_CENTER:Lcom/metamoji/df/controller/DfPageController$WaType;

    if-eq p1, p2, :cond_c

    sget-object p2, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_HEAD:Lcom/metamoji/df/controller/DfPageController$WaType;

    if-eq p1, p2, :cond_c

    sget-object p2, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_PAPER_WIDTH:Lcom/metamoji/df/controller/DfPageController$WaType;

    if-ne p1, p2, :cond_a

    goto :goto_6

    .line 310
    :cond_a
    sget-object p2, Lcom/metamoji/df/controller/DfPageController$WaStatus;->STATUS_NEEDSCROLL:Lcom/metamoji/df/controller/DfPageController$WaStatus;

    if-eq v0, p2, :cond_b

    sget-object p2, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_SAVED:Lcom/metamoji/df/controller/DfPageController$WaType;

    if-ne p1, p2, :cond_d

    .line 311
    :cond_b
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getOffsetX()F

    move-result p1

    mul-float/2addr p1, v1

    div-float/2addr p1, v2

    .line 312
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getOffsetY()F

    move-result p2

    mul-float/2addr p2, v1

    div-float/2addr p2, v2

    .line 313
    invoke-direct {p0, p1, p2, v4, v3}, Lcom/metamoji/df/controller/DfPageController;->setOffset(FFZZ)V

    goto :goto_7

    .line 309
    :cond_c
    :goto_6
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->scrollForFitting()V

    .line 316
    :cond_d
    :goto_7
    sget-object p1, Lcom/metamoji/df/controller/DfPageController$WaStatus;->STATUS_NOCHANGE:Lcom/metamoji/df/controller/DfPageController$WaStatus;

    if-eq v0, p1, :cond_e

    .line 317
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->notifyWorkareaChanged()V

    :cond_e
    :goto_8
    return-void
.end method

.method public restoreChildren(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 3

    .line 551
    iget-boolean v0, p0, Lcom/metamoji/df/controller/DfPageController;->_purged:Z

    if-eqz v0, :cond_2

    .line 552
    new-instance v0, Lcom/metamoji/df/controller/StageQueueingDisposer;

    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/df/controller/StageQueueingDisposer;-><init>(Lcom/metamoji/df/sprite/Stage;)V

    if-nez p1, :cond_0

    .line 556
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/metamoji/df/controller/DfPageController;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object p1

    :cond_0
    const/4 v1, 0x1

    .line 558
    invoke-virtual {p1, v1}, Lcom/metamoji/df/controller/ControllerContext;->setRestored(Z)V

    .line 559
    iput-object p0, p1, Lcom/metamoji/df/controller/ControllerContext;->parent:Lcom/metamoji/df/controller/DfController;

    .line 562
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->onRestoring(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 565
    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_document:Lcom/metamoji/df/controller/DfDocument;

    invoke-virtual {v1}, Lcom/metamoji/df/controller/DfDocument;->getControllerFactory()Lcom/metamoji/df/controller/ControllerFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v1, p1, v2}, Lcom/metamoji/df/controller/ControllerFactory;->createChildrenAsDepthFirst(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;)V

    .line 566
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->initChildrenDescendants(Lcom/metamoji/df/controller/ControllerContext;)V

    const/4 v1, 0x0

    .line 569
    iput-boolean v1, p0, Lcom/metamoji/df/controller/DfPageController;->_purged:Z

    .line 572
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->onRestored(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 575
    invoke-virtual {p1}, Lcom/metamoji/df/controller/ControllerContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->purgeChildren(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 577
    iget-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast p1, Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfNoteController;->getPurgeManager()Lcom/metamoji/df/controller/PurgeManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/df/controller/PurgeManager;->onPageRestoreCancelled(Lcom/metamoji/df/controller/DfPageController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    .line 581
    throw p1

    :cond_2
    return-void
.end method

.method public restoreTemporary(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    const/4 v0, 0x1

    .line 587
    iput-boolean v0, p0, Lcom/metamoji/df/controller/DfPageController;->_temporaryRestored:Z

    .line 588
    iget-boolean v0, p0, Lcom/metamoji/df/controller/DfPageController;->_purged:Z

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->restoreChildren(Lcom/metamoji/df/controller/ControllerContext;)V

    :cond_0
    return-void
.end method

.method scrollForFitting()V
    .locals 6

    .line 1236
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getPaperWidth()F

    move-result v0

    .line 1237
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewportWidth()F

    move-result v1

    cmpl-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v2, :cond_0

    .line 1239
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getWorkareaLeft()F

    move-result v0

    goto :goto_0

    .line 1241
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getWorkareaLeft()F

    move-result v2

    sub-float/2addr v1, v0

    div-float/2addr v1, v3

    sub-float v0, v2, v1

    .line 1243
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getPaperHeight()F

    move-result v1

    .line 1244
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewportHeight()F

    move-result v2

    const/4 v4, 0x0

    sub-float/2addr v2, v4

    .line 1245
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getWorkareaTop()F

    move-result v5

    sub-float/2addr v5, v4

    cmpg-float v4, v1, v2

    if-gtz v4, :cond_1

    sub-float/2addr v2, v1

    div-float/2addr v2, v3

    sub-float/2addr v5, v2

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1249
    invoke-direct {p0, v0, v5, v1, v2}, Lcom/metamoji/df/controller/DfPageController;->setOffset(FFZZ)V

    return-void
.end method

.method public scrollRectToVisible(Landroid/graphics/RectF;Z)V
    .locals 1

    .line 1111
    new-instance v0, Lcom/metamoji/cm/ThicknessF;

    invoke-direct {v0}, Lcom/metamoji/cm/ThicknessF;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/df/controller/DfPageController;->scrollRectToVisible(Landroid/graphics/RectF;ZLcom/metamoji/cm/ThicknessF;)V

    return-void
.end method

.method public scrollRectToVisible(Landroid/graphics/RectF;ZLcom/metamoji/cm/ThicknessF;)V
    .locals 7

    .line 1126
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 1127
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p3, Lcom/metamoji/cm/ThicknessF;->left:F

    iget v3, p3, Lcom/metamoji/cm/ThicknessF;->top:F

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p3, Lcom/metamoji/cm/ThicknessF;->right:F

    sub-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget p3, p3, Lcom/metamoji/cm/ThicknessF;->bottom:F

    sub-float/2addr v5, p3

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1128
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p3

    .line 1129
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    .line 1130
    invoke-virtual {v1, p3}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p3

    .line 1136
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 1137
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v4, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 1138
    :goto_0
    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 1139
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    .line 1141
    :cond_1
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 1142
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    goto :goto_1

    :cond_2
    move v4, v3

    .line 1143
    :goto_1
    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 1144
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget p3, p3, Landroid/graphics/RectF;->top:F

    sub-float v4, p1, p3

    :cond_3
    cmpl-float p1, v2, v3

    if-nez p1, :cond_5

    cmpl-float p1, v4, v3

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return-void

    .line 1150
    :cond_5
    :goto_2
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result p1

    .line 1151
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getContentOffset()Landroid/graphics/PointF;

    move-result-object p3

    .line 1152
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p3, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, p1

    add-float/2addr v1, v2

    iget p3, p3, Landroid/graphics/PointF;->y:F

    div-float/2addr p3, p1

    add-float/2addr p3, v4

    invoke-direct {v0, v1, p3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0, p2}, Lcom/metamoji/df/controller/DfPageController;->setViewportOffset(Landroid/graphics/PointF;Z)V

    return-void
.end method

.method public setCurrentLayerIndex(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 1543
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1546
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "currentLayer"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPaperSize(FF)V
    .locals 4

    .line 948
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "paperWidth"

    float-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 949
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "paperHeight"

    float-to-double v2, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 950
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iput p1, v0, Lcom/metamoji/cm/SizeF;->width:F

    .line 951
    iget-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iput p2, p1, Lcom/metamoji/cm/SizeF;->height:F

    .line 952
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->isCurrentPage()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 953
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    .line 954
    new-instance p2, Lcom/metamoji/df/controller/DfPageController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/metamoji/df/controller/DfPageController$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/df/controller/DfPageController;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    .line 956
    :cond_0
    sget-object p1, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->updateSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    .line 957
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->notifyPaperChanged()V

    return-void
.end method

.method public setPrintHeight(F)V
    .locals 4

    .line 939
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "printHeight"

    float-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public setPrintWidth(F)V
    .locals 4

    .line 931
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "printWidth"

    float-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public setViewportOffset(Landroid/graphics/PointF;Z)V
    .locals 3

    .line 1101
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    .line 1102
    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/ThicknessF;->left:F

    add-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/ThicknessF;->top:F

    add-float/2addr p1, v0

    const/4 v0, 0x1

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/metamoji/df/controller/DfPageController;->setOffset(FFZZ)V

    return-void
.end method

.method public setZoom(FZ)V
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/df/controller/DfNoteController;->setZoom(FZ)V

    return-void
.end method

.method protected setZoomMinMax()V
    .locals 2

    .line 455
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 456
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getMinZoom()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setMinZoomScale(F)V

    .line 457
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfPageController;->getMaxZoom()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setMaxZoomScale(F)V

    return-void
.end method

.method public turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 594
    iput-boolean v0, p0, Lcom/metamoji/df/controller/DfPageController;->_temporaryRestored:Z

    .line 596
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    .line 597
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getPurgeManager()Lcom/metamoji/df/controller/PurgeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/df/controller/PurgeManager;->isPurgeTarget(Lcom/metamoji/df/controller/DfPageController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->purgeChildren(Lcom/metamoji/df/controller/ControllerContext;)V

    :cond_0
    return-void
.end method

.method public updateSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 3

    .line 783
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$5;->$SwitchMap$com$metamoji$df$controller$ControllerContext$MediaType:[I

    invoke-virtual {p1}, Lcom/metamoji/df/controller/ControllerContext$MediaType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 795
    :goto_0
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 804
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz p1, :cond_1

    .line 797
    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    .line 798
    iget-object p1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p1

    .line 799
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    const/4 v0, 0x0

    .line 800
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 801
    sget-object v1, Lcom/metamoji/df/sprite/PaintSolid;->WHITE:Lcom/metamoji/df/sprite/PaintSolid;

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 802
    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget-object v2, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p1, v0, v0, v1, v2}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    return-void

    .line 804
    :cond_1
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    return-void
.end method

.method updateSpriteSize()V
    .locals 6

    .line 739
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_parent:Lcom/metamoji/df/controller/DfController;

    check-cast v0, Lcom/metamoji/df/controller/DfNoteController;

    .line 740
    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/ThicknessF;->left:F

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/ThicknessF;->right:F

    add-float/2addr v1, v2

    .line 741
    iget-object v2, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/cm/ThicknessF;->top:F

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/cm/ThicknessF;->bottom:F

    add-float/2addr v2, v3

    .line 742
    iget-object v3, p0, Lcom/metamoji/df/controller/DfPageController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v3

    cmpl-float v3, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/metamoji/df/controller/DfPageController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v3

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_1

    .line 744
    :cond_0
    iget-object v3, p0, Lcom/metamoji/df/controller/DfPageController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3, v4}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 745
    iget-object v3, p0, Lcom/metamoji/df/controller/DfPageController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3, v5}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 746
    iget-object v3, p0, Lcom/metamoji/df/controller/DfPageController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3, v5}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 747
    iget-object v3, p0, Lcom/metamoji/df/controller/DfPageController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3, v1}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 748
    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 752
    :cond_1
    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1, v4}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 753
    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/ThicknessF;->left:F

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 754
    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getOverflow()Lcom/metamoji/cm/ThicknessF;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/ThicknessF;->top:F

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 755
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 756
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperSprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 759
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v4}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 760
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v5}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 761
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v5}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 762
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 763
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController;->_paperTextureSprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v1, p0, Lcom/metamoji/df/controller/DfPageController;->_paper:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    return-void
.end method
