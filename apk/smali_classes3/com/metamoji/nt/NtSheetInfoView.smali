.class public Lcom/metamoji/nt/NtSheetInfoView;
.super Landroid/widget/ScrollView;
.source "NtSheetInfoView.java"


# static fields
.field private static final LINE_PREVIEW_WIDTH:I = 0x32

.field private static final TEXT_COLOR:I = -0x1

.field private static final TEXT_SIZE:I = 0xe


# instance fields
.field private _container:Landroid/widget/LinearLayout;

.field private _gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method static bridge synthetic -$$Nest$mcreateNoteTemplateInfo(Lcom/metamoji/nt/NtSheetInfoView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtSheetInfoView;->createNoteTemplateInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8c

    const/4 v1, 0x0

    .line 63
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtSheetInfoView;->setBackgroundColor(I)V

    .line 65
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/nt/NtSheetInfoView;->_container:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    .line 66
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 67
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-int p1, p1

    .line 68
    iget-object v0, p0, Lcom/metamoji/nt/NtSheetInfoView;->_container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    if-nez p4, :cond_0

    .line 71
    invoke-direct {p0, p3}, Lcom/metamoji/nt/NtSheetInfoView;->createSheetTemplateInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p4, Lcom/metamoji/nt/NtSheetInfoView$1;

    invoke-direct {p4, p0, p2, p3}, Lcom/metamoji/nt/NtSheetInfoView$1;-><init>(Lcom/metamoji/nt/NtSheetInfoView;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p2, p2}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 94
    :goto_0
    iget-object p1, p0, Lcom/metamoji/nt/NtSheetInfoView;->_container:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtSheetInfoView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addItem(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 362
    invoke-direct {p0, p1, v0}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;I)V

    return-void
.end method

.method private addItem(Landroid/view/View;I)V
    .locals 3

    .line 365
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 367
    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 368
    :cond_0
    iget-object p2, p0, Lcom/metamoji/nt/NtSheetInfoView;->_container:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private craeteGroupMarginItem()Landroid/view/View;
    .locals 2

    .line 401
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtSheetInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 402
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    return-object v0
.end method

.method private createColorValueItem(II)Landroid/view/View;
    .locals 7

    .line 417
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 420
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtSheetInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 421
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 423
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtSheetInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 424
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    invoke-static {p1, v3}, Lcom/metamoji/nt/NtSheetInfoView;->formatString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 425
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, -0x1

    .line 426
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x10

    .line 429
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 430
    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    invoke-static {p2}, Lcom/metamoji/ui/dialog/BackgroundColor;->isColorNone(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtSheetInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 437
    sget v2, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_None:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 439
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 444
    :cond_0
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtSheetInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 445
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->sheetinfo_color_preview:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 446
    instance-of v3, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_1

    .line 447
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 448
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 451
    :cond_1
    invoke-virtual {v2, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 453
    :goto_0
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-int p1, p1

    .line 454
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v0, p1, 0x10

    div-int/lit8 v0, v0, 0x9

    invoke-direct {p2, v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object p1, p2

    move-object p2, v2

    .line 456
    :goto_1
    iput v6, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 458
    invoke-virtual {v1, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private createNoteTemplateInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 221
    new-instance v0, Lcom/metamoji/nt/NtNoteTemplateSettings;

    invoke-direct {v0}, Lcom/metamoji/nt/NtNoteTemplateSettings;-><init>()V

    .line 224
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p1, p2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->openEditorForQuickEdit(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 228
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 233
    :try_start_0
    invoke-interface {p1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/metamoji/nt/NtNoteTemplateSettings;->applyFromModelMgr(Lcom/metamoji/df/model/IModelManager;)V

    .line 235
    invoke-interface {p1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->hasRecordings(Lcom/metamoji/df/model/IModel;)Z

    move-result p2

    iput-boolean p2, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasRecordings:Z

    .line 236
    invoke-interface {p1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSheetInfoView;->createSheetSizeString(Lcom/metamoji/df/model/IModelManager;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    sget-object p2, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {p1, p2}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    sget-object v0, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {p1, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    .line 240
    throw p2

    .line 243
    :cond_1
    :goto_1
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 246
    sget p2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_SHEET_SIZE:I

    invoke-direct {p0, p2, v1}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 247
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 249
    invoke-direct {p0}, Lcom/metamoji/nt/NtSheetInfoView;->craeteGroupMarginItem()Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 252
    sget p2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_TITLE_RULE:I

    iget-object v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->titleRule:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->titleRule:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-direct {p0, p2, v1}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 253
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 256
    iget-object p2, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->passwordHash:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 257
    sget p2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_PASSWORD_YES:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 258
    :cond_3
    sget p2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_PASSWORD_NO:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 259
    :goto_3
    sget v1, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_PASSWORD:I

    invoke-direct {p0, v1, p2}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 260
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 262
    invoke-direct {p0}, Lcom/metamoji/nt/NtSheetInfoView;->craeteGroupMarginItem()Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 265
    iget-boolean p2, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasFrontCover:Z

    if-eqz p2, :cond_4

    .line 266
    sget p2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_ON:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 267
    :cond_4
    sget p2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_OFF:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 268
    :goto_4
    sget v1, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_FRONT_COVER:I

    invoke-direct {p0, v1, p2}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 269
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 271
    iget-boolean p2, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasFrontCover:Z

    if-eqz p2, :cond_6

    .line 273
    iget-boolean p2, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->noFrontCoverOnPrinting:Z

    if-nez p2, :cond_5

    .line 274
    sget p2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_ON:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    .line 275
    :cond_5
    sget p2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_OFF:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 276
    :goto_5
    sget v1, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_PRINT_COVER:I

    invoke-direct {p0, v1, p2}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 277
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 281
    :cond_6
    sget p2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_HEADER:I

    iget-object v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->header:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->header:Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object v1, v2

    :goto_6
    invoke-direct {p0, p2, v1}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 282
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 285
    sget p2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_FOOTER:I

    iget-object v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->footer:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->footer:Ljava/lang/String;

    goto :goto_7

    :cond_8
    move-object v1, v2

    :goto_7
    invoke-direct {p0, p2, v1}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 286
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 288
    invoke-direct {p0}, Lcom/metamoji/nt/NtSheetInfoView;->craeteGroupMarginItem()Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 291
    iget-boolean p2, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->useNoteTextSettings:Z

    if-nez p2, :cond_9

    .line 292
    sget p2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_TEXTUNITSTYLE_USE_SYSTEM_SETTINGS:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    .line 293
    :cond_9
    sget p2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_TEXTUNITSTYLE_USE_NOTE_SETTINGS:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 294
    :goto_8
    sget v1, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_TEXTUNITSTYLE_INITVALUE:I

    invoke-direct {p0, v1, p2}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 295
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 298
    iget-boolean p2, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->useNoteTextSettings:Z

    if-eqz p2, :cond_d

    const/high16 p2, 0x41a00000    # 20.0f

    .line 299
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p2

    float-to-int p2, p2

    .line 302
    iget-object v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v1, v1, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%.1f em"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 303
    sget v3, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_LineSpacing:I

    invoke-direct {p0, v3, v1}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 304
    invoke-direct {p0, v1, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;I)V

    .line 307
    sget v1, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_RuledLine:I

    iget-object v3, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v3, v3, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-direct {p0, v1, v3}, Lcom/metamoji/nt/NtSheetInfoView;->createRuledLineStyleItem(ILcom/metamoji/un/text/model/RuledLineStyle;)Landroid/view/View;

    move-result-object v1

    .line 308
    invoke-direct {p0, v1, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;I)V

    .line 311
    sget v1, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_BorderLine:I

    iget-object v3, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v3, v3, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-direct {p0, v1, v3}, Lcom/metamoji/nt/NtSheetInfoView;->createUnitBorderStyleItem(ILcom/metamoji/un/text/model/UnitBorderStyle;)Landroid/view/View;

    move-result-object v1

    .line 312
    invoke-direct {p0, v1, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;I)V

    .line 315
    sget v1, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_BGColor:I

    iget-object v3, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v3, v3, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/metamoji/nt/NtSheetInfoView;->createColorValueItem(II)Landroid/view/View;

    move-result-object v1

    .line 316
    invoke-direct {p0, v1, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;I)V

    .line 319
    sget v1, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_TextColor:I

    iget-object v3, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v3, v3, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/metamoji/nt/NtSheetInfoView;->createColorValueItem(II)Landroid/view/View;

    move-result-object v1

    .line 320
    invoke-direct {p0, v1, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;I)V

    .line 323
    iget-object v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v1, v1, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    if-nez v1, :cond_a

    goto :goto_9

    :cond_a
    move-object v2, v1

    .line 327
    :goto_9
    invoke-static {v2}, Lcom/metamoji/un/text/FontUtils;->getDispFontFamilyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 328
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    goto :goto_a

    :cond_b
    move-object v2, v1

    .line 331
    :cond_c
    :goto_a
    sget v1, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_Font:I

    invoke-direct {p0, v1, v2}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 332
    invoke-direct {p0, v1, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;I)V

    .line 335
    iget-object v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v1, v1, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 336
    sget v2, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_FontSize:I

    invoke-direct {p0, v2, v1}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 337
    invoke-direct {p0, v1, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;I)V

    .line 340
    :cond_d
    invoke-direct {p0}, Lcom/metamoji/nt/NtSheetInfoView;->craeteGroupMarginItem()Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 343
    iget-boolean p2, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasRecordings:Z

    if-eqz p2, :cond_e

    .line 344
    sget p2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_HAS_RECORDINGS_YES:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    .line 345
    :cond_e
    sget p2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_HAS_RECORDINGS_NO:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 346
    :goto_b
    sget p2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_HAS_RECORDINGS:I

    invoke-direct {p0, p2, p1}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 347
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 351
    iget-object p1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->shareTemplateDic:Ljava/util/Map;

    if-eqz p1, :cond_f

    .line 352
    invoke-direct {p0}, Lcom/metamoji/nt/NtSheetInfoView;->craeteGroupMarginItem()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 354
    iget-object p1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->shareTemplateDic:Ljava/util/Map;

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->getShareTemplateInfoString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 355
    sget p2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_SHARE_TEMPLATE_INFO:I

    invoke-direct {p0, p2, p1}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 356
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method private createRuledLineStyleItem(ILcom/metamoji/un/text/model/RuledLineStyle;)Landroid/view/View;
    .locals 8

    .line 464
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 467
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtSheetInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 468
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 470
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtSheetInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 471
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    invoke-static {p1, v3}, Lcom/metamoji/nt/NtSheetInfoView;->formatString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 472
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, -0x1

    .line 473
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 475
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x10

    .line 476
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 477
    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    sget-object v2, Lcom/metamoji/un/text/model/RuledLineStyle;->None:Lcom/metamoji/un/text/model/RuledLineStyle;

    if-ne p2, v2, :cond_0

    .line 482
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtSheetInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 483
    sget v2, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_None:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 485
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 487
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 490
    :cond_0
    new-instance p1, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtSheetInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;-><init>(Landroid/content/Context;)V

    .line 491
    invoke-virtual {p1, p2}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->setRuledLineStyle(Lcom/metamoji/un/text/model/RuledLineStyle;)V

    .line 493
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p2, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    .line 495
    :goto_0
    iput v6, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 497
    invoke-virtual {v1, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private createSheetSizeString(Lcom/metamoji/df/model/IModelManager;)Ljava/lang/String;
    .locals 6

    .line 372
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 374
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0}, Lcom/metamoji/cm/SizeF;-><init>()V

    .line 375
    const-string v1, "paperWidth"

    const-wide/16 v2, 0x0

    invoke-interface {p1, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    iput v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    .line 376
    const-string v1, "paperHeight"

    invoke-interface {p1, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, v0, Lcom/metamoji/cm/SizeF;->height:F

    .line 377
    iget p1, v0, Lcom/metamoji/cm/SizeF;->height:F

    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 379
    :goto_0
    new-instance v1, Lcom/metamoji/ui/UiPaperSize;

    invoke-direct {v1}, Lcom/metamoji/ui/UiPaperSize;-><init>()V

    .line 380
    invoke-virtual {v1, v0, p1}, Lcom/metamoji/ui/UiPaperSize;->GetIndex(Lcom/metamoji/cm/SizeF;Z)I

    move-result v2

    if-ltz v2, :cond_1

    .line 383
    invoke-virtual {v1, v2, p1}, Lcom/metamoji/ui/UiPaperSize;->GetPaperSize(IZ)Lcom/metamoji/ui/UiPaperSize$PaperSize;

    move-result-object p1

    iget-object p1, p1, Lcom/metamoji/ui/UiPaperSize$PaperSize;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    return-object p1

    .line 386
    :cond_2
    iget p1, v0, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {p1}, Lcom/metamoji/df/controller/DfUtility;->mmFromPoint(F)F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v0}, Lcom/metamoji/df/controller/DfUtility;->mmFromPoint(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%d mm x %d mm"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createSheetTemplateInfo(Ljava/lang/String;)V
    .locals 6

    .line 114
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getLibrarySheetTemplateFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 116
    invoke-static {p1}, Lcom/metamoji/df/model/ModelManagerFactory;->restoreModelManager(Ljava/io/File;)Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    .line 119
    :try_start_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_SHEET_SIZE:I

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSheetInfoView;->createSheetSizeString(Lcom/metamoji/df/model/IModelManager;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 120
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 123
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 124
    const-string/jumbo v1, "system:form"

    invoke-static {v1, v0}, Lcom/metamoji/nt/NtPageController;->layerModelForType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 125
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 126
    invoke-static {v1, v0}, Lcom/metamoji/un/form/UnBGFormUnit;->collectFormDescription(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 128
    const-string/jumbo v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;

    .line 129
    sget-object v3, Lcom/metamoji/nt/NtSheetInfoView$2;->$SwitchMap$com$metamoji$un$form$UnBGFormUnit$FORMDESC_VAL_TYPE:[I

    invoke-virtual {v2}, Lcom/metamoji/un/form/UnBGFormUnit$FORMDESC_VAL_TYPE;->ordinal()I

    move-result v2

    aget v2, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "%s %s"

    const-string v4, "csd"

    const-string v5, "ct"

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 174
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/metamoji/nt/NtSheetInfoView;->craeteGroupMarginItem()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 176
    const-string/jumbo v2, "tlh"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 177
    const-string/jumbo v3, "tfs"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 180
    const-string v3, "%.1f em"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 181
    sget v3, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_LineSpacing:I

    invoke-direct {p0, v3, v2}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 182
    invoke-direct {p0, v2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 185
    const-string v2, "%d"

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 186
    sget v2, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_FontSize:I

    invoke-direct {p0, v2, v1}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 187
    invoke-direct {p0, v1}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    goto :goto_0

    .line 160
    :pswitch_1
    invoke-direct {p0}, Lcom/metamoji/nt/NtSheetInfoView;->craeteGroupMarginItem()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 162
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 166
    invoke-direct {p0, v1}, Lcom/metamoji/nt/NtSheetInfoView;->getCalendarStartDayOfWeekString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 167
    sget v2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_YEARLY_CALENDAR:I

    invoke-direct {p0, v2, v1}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 168
    invoke-direct {p0, v1}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    goto/16 :goto_0

    .line 146
    :pswitch_2
    invoke-direct {p0}, Lcom/metamoji/nt/NtSheetInfoView;->craeteGroupMarginItem()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 148
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 152
    invoke-direct {p0, v1}, Lcom/metamoji/nt/NtSheetInfoView;->getCalendarStartDayOfWeekString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 153
    sget v2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_MONTHLY_CALENDAR:I

    invoke-direct {p0, v2, v1}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 154
    invoke-direct {p0, v1}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    goto/16 :goto_0

    .line 135
    :pswitch_3
    invoke-direct {p0}, Lcom/metamoji/nt/NtSheetInfoView;->craeteGroupMarginItem()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V

    .line 137
    const-string v2, "lsp"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 138
    const-string v2, "%.1f mm"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 139
    sget v2, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_PITCH:I

    invoke-direct {p0, v2, v1}, Lcom/metamoji/nt/NtSheetInfoView;->createStringValueItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 140
    invoke-direct {p0, v1}, Lcom/metamoji/nt/NtSheetInfoView;->addItem(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 195
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V

    .line 196
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createStringValueItem(ILjava/lang/String;)Landroid/view/View;
    .locals 3

    .line 408
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 409
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtSheetInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 410
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/metamoji/nt/NtSheetInfoView;->formatString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 411
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, -0x1

    .line 412
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v1
.end method

.method private createUnitBorderStyleItem(ILcom/metamoji/un/text/model/UnitBorderStyle;)Landroid/view/View;
    .locals 8

    .line 502
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 505
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtSheetInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 506
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 508
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtSheetInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 509
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    invoke-static {p1, v3}, Lcom/metamoji/nt/NtSheetInfoView;->formatString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 510
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, -0x1

    .line 511
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 513
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x10

    .line 514
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 515
    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    sget-object v2, Lcom/metamoji/un/text/model/UnitBorderStyle;->None:Lcom/metamoji/un/text/model/UnitBorderStyle;

    if-ne p2, v2, :cond_0

    .line 520
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtSheetInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 521
    sget v2, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_None:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 523
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 525
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 528
    :cond_0
    new-instance p1, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtSheetInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;-><init>(Landroid/content/Context;)V

    .line 529
    invoke-virtual {p1, p2}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->setUnitBorderStyle(Lcom/metamoji/un/text/model/UnitBorderStyle;)V

    .line 531
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p2, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    .line 533
    :goto_0
    iput v6, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 535
    invoke-virtual {v1, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public static formatString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 390
    const-string v0, "%s\uff1a%s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCalendarStartDayOfWeekString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 210
    const-string p1, ""

    return-object p1

    .line 209
    :pswitch_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_CALENDAR_START_SUN:I

    goto :goto_0

    .line 208
    :pswitch_1
    sget p1, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_CALENDAR_START_SAT:I

    goto :goto_0

    .line 207
    :pswitch_2
    sget p1, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_CALENDAR_START_FRI:I

    goto :goto_0

    .line 206
    :pswitch_3
    sget p1, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_CALENDAR_START_THURS:I

    goto :goto_0

    .line 205
    :pswitch_4
    sget p1, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_CALENDAR_START_WED:I

    goto :goto_0

    .line 204
    :pswitch_5
    sget p1, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_CALENDAR_START_TUE:I

    goto :goto_0

    .line 203
    :pswitch_6
    sget p1, Lcom/metamoji/noteanytime/R$string;->SHEETINFOVIEW_CALENDAR_START_MON:I

    .line 212
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 213
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/metamoji/nt/NtSheetInfoView;->_gestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 107
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/metamoji/nt/NtSheetInfoView;->_gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method
