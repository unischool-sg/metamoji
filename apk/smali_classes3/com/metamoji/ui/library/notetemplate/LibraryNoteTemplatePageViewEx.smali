.class public Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;
.super Lcom/metamoji/ui/library/item/LibraryPageViewEx;
.source "LibraryNoteTemplatePageViewEx.java"


# static fields
.field public static final THUMBNAIL_HEIGHT:I = 0xa0

.field static final THUMBNAIL_HORIZONTAL_MAX:I = 0x4

.field public static final THUMBNAIL_WIDTH:I = 0x82


# instance fields
.field _driveId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getItemList()V
    .locals 15

    .line 203
    const-string v0, "partsArray"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsTemplateFolder(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    .line 204
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->m_pageDicArray:Ljava/util/List;

    .line 206
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->getDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Ljava/util/List;

    move-result-object v2

    .line 212
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catch Lcom/metamoji/cm/CmException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    move v6, v5

    .line 213
    :goto_0
    const-string v7, "imagePath"

    const-string v8, "entityId"

    const-string/jumbo v9, "title"

    const-string/jumbo v10, "type"

    if-ge v6, v4, :cond_0

    .line 214
    :try_start_1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 217
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v12

    .line 218
    invoke-virtual {v12, v11}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v13

    .line 219
    invoke-virtual {v12, v11}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIconImageFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 221
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 222
    invoke-direct {p0, v13}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->getTitle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-interface {v14, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-interface {v14, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v7, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-interface {v14, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 228
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 229
    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v2, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->m_pageDicArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v1, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->_driveId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 236
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 244
    :cond_2
    iput-object v1, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->_driveId:Ljava/lang/String;

    .line 246
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsTemplateFolder(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v3

    .line 249
    const-string v4, "application/vnd.metamoji.model.atdoc"

    invoke-virtual {p0, v3, v4}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->getSdTemplateDocumentList(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 250
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v5, v4, :cond_3

    .line 252
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 255
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v11

    .line 256
    invoke-virtual {v11, v6}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v12

    .line 257
    invoke-virtual {v11, v6}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIconImageFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 259
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 260
    invoke-direct {p0, v12}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->getTitle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v13, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v12, "driveId"

    invoke-interface {v13, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-interface {v13, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-interface {v13, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v6, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SHARE:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-interface {v13, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 267
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 268
    sget-object v3, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SHARE:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-interface {v1, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->m_pageDicArray:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/metamoji/cm/CmException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 274
    const-string v1, "[SelectNote] :: ERROR getItemList:"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private getTitle(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 317
    instance-of v0, p1, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    if-eqz v0, :cond_0

    .line 318
    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 320
    :cond_0
    instance-of v0, p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v0, :cond_1

    .line 321
    check-cast p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 323
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 324
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected categoryCommentStringId(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method protected categoryNoFromPageType(Lcom/metamoji/lb/LbConstants$LbPageType;)I
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->_driveId:Ljava/lang/String;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 147
    sget-object v0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx$1;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v3, :cond_0

    return v1

    :cond_0
    return v2

    .line 152
    :cond_1
    sget-object v0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx$1;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v3, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    return v1

    :cond_2
    return v3

    :cond_3
    return v2
.end method

.method protected categoryTitleStringId(I)I
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->hasDownload()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 105
    sget p1, Lcom/metamoji/noteanytime/R$string;->NoteTemplate_Share:I

    return p1

    .line 104
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$string;->NoteTemplate_Private:I

    return p1
.end method

.method protected createPartView(Landroid/content/Context;Ljava/util/Map;)Lcom/metamoji/ui/library/item/LibraryPartView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/ui/library/item/LibraryPartView;"
        }
    .end annotation

    .line 135
    new-instance p1, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {p1, p0, p2}, Lcom/metamoji/ui/library/item/LibraryPartView;->createContents(Lcom/metamoji/ui/library/item/LibraryPageView;Ljava/util/Map;)V

    return-object p1
.end method

.method protected createPartViewArrayArray()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/library/item/LibraryPartView;",
            ">;>;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->_driveId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 89
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public deletePart(Lcom/metamoji/ui/library/item/LibraryPartView;)V
    .locals 0

    return-void
.end method

.method protected getBasicThumbnailSize()Lcom/metamoji/cm/Size;
    .locals 3

    .line 58
    new-instance v0, Lcom/metamoji/cm/Size;

    const/16 v1, 0x82

    const/16 v2, 0xa0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object v0
.end method

.method getDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 280
    const-string v0, "application/vnd.metamoji.model.atdoc"

    invoke-static {p1, v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getSearchConditions(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Lcom/metamoji/dvm/DvmDocumentSearchConditions;

    move-result-object v0

    .line 281
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v1

    .line 283
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagsObject()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIDs(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getHorizontalMaxCount()I
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    return v1

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    div-int/2addr v1, v0

    return v1
.end method

.method public getSdTemplateDocumentList(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/cm/CmException;
        }
    .end annotation

    .line 292
    sget-object v0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx$1;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 303
    :pswitch_0
    invoke-static {p1, p2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getSearchConditions(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Lcom/metamoji/dvm/DvmDocumentSearchConditions;

    move-result-object v3

    .line 304
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v1

    .line 305
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagsObject()Ljava/util/ArrayList;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIDs(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;JJ)Ljava/util/List;

    move-result-object p1

    return-object p1

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
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected isDownloadItem(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public loadData(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryViewDialog;)V
    .locals 7

    .line 190
    iget-object v0, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->m_pageDicArray:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->getItemList()V

    .line 194
    iget-object v4, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->m_pageDicArray:Ljava/util/List;

    invoke-virtual {p0}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->getHeight()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->createContents(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/util/List;II)V

    return-void
.end method

.method public selectPart(Lcom/metamoji/ui/library/item/LibraryPartView;)V
    .locals 2

    .line 331
    iget-object v0, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string v1, "driveId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string v1, "entityId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 333
    iget-object v1, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v1, p1, v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->onSelectedNoteTemplate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updatePartViewTitle(Lcom/metamoji/lb/LbConstants$LbPageType;I)V
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->categoryNoFromPageType(Lcom/metamoji/lb/LbConstants$LbPageType;)I

    move-result p1

    .line 168
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->getPartViewArray(I)Ljava/util/List;

    move-result-object p1

    .line 169
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/library/note/LibraryNotePartView;

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->updateTitle()V

    :cond_0
    return-void
.end method
