.class public Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;
.super Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;
.source "LibrarySheetViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected addBookmarkAfterExec(Ljava/lang/String;ZZ)V
    .locals 1

    .line 323
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->updateSheetTemplateBookmarked(Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    .line 329
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    sget-object p3, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_BOOKMARK:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->savePageDataArray(Ljava/util/List;Lcom/metamoji/lb/LbConstants$LbPageType;)V

    :cond_0
    return-void
.end method

.method applySheetTemplate(Ljava/util/Map;Ljava/io/File;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/File;",
            "Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 300
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->selectPartInner(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    .line 304
    invoke-virtual {v0, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->updateSheetTemplateUseDate(Ljava/lang/String;)V

    .line 307
    iget-object p1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    const-string/jumbo v0, "storageFile"

    invoke-virtual {p1, v0, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    iget-object p1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    const-string/jumbo p2, "sheetChangeType"

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_APPLY_SHEETTEMPLATE:Lcom/metamoji/nt/NtCommand;

    iget-object p3, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_0
    return-void
.end method

.method protected checkSelectedNoteTemplate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected createLibraryStoreViewDialog()Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;
    .locals 1

    .line 90
    new-instance v0, Lcom/metamoji/ui/library/sheet/LibrarySheetStoreViewDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/library/sheet/LibrarySheetStoreViewDialog;-><init>()V

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

    if-eqz p2, :cond_0

    .line 78
    new-instance p2, Lcom/metamoji/ui/library/sheet/LibrarySheetStorePageView;

    invoke-direct {p2, p1}, Lcom/metamoji/ui/library/sheet/LibrarySheetStorePageView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;

    invoke-direct {p2, p1}, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v0, p2

    .line 79
    iget-object p2, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->getWidth()I

    move-result v4

    iget-object p2, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->getHeight()I

    move-result v5

    move-object v2, p0

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/library/item/LibraryPageView;->createContents(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;Ljava/util/Map;II)V

    return-object v0
.end method

.method protected createViewExClass(Landroid/content/Context;Ljava/util/List;)Lcom/metamoji/ui/library/item/LibraryPageViewEx;
    .locals 6
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

    .line 435
    new-instance v0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/library/sheet/LibrarySheetPageViewEx;-><init>(Landroid/content/Context;)V

    .line 436
    iget-object v1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->getWidth()I

    move-result v4

    iget-object v1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->getHeight()I

    move-result v5

    move-object v2, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->createContents(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/util/List;II)V

    return-object v0
.end method

.method protected deleteItem(Ljava/lang/String;)V
    .locals 1

    .line 340
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->deleteSheetTemplate(Ljava/lang/String;)V

    return-void
.end method

.method protected dialogTitleId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 101
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_Title:I

    return p1

    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_ContextMenu_PartInfo:I

    return p1
.end method

.method protected downloadProductDic(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
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

    .line 388
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->downloadProduct(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected getPageCount()I
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected isNeedUpdate(Ljava/lang/String;Ljava/util/Map;Z)Z
    .locals 1
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

    .line 398
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->needUpdate(Ljava/lang/String;Ljava/util/Map;Z)Z

    move-result p1

    return p1
.end method

.method protected loadPageData()Ljava/util/List;
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

    .line 56
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->loadPageDataArray()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected maxDisplayCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method protected pageDataArrayArrayForPageViewEx()Ljava/util/List;
    .locals 3
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

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 447
    invoke-virtual {p0}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->hasDownload()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected pageDataArrayIndexFromPageIndex(I)I
    .locals 1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    return p1
.end method

.method protected pageIndexFromPageDataArrayIndex(I)I
    .locals 2

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public partInfo(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 353
    const-string v0, "entityId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 354
    const-string/jumbo v1, "title"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 357
    invoke-virtual {p0, v0, p1, v1}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->partInfoInner(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public processSelectedNoteTemplate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 293
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 294
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->addPageWithDoc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected registerDounloadContent(Ljava/io/File;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ZLcom/metamoji/lb/LbConstants$DownloadMode;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
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

    .line 409
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    .line 410
    new-instance v1, Ljava/io/File;

    const-string v2, "partFile"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 411
    sget-object p1, Lcom/metamoji/lb/LbConstants$DownloadMode;->Trial:Lcom/metamoji/lb/LbConstants$DownloadMode;

    if-ne p6, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p2, p3, p1, p7}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->createLibraryDownloadSheetTemplateMetaData(Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;

    move-result-object p1

    .line 412
    invoke-virtual {v0, v1, p1, p4, p5}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->registerLibrarySheetTemplateFromFile(Ljava/io/File;Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 422
    invoke-virtual {v0, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->createPartDic(Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 417
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[NtLibraryNoteViewDialog] sheetTemplate regist FAILED! entityId="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected savePageDataArray()V
    .locals 2

    .line 195
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->savePageDataArray(Ljava/util/List;)V

    return-void
.end method

.method public selectPart(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 211
    const-string v0, "entityId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 212
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getLibrarySheetTemplateFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    const-string/jumbo v2, "sheetChangeType"

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    if-eqz v1, :cond_0

    .line 215
    sget-object v2, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AddPage:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    if-ne v1, v2, :cond_0

    .line 217
    sget-object v1, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AddPage:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    invoke-virtual {p0, p1, v0, v1}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->applySheetTemplate(Ljava/util/Map;Ljava/io/File;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;)V

    return-void

    .line 221
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->hasMultiSelectPages()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    sget-object v1, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->SelectedPages:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    invoke-virtual {p0, p1, v0, v1}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->applySheetTemplate(Ljava/util/Map;Ljava/io/File;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;)V

    return-void

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 228
    const-string v2, "LibrarySheetViewDialog#selectPart"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x1

    if-nez v0, :cond_3

    move v4, v3

    goto :goto_0

    .line 232
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/metamoji/nt/NtEditorWindowController;->pageCountFromStatefile(Ljava/io/File;)I

    move-result v4

    .line 234
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 235
    sget v6, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_SelectAlert_Msg:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 236
    invoke-virtual {p0}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v7

    .line 237
    invoke-virtual {v7, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    if-le v4, v3, :cond_4

    .line 240
    sget v3, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_SelectAlert_Sheets:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$1;

    invoke-direct {v4, p0, p1, v0}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$1;-><init>(Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;Ljava/util/Map;Ljava/io/File;)V

    invoke-virtual {v7, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 245
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_SelectAlert_Cancel:I

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {v7, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    :cond_4
    const/4 v4, 0x4

    .line 248
    new-array v4, v4, [Ljava/lang/CharSequence;

    sget v6, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_SelectAlert_AllPages:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v4, v8

    sget v6, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_SelectAlert_CurrentPage:I

    .line 249
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    sget v3, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_SelectAlert_CurrentPageAndAfter:I

    .line 250
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v4, v6

    sget v3, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    .line 251
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v4, v5

    .line 252
    new-instance v3, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$2;

    invoke-direct {v3, p0, p1, v0}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$2;-><init>(Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;Ljava/util/Map;Ljava/io/File;)V

    invoke-virtual {v7, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 270
    :goto_1
    new-instance p1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p1, v7}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 271
    invoke-virtual {p1, v1, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected systemOptionKeyCurrentPage()Ljava/lang/String;
    .locals 1

    .line 151
    const-string v0, "LibrarySheetCurrentPage"

    return-object v0
.end method

.method protected systemOptionKeyCurrentPageDefault()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected systemOptionKeyLastAccessId()Ljava/lang/String;
    .locals 1

    .line 169
    const-string v0, "LibrarySheetLastaccessId"

    return-object v0
.end method

.method protected updateItemName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    .line 369
    const-string p2, ""

    .line 372
    :cond_0
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->updateSheetTemplateName(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->updateAllPagePartViewTitle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected updateTextLabel()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_titleLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_imgView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    sget-object v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$3;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->getCurrentIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->pageTypeOfIndex(I)Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

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

    goto :goto_1

    .line 131
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->library_icon_store:I

    .line 132
    sget v1, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_Title_Store:I

    goto :goto_0

    .line 127
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->library_icon_system:I

    .line 128
    invoke-virtual {p0}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->tabButtonStringId()I

    move-result v1

    goto :goto_0

    .line 123
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->library_icon_bookmark:I

    .line 124
    sget v1, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_Title_Bookmark:I

    goto :goto_0

    .line 119
    :cond_4
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->library_icon_history:I

    .line 120
    sget v1, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_Title_History:I

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 139
    iget-object v3, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_titleLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_imgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected useNoteTemplate()Z
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    const-string/jumbo v1, "sheetChangeType"

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    if-eqz v0, :cond_0

    .line 63
    sget-object v1, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AddPage:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
