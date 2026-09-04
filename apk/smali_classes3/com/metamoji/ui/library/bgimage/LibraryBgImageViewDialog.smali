.class public Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;
.super Lcom/metamoji/ui/library/item/LibraryViewDialog;
.source "LibraryBgImageViewDialog.java"


# static fields
.field public static TAG:Ljava/lang/String; = "LibraryBgImageViewDialog"


# instance fields
.field private m_bgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

.field private m_dlgPaperBackground:Lcom/metamoji/ui/dialog/PaperBackground;

.field private m_isInitializeSettingFinished:Z

.field private m_isSheet:Z

.field private m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

.field private m_preview:Landroid/widget/ImageView;

.field private m_selectFromAlbumButton:Lcom/metamoji/ui/common/UiButton;


# direct methods
.method static bridge synthetic -$$Nest$fgetm_dlgPaperBackground(Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;)Lcom/metamoji/ui/dialog/PaperBackground;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_dlgPaperBackground:Lcom/metamoji/ui/dialog/PaperBackground;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_isSheet(Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_isSheet:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetm_param(Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;)Lcom/metamoji/ui/UiPaperSettingsParam;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputm_dlgPaperBackground(Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;Lcom/metamoji/ui/dialog/PaperBackground;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_dlgPaperBackground:Lcom/metamoji/ui/dialog/PaperBackground;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;-><init>()V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_isInitializeSettingFinished:Z

    .line 70
    iput-boolean v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_isSheet:Z

    .line 72
    new-instance v0, Lcom/metamoji/ui/UiPaperSettingsParam;

    invoke-direct {v0}, Lcom/metamoji/ui/UiPaperSettingsParam;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->setUseStore(Z)V

    return-void
.end method

.method public static addCover(Ljava/util/Map;Lcom/metamoji/nt/NtPageController$BGImageParams;Lcom/metamoji/cm/CmContext;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/nt/NtPageController$BGImageParams;",
            "Lcom/metamoji/cm/CmContext;",
            ")V"
        }
    .end annotation

    .line 447
    const-string v0, "com.metamoji.noteanytime.sheet.system001.002"

    .line 449
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getLibrarySheetTemplateFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 451
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 452
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 453
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 457
    const-string v2, "imageStyle"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 458
    instance-of v3, v2, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    if-eqz v3, :cond_0

    .line 459
    move-object v3, v2

    check-cast v3, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 461
    :cond_0
    check-cast v2, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 464
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v3

    float-to-double v3, v3

    .line 465
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v5

    float-to-double v5, v5

    .line 466
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPrintWidth()F

    move-result v7

    float-to-double v7, v7

    .line 467
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPrintHeight()F

    move-result v1

    float-to-double v9, v1

    if-eqz p0, :cond_1

    .line 468
    sget-object v1, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->TILED:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    if-eq v2, v1, :cond_1

    .line 469
    const-string v1, "paperWidth"

    invoke-static {p0, v1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->getDoubleValue(Ljava/util/Map;Ljava/lang/String;)D

    move-result-wide v3

    .line 470
    const-string v1, "paperHeight"

    invoke-static {p0, v1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->getDoubleValue(Ljava/util/Map;Ljava/lang/String;)D

    move-result-wide v5

    .line 471
    const-string v1, "printWidth"

    invoke-static {p0, v1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->getDoubleValue(Ljava/util/Map;Ljava/lang/String;)D

    move-result-wide v7

    .line 472
    const-string v1, "printHeight"

    invoke-static {p0, v1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->getDoubleValue(Ljava/util/Map;Ljava/lang/String;)D

    move-result-wide v9

    .line 475
    :cond_1
    new-instance p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;

    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController$CreateModelParams;-><init>()V

    const/4 v1, 0x0

    .line 476
    iput v1, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->AutoPaper:I

    .line 477
    iput-wide v3, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PaperWidth:D

    .line 478
    iput-wide v5, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PaperHeight:D

    .line 479
    iput-wide v7, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PrintWidth:D

    .line 480
    iput-wide v9, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PrintHeight:D

    const/4 v1, 0x0

    .line 481
    iput-object v1, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->TextSetting:Lcom/metamoji/df/model/IModel;

    .line 482
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->BgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    .line 484
    sget-object p1, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AddCover:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    .line 485
    const-string/jumbo v1, "sheetChangeType"

    invoke-virtual {p2, v1, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    const-string v1, "coverParam"

    invoke-virtual {p2, v1, p0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    invoke-static {v0, p1, p2}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->applySheetTemplate(Ljava/io/File;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public static addCoverFromLibrary(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtPageController$BGImageParams;)V
    .locals 11

    .line 496
    const-string v0, "com.metamoji.noteanytime.sheet.system001.002"

    .line 498
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getLibrarySheetTemplateFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 500
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 501
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 502
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 504
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v2

    float-to-double v2, v2

    .line 505
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v4

    float-to-double v4, v4

    .line 506
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPrintWidth()F

    move-result v6

    float-to-double v6, v6

    .line 507
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPrintHeight()F

    move-result v1

    float-to-double v8, v1

    .line 509
    new-instance v1, Lcom/metamoji/nt/NtPageController$CreateModelParams;

    invoke-direct {v1}, Lcom/metamoji/nt/NtPageController$CreateModelParams;-><init>()V

    const/4 v10, 0x0

    .line 510
    iput v10, v1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->AutoPaper:I

    .line 511
    iput-wide v2, v1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PaperWidth:D

    .line 512
    iput-wide v4, v1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PaperHeight:D

    .line 513
    iput-wide v6, v1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PrintWidth:D

    .line 514
    iput-wide v8, v1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PrintHeight:D

    const/4 v2, 0x0

    .line 515
    iput-object v2, v1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->TextSetting:Lcom/metamoji/df/model/IModel;

    .line 516
    iput-object p1, v1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->BgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    .line 518
    sget-object p1, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AddCover:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    .line 519
    const-string/jumbo v2, "sheetChangeType"

    invoke-virtual {p0, v2, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 520
    const-string v2, "coverParam"

    invoke-virtual {p0, v2, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
    invoke-static {v0, p1, p0}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->applySheetTemplate(Ljava/io/File;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method private static applySheetTemplate(Ljava/io/File;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 528
    const-string/jumbo v0, "storageFile"

    invoke-virtual {p2, v0, p0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    const-string/jumbo p0, "sheetChangeType"

    invoke-virtual {p2, p0, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 530
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p0

    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_COVER_SELECT_AND_INSERT_DONE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_0
    return-void
.end method

.method private static getDoubleValue(Ljava/util/Map;Ljava/lang/String;)D
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")D"
        }
    .end annotation

    .line 433
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 435
    instance-of p1, p0, Ljava/lang/Double;

    if-eqz p1, :cond_0

    .line 436
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method


# virtual methods
.method protected addBookmarkAfterExec(Ljava/lang/String;ZZ)V
    .locals 0

    return-void
.end method

.method public configurePage()V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->loadPageData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    return-void
.end method

.method protected createLibraryStoreViewDialog()Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;
    .locals 1

    .line 225
    invoke-super {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->createLibraryStoreViewDialog()Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;

    move-result-object v0

    return-object v0
.end method

.method protected createViewClass(Landroid/content/Context;ZLjava/util/Map;)Lcom/metamoji/ui/library/item/LibraryPageView;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/ui/library/item/LibraryPageView;"
        }
    .end annotation

    .line 217
    new-instance v0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePageView;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePageView;-><init>(Landroid/content/Context;)V

    .line 218
    iget-object p2, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->getWidth()I

    move-result v4

    iget-object p2, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->getHeight()I

    move-result v5

    move-object v2, p0

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/library/item/LibraryPageView;->createContents(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;Ljava/util/Map;II)V

    return-object v0
.end method

.method protected createViewExClass(Landroid/content/Context;Ljava/util/List;)Lcom/metamoji/ui/library/item/LibraryPageViewEx;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/metamoji/ui/library/item/LibraryPageViewEx;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected deleteItem(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected dialogTitleId(Z)I
    .locals 0

    .line 231
    iget-boolean p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_isSheet:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/metamoji/noteanytime/R$string;->Menu_Background_Prop:I

    return p1

    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->SelectCoverAndInsertMenu:I

    return p1
.end method

.method protected downloadProductDic(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 383
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method protected getPageCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getTabButtonStringId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isNeedUpdate(Ljava/lang/String;Ljava/util/Map;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected loadPageData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_isInitializeSettingFinished:Z

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 140
    :cond_0
    invoke-static {}, Lcom/metamoji/lb/LbLibraryBgImageManager;->getInstance()Lcom/metamoji/lb/LbLibraryBgImageManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_isSheet:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/lb/LbLibraryBgImageManager;->loadPageDataArray(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected maxDisplayCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method protected needActivityDisposeByActivityRecover()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 153
    sget-object v1, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/UiPaperSettingsParam;

    iput-object v1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    .line 154
    const-string v1, "isSheet"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_isSheet:Z

    .line 155
    invoke-virtual {p0}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->configurePage()V

    .line 158
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 160
    iget-object p2, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_preview:Landroid/widget/ImageView;

    if-nez p2, :cond_1

    .line 161
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_preview:Landroid/widget/ImageView;

    .line 163
    :cond_1
    iget-object p2, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_preview:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object p2, p2, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2

    .line 164
    iget-object p2, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_preview:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object p3, p3, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object p2, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_preview:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 206
    invoke-super {p0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 208
    sget-object v0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    const-string v0, "isSheet"

    iget-boolean v1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_isSheet:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    sget-object v0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method protected pageDataArrayArrayForPageViewEx()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected pageDataArrayIndexFromPageIndex(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected pageIndexFromPageDataArrayIndex(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public partInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected registerDounloadContent(Ljava/io/File;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ZLcom/metamoji/lb/LbConstants$DownloadMode;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/metamoji/lb/LbConstants$DownloadMode;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 395
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method protected savePageDataArray()V
    .locals 0

    return-void
.end method

.method public selectPart(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 297
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->selectPartInner(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    .line 301
    const-string v2, "imagePath"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 302
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 303
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 304
    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 309
    :goto_0
    sget-object v3, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->TILED:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 310
    const-string v5, "imageStyle"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 311
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 315
    :cond_1
    iget-object v5, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    const-string v6, "entityId"

    invoke-virtual {v5, v6, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    iget-object v1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-nez v2, :cond_2

    .line 320
    iput-boolean v6, v1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    .line 321
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iput-object v4, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    .line 323
    new-instance v0, Lcom/metamoji/nt/NtPageController$BGImageParams;

    invoke-direct {v0}, Lcom/metamoji/nt/NtPageController$BGImageParams;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_bgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    .line 324
    iput-object v4, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    .line 325
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_bgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    iput v5, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->Opacity:F

    .line 326
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_bgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    sget-object v1, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->CENTER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object v1, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->Style:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 327
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_bgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    iput-object v4, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->Color:Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_bgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    iput v5, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->ColorOpacity:F

    goto :goto_1

    .line 331
    :cond_2
    invoke-static {v2, v6, v6, v4}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile(Ljava/lang/String;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    .line 332
    iget-object v1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iput-boolean v0, v1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    .line 333
    iget-object v1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iput-boolean v0, v1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    .line 334
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iput-boolean v6, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    .line 335
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iput-object v3, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 337
    new-instance v0, Lcom/metamoji/nt/NtPageController$BGImageParams;

    invoke-direct {v0}, Lcom/metamoji/nt/NtPageController$BGImageParams;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_bgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    .line 338
    iget-object v1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, v1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;)Lcom/metamoji/cm/Blob;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    .line 339
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_bgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    iput v5, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->Opacity:F

    .line 340
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_bgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    iput-object v3, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->Style:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 341
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_bgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    iput-object v4, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->Color:Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_bgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    iput v5, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->ColorOpacity:F

    .line 345
    :goto_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 346
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 347
    const-string v2, "UiPaperSettingsParam"

    iget-object v3, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    iget-boolean v2, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_isSheet:Z

    if-eqz v2, :cond_3

    .line 350
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_PAPER_BACK_SETTING_DONE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/NtEditorWindowController;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_bgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    invoke-static {p1, v0, v1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->addCover(Ljava/util/Map;Lcom/metamoji/nt/NtPageController$BGImageParams;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public setBackground(Lcom/metamoji/ui/UiPaperSettingsParam;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    .line 110
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    .line 111
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    .line 112
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 113
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUri:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    iput v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    .line 115
    iget-boolean v0, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object p1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iput-object v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    .line 121
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_preview:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 122
    iget-object p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object p1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    .line 125
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_preview:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object p1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 125
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method

.method public setBgImageParams(Lcom/metamoji/nt/NtPageController$BGImageParams;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, p1, Lcom/metamoji/nt/NtPageController$BGImageParams;->Style:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 97
    iget-object v0, p1, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    invoke-virtual {v0}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/png"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    .line 102
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, p1, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    iget-object p1, p1, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    invoke-static {p1}, Lcom/metamoji/cm/ImageUtils;->getBitmapSizeFromBlob(Lcom/metamoji/cm/Blob;)Lcom/metamoji/cm/Size;

    move-result-object p1

    const/16 v2, 0x40

    invoke-static {v1, v2, v2, p1}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    .line 103
    iget-object p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/4 v0, -0x1

    iput v0, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    .line 104
    iget-object p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUri:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setIsSheet(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_isSheet:Z

    return-void
.end method

.method public setParam(Lcom/metamoji/ui/UiPaperSettingsParam;)V
    .locals 2

    .line 83
    iget-object v0, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 87
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    .line 88
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    .line 89
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    .line 90
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUri:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget p1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    iput p1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    return-void
.end method

.method protected setupFooter(Landroid/content/Context;)V
    .locals 3

    .line 180
    invoke-virtual {p0}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 183
    new-instance v1, Lcom/metamoji/ui/common/UiButton;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/metamoji/ui/common/UiButton;-><init>(ILandroid/content/Context;)V

    iput-object v1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_selectFromAlbumButton:Lcom/metamoji/ui/common/UiButton;

    .line 184
    sget p1, Lcom/metamoji/noteanytime/R$string;->SheetBackGround_Image_Album:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    .line 186
    iget-object p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_selectFromAlbumButton:Lcom/metamoji/ui/common/UiButton;

    new-instance v0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog$1;-><init>(Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->_footer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->m_selectFromAlbumButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected systemOptionKeyCurrentPage()Ljava/lang/String;
    .locals 1

    .line 257
    const-string v0, "LibraryBgImageCurrentPage"

    return-object v0
.end method

.method protected systemOptionKeyCurrentPageDefault()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected systemOptionKeyLastAccessId()Ljava/lang/String;
    .locals 1

    .line 269
    const-string v0, "LibraryBgImageLastaccessId"

    return-object v0
.end method

.method protected tabButtonStringId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateItemName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected updateTextLabel()V
    .locals 0

    return-void
.end method

.method protected useArrangementMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected useFooter()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
