.class public Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;
.super Lcom/metamoji/ui/library/item/LibraryPartView;
.source "LibraryNoteTemplatePartView.java"


# static fields
.field static final ICON_MARGIN_HEIGHT:I = 0xa

.field static final ICON_MARGIN_WIDTH:I = 0x14

.field static final ICON_WIDTH:I = 0x5a

.field static final TEXT_PADDING_WIDTH:I = 0x2

.field static final TEXT_WIDTH:I = 0x7e


# instance fields
.field protected m_titleLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPartView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_thumbnail:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_thumbnail:Landroid/widget/ImageView;

    return-object p0
.end method

.method private setThumbnailImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 172
    sget p2, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

    sget p3, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_HIGHT_EXCLUDE_SHADOW:I

    invoke-static {p1, p2, p3}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile2(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 176
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 177
    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 178
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 181
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_hatena:I

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 185
    :cond_1
    new-instance v5, Lcom/metamoji/cm/Size;

    sget p1, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_HIGHT_EXCLUDE_SHADOW:I

    invoke-direct {v5, p1, v0}, Lcom/metamoji/cm/Size;-><init>(II)V

    .line 186
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p1

    .line 187
    invoke-virtual {p1, p3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isProtected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 190
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->design1_lock_note:I

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    move-object v4, p4

    goto :goto_1

    .line 192
    :cond_2
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_hatena:I

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    invoke-static {}, Lcom/metamoji/sd/SdThumbnailLoader;->getInstance()Lcom/metamoji/sd/SdThumbnailLoader;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    .line 194
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/sd/SdThumbnailLoader;->addTask(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/ImageView;Lcom/metamoji/cm/Size;)Ljava/util/concurrent/Future;

    .line 199
    :goto_1
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_dropshadow:I

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method protected getTitleForShortcut()Ljava/lang/String;
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_partDic:Ljava/util/Map;

    const-string/jumbo v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 297
    :cond_0
    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoTitle:I

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 300
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 301
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_CreateNote:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method protected initCanvas()V
    .locals 6

    .line 210
    iget-object v0, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getThumbnailSize()Lcom/metamoji/cm/Size;

    move-result-object v0

    .line 211
    iget v0, v0, Lcom/metamoji/cm/Size;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x43020000    # 130.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x42fc0000    # 126.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 220
    invoke-virtual {p0}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$layout;->library_note:I

    invoke-static {v2, v3, p0}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v2, 0x0

    .line 222
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->setClipChildren(Z)V

    .line 223
    sget v3, Lcom/metamoji/noteanytime/R$id;->image_library_thumbnail_layout:I

    invoke-virtual {p0, v3}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 224
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 227
    invoke-virtual {p0}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->pageType()Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v3

    .line 231
    sget-object v4, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$2;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {v3}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v4, :cond_1

    if-eq v3, v5, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    sget v3, Lcom/metamoji/noteanytime/R$id;->overlay_library_shortcut:I

    invoke-virtual {p0, v3}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 237
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    :goto_0
    sget v3, Lcom/metamoji/noteanytime/R$id;->label_library_title:I

    invoke-virtual {p0, v3}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_titleLabel:Landroid/widget/TextView;

    .line 246
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 247
    iget-object v1, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_titleLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 248
    iget-object v1, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_titleLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 249
    invoke-virtual {p0}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->updateTitle()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 61
    invoke-super/range {p0 .. p5}, Lcom/metamoji/ui/library/item/LibraryPartView;->onLayout(ZIIII)V

    move p2, p1

    move-object p1, p0

    if-eqz p2, :cond_5

    .line 64
    iget-object p2, p1, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {p2}, Lcom/metamoji/ui/library/item/LibraryPageView;->getThumbnailSize()Lcom/metamoji/cm/Size;

    move-result-object p2

    .line 65
    iget p2, p2, Lcom/metamoji/cm/Size;->width:I

    int-to-float p2, p2

    const/high16 p3, 0x43020000    # 130.0f

    div-float/2addr p2, p3

    const/4 p3, 0x0

    cmpg-float p3, p2, p3

    if-gtz p3, :cond_0

    goto/16 :goto_0

    .line 70
    :cond_0
    iget-object p3, p1, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_partDic:Ljava/util/Map;

    const-string p4, "driveId"

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 71
    iget-object p4, p1, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_partDic:Ljava/util/Map;

    const-string p5, "entityId"

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p3

    .line 74
    invoke-virtual {p3, p4}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p3

    .line 75
    invoke-virtual {p3}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTemplate()Z

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    .line 76
    sget p4, Lcom/metamoji/noteanytime/R$id;->overlay_library_templateicon:I

    invoke-virtual {p0, p4}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    .line 77
    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    :cond_1
    invoke-virtual {p3}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isShareTemplate()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 80
    sget p4, Lcom/metamoji/noteanytime/R$id;->overlay_library_shareicon:I

    invoke-virtual {p0, p4}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    .line 81
    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :cond_2
    sget p4, Lcom/metamoji/noteanytime/R$id;->image_library_thumbnail:I

    invoke-virtual {p0, p4}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p1, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_thumbnail:Landroid/widget/ImageView;

    .line 85
    iget-object p4, p1, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_partDic:Ljava/util/Map;

    const-string p5, "imagePath"

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-eqz p4, :cond_3

    .line 86
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    if-lez p5, :cond_3

    .line 87
    invoke-virtual {p0, p4}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->updateThumbnail(Ljava/lang/String;)V

    return-void

    :cond_3
    const/high16 p4, 0x42b40000    # 90.0f

    mul-float/2addr p2, p4

    float-to-int p2, p2

    int-to-float p4, p2

    const/16 p5, 0x55

    int-to-float p5, p5

    const/16 v0, 0x78

    int-to-float v0, v0

    div-float/2addr p5, v0

    mul-float/2addr p4, p5

    float-to-int p4, p4

    .line 95
    iget-object p5, p1, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_thumbnail:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    .line 96
    iput p4, p5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 97
    iput p2, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 100
    invoke-virtual {p3}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isProtected()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 102
    iget-object p2, p1, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_thumbnail:Landroid/widget/ImageView;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->design1_lock_note:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 104
    :cond_4
    iget-object p2, p1, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_thumbnail:Landroid/widget/ImageView;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_hatena:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    invoke-virtual {p0}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->downloadDMThumbnail()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 287
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/library/item/LibraryPartView;->onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected showContextMenu(Lcom/metamoji/lb/LbConstants$LbPageType;)V
    .locals 0

    return-void
.end method

.method protected updateThumbnail(Ljava/lang/String;)V
    .locals 7

    .line 114
    iget-object v0, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getThumbnailSize()Lcom/metamoji/cm/Size;

    move-result-object v0

    .line 115
    iget v0, v0, Lcom/metamoji/cm/Size;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x42a00000    # 80.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v0, v1

    float-to-int v4, v0

    .line 120
    new-instance v1, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;

    move v5, v4

    move v6, v4

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;-><init>(Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;Ljava/lang/String;III)V

    .line 161
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->thumbnailTaskExecute(Landroid/os/AsyncTask;)V

    return-void
.end method

.method public updateTitle()V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_partDic:Ljava/util/Map;

    const-string/jumbo v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 262
    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoTitle:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_titleLabel:Landroid/widget/TextView;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 267
    iget-object v1, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_titleLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->m_titleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
