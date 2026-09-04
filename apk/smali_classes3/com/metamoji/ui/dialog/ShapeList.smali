.class public Lcom/metamoji/ui/dialog/ShapeList;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ShapeList.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field mReConstructed:Z

.field mSettings:Lcom/metamoji/nt/NtSystemPenSettings;

.field mShapeSelectionView:Lcom/metamoji/ui/common/UiShapeSelectionView;

.field mStyle:Lcom/metamoji/nt/share/NtPenStyle;

.field protected m_context:Lcom/metamoji/cm/CmContext;

.field m_currentTab:I


# direct methods
.method static bridge synthetic -$$Nest$minitDlgValues(Lcom/metamoji/ui/dialog/ShapeList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeList;->initDlgValues()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeList;->mReConstructed:Z

    .line 185
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtSystemPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtSystemPenSettings;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeList;->mSettings:Lcom/metamoji/nt/NtSystemPenSettings;

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeList;->mReConstructed:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/share/NtPenStyle;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeList;->mReConstructed:Z

    .line 185
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtSystemPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtSystemPenSettings;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeList;->mSettings:Lcom/metamoji/nt/NtSystemPenSettings;

    .line 76
    new-instance v0, Lcom/metamoji/nt/share/NtPenStyle;

    invoke-direct {v0, p1}, Lcom/metamoji/nt/share/NtPenStyle;-><init>(Lcom/metamoji/nt/share/NtPenStyle;)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    return-void
.end method

.method private static declared-synchronized createTempDirectory()Ljava/io/File;
    .locals 6

    const-string v0, "failed to create temporary directory. : "

    const-class v1, Lcom/metamoji/ui/dialog/ShapeList;

    monitor-enter v1

    const/4 v2, 0x0

    .line 345
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v3

    .line 347
    const-string/jumbo v4, "shape"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :try_start_1
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    :catch_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_0

    .line 353
    const-string v3, "cannot create temporary directory."

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    monitor-exit v1

    return-object v2

    .line 356
    :cond_0
    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v3

    .line 358
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 359
    monitor-exit v1

    return-object v2

    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private initDlgValues()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeList;->mShapeSelectionView:Lcom/metamoji/ui/common/UiShapeSelectionView;

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v2, p0, Lcom/metamoji/ui/dialog/ShapeList;->m_currentTab:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/common/UiShapeSelectionView;->createContents(Lcom/metamoji/nt/share/NtPenStyle;Z)V

    .line 189
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeList;->mShapeSelectionView:Lcom/metamoji/ui/common/UiShapeSelectionView;

    new-instance v1, Lcom/metamoji/ui/dialog/ShapeList$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/ShapeList$2;-><init>(Lcom/metamoji/ui/dialog/ShapeList;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiShapeSelectionView;->setSelectedListener(Lcom/metamoji/ui/common/UiShapeSelectionView$IShapeSelected;)V

    return-void
.end method


# virtual methods
.method public getPenStyle()Lcom/metamoji/nt/share/NtPenStyle;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeList;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    return-object v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 378
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 276
    sget p1, Lcom/metamoji/noteanytime/R$id;->buttonShape:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 277
    iput p1, p0, Lcom/metamoji/ui/dialog/ShapeList;->m_currentTab:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 279
    iput p1, p0, Lcom/metamoji/ui/dialog/ShapeList;->m_currentTab:I

    .line 281
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 282
    const-string p2, "MMJShpeDlgSelectTab"

    iget v0, p0, Lcom/metamoji/ui/dialog/ShapeList;->m_currentTab:I

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 283
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeList;->initDlgValues()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 101
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_shapelist:I

    iput v0, p0, Lcom/metamoji/ui/dialog/ShapeList;->mViewId:I

    .line 104
    sget v0, Lcom/metamoji/noteanytime/R$string;->Shapes:I

    iput v0, p0, Lcom/metamoji/ui/dialog/ShapeList;->mTitleId:I

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeList;->mDone:Z

    .line 107
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/ShapeList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 108
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShapeList;->mCancel:Z

    goto :goto_0

    .line 111
    :cond_0
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/ShapeList;->mCancel:Z

    .line 115
    :goto_0
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/ShapeList;->mV4Compatible:Z

    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 118
    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/ShapeList;->mReConstructed:Z

    if-eqz p2, :cond_1

    return-object p1

    .line 124
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p2

    .line 125
    const-string p3, "MMJShpeDlgSelectTab"

    invoke-virtual {p2, p3, v0}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/dialog/ShapeList;->m_currentTab:I

    .line 127
    sget p2, Lcom/metamoji/noteanytime/R$id;->shapeTypeGroup:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    .line 128
    invoke-virtual {p2, p0}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 129
    iget p3, p0, Lcom/metamoji/ui/dialog/ShapeList;->m_currentTab:I

    if-nez p3, :cond_2

    sget p3, Lcom/metamoji/noteanytime/R$id;->buttonShape:I

    goto :goto_1

    :cond_2
    sget p3, Lcom/metamoji/noteanytime/R$id;->buttonFlowChart:I

    :goto_1
    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->check(I)V

    .line 133
    sget p2, Lcom/metamoji/noteanytime/R$id;->shapeList:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiShapeSelectionView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShapeList;->mShapeSelectionView:Lcom/metamoji/ui/common/UiShapeSelectionView;

    .line 134
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShapeList;->initDlgValues()V

    .line 137
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_shapesettings:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    if-eqz p2, :cond_3

    .line 139
    new-instance p3, Lcom/metamoji/ui/dialog/ShapeList$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/ShapeList$1;-><init>(Lcom/metamoji/ui/dialog/ShapeList;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    :cond_3
    sget p2, Lcom/metamoji/noteanytime/R$id;->control_dialog:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 386
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onDestroyView()V

    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 0

    .line 369
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 391
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method parseSystemItem(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 296
    invoke-static {}, Lcom/metamoji/ui/dialog/ShapeList;->createTempDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 301
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "shape.product"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 302
    invoke-static {p1, v2}, Lcom/metamoji/cm/CmUtils;->copyFileFromAsset(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 303
    const-string p1, "[ShapeList] archive copy error!"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-object v1

    .line 308
    :cond_1
    invoke-static {v2, v0, v1}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->uncompressDocumentNoCkeckAsync(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)Lcom/metamoji/cv/CvResult$Import;

    move-result-object p1

    .line 309
    sget-object v2, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;

    if-eq v2, p1, :cond_2

    return-object v1

    .line 314
    :cond_2
    new-instance p1, Ljava/io/File;

    const-string v2, "index.dat"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 316
    const-string p1, "[ShapeList] index file not found in zip."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-object v1

    .line 322
    :cond_3
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 324
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-static {v2}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    .line 327
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 328
    const-string v3, "jsonDic"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string/jumbo p1, "tempDir"

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 332
    const-string v0, "[ShapeList] product index file dos\'nt read..."

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method public setCmContext(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    if-nez p1, :cond_0

    .line 83
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShapeList;->m_context:Lcom/metamoji/cm/CmContext;

    return-void
.end method
