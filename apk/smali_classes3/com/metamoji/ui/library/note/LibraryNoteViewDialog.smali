.class public Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;
.super Lcom/metamoji/ui/library/item/LibraryViewDialog;
.source "LibraryNoteViewDialog.java"


# instance fields
.field _selected:Z

.field m_command:Lcom/metamoji/nt/NtCommand;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;-><init>()V

    .line 43
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    iput-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_command:Lcom/metamoji/nt/NtCommand;

    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->_selected:Z

    return-void
.end method


# virtual methods
.method protected addBookmarkAfterExec(Ljava/lang/String;ZZ)V
    .locals 1

    .line 330
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->updateSheetTemplateBookmarked(Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    .line 336
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    sget-object p3, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_BOOKMARK:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->savePageDataArray(Ljava/util/List;Lcom/metamoji/lb/LbConstants$LbPageType;)V

    :cond_0
    return-void
.end method

.method protected alertErrorMessage()V
    .locals 5

    .line 523
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 525
    const-string v1, "LibraryNoteViewDialog#alertErrorMessage"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 530
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 531
    sget v4, Lcom/metamoji/noteanytime/R$string;->Library_Note_Title:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 532
    sget v4, Lcom/metamoji/noteanytime/R$string;->Library_Note_Msg_Delete_Error:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 533
    sget v4, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 534
    new-instance v2, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v2, v3}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 535
    invoke-virtual {v2, v0, v1}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected checkSelectedNoteTemplate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected completedAlertMessageFormat(Z)Ljava/lang/String;
    .locals 1

    .line 470
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 471
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Store_Msg_Purchased_Style_Product:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Store_Msg_Download_Style_WithNum:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected createLibraryStoreViewDialog()Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;
    .locals 1

    .line 87
    new-instance v0, Lcom/metamoji/ui/library/note/LibraryNoteStoreViewDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/library/note/LibraryNoteStoreViewDialog;-><init>()V

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

    .line 75
    new-instance p2, Lcom/metamoji/ui/library/note/LibraryNoteStorePageView;

    invoke-direct {p2, p1}, Lcom/metamoji/ui/library/note/LibraryNoteStorePageView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/metamoji/ui/library/note/LibraryNotePageView;

    invoke-direct {p2, p1}, Lcom/metamoji/ui/library/note/LibraryNotePageView;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v0, p2

    .line 76
    iget-object p2, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->getWidth()I

    move-result v4

    iget-object p2, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

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

    .line 548
    new-instance v0, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;-><init>(Landroid/content/Context;)V

    .line 549
    iget-object v1, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->getWidth()I

    move-result v4

    iget-object v1, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

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

    .line 346
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->deleteSheetTemplate(Ljava/lang/String;)V

    return-void
.end method

.method protected dialogTitleId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 98
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Note_Title:I

    return p1

    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Note_ContextMenu_PartInfo:I

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

    .line 427
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->downloadProduct(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected getPageCount()I
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getTabButtonStringId()I
    .locals 1

    .line 108
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Tab_Style:I

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

    .line 437
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

    .line 63
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

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 560
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->hasDownload()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 563
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    iget-object v1, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_libraryPageDataArray:Ljava/util/List;

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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 358
    const-string v0, "entityId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 359
    const-string/jumbo v1, "title"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 362
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 363
    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoTitle:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    const-string v1, ""

    .line 368
    :cond_0
    invoke-virtual {p0, v0, p1, v1}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->partInfoInner(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public processSelectedNoteTemplate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    .line 292
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 294
    const-string v1, "MostRecentUsedNoteTemplateId"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v1, "MostRecentUsedSheetId"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    const-string v1, "noteTemplateDriveId"

    invoke-virtual {v0, v1, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    iget-object p2, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    const-string v0, "noteTemplateDocId"

    invoke-virtual {p2, v0, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    iget-object p1, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_command:Lcom/metamoji/nt/NtCommand;

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    if-eq p1, p2, :cond_1

    .line 304
    iget-object p1, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    const-string p2, "command"

    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_command:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 309
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 310
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_CREATE_DOCUMENT_FROM_DOCUMENTTEMPLATE:Lcom/metamoji/nt/NtCommand;

    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 312
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 313
    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;

    if-eqz p1, :cond_3

    .line 315
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 317
    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_CREATE_DOCUMENT_FROM_DOCUMENTTEMPLATE:Lcom/metamoji/nt/NtCommand;

    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_3
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

    .line 448
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    .line 449
    new-instance v1, Ljava/io/File;

    const-string v2, "partFile"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 450
    sget-object p1, Lcom/metamoji/lb/LbConstants$DownloadMode;->Trial:Lcom/metamoji/lb/LbConstants$DownloadMode;

    if-ne p6, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p2, p3, p1, p7}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->createLibraryDownloadSheetTemplateMetaData(Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;

    move-result-object p1

    .line 451
    invoke-virtual {v0, v1, p1, p4, p5}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->registerLibrarySheetTemplateFromFile(Ljava/io/File;Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 461
    invoke-virtual {v0, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->createPartDic(Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 456
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[NtLibraryNoteViewDialog] documentTemplate regist FAILED! entityId="

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

    .line 212
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->savePageDataArray(Ljava/util/List;)V

    return-void
.end method

.method public selectPart(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 227
    iget-boolean v0, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->_selected:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->_selected:Z

    .line 233
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->selectPartInner(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->updateSheetTemplateUseDate(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    .line 241
    const-string v2, "MostRecentUsedSheetId"

    invoke-virtual {v1, v2, p1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v2, "MostRecentUsedNoteTemplateId"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    const-string v2, "entityId"

    invoke-virtual {v1, v2, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    invoke-virtual {v0, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getLibrarySheetTemplateFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 249
    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    const-string/jumbo v1, "storageFile"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    iget-object p1, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_command:Lcom/metamoji/nt/NtCommand;

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    if-eq p1, v0, :cond_1

    .line 252
    iget-object p1, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    const-string v0, "command"

    iget-object v1, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_command:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 257
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_CREATE_DOCUMENT_FROM_DOCUMENTTEMPLATE:Lcom/metamoji/nt/NtCommand;

    iget-object v1, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 260
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 261
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;

    if-eqz p1, :cond_3

    .line 263
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 265
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_CREATE_DOCUMENT_FROM_DOCUMENTTEMPLATE:Lcom/metamoji/nt/NtCommand;

    iget-object v1, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public setCommand(Lcom/metamoji/nt/NtCommand;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_command:Lcom/metamoji/nt/NtCommand;

    return-void
.end method

.method protected systemOptionKeyCurrentPage()Ljava/lang/String;
    .locals 1

    .line 168
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

    .line 186
    const-string v0, "LibrarySheetLastaccessId"

    return-object v0
.end method

.method protected tabButtonStringId()I
    .locals 1

    .line 157
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Tab_Style:I

    return v0
.end method

.method protected updateAllPagePartViewTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 487
    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 489
    check-cast v3, Ljava/util/Map;

    .line 493
    const-string v4, "partsArray"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v5, v1

    .line 498
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 500
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 501
    const-string v7, "entityId"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 502
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 504
    const-string/jumbo v4, "title"

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-interface {v6, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->pageIndexFromPageDataArrayIndex(I)I

    move-result v4

    .line 509
    invoke-virtual {p0, v4}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->pageViewOfIndex(I)Lcom/metamoji/ui/library/item/LibraryPageView;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 511
    const-string/jumbo v6, "type"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {v4, v3, v5}, Lcom/metamoji/ui/library/item/LibraryPageView;->updatePartViewTitle(Lcom/metamoji/lb/LbConstants$LbPageType;I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected updateItemName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 379
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 381
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoTitle:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    .line 403
    :cond_2
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->updateSheetTemplateName(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->updateAllPagePartViewTitle(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 410
    const-string p2, "[LibraryNoteViewDialog] updateItemName ERROR!"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->alertErrorMessage()V

    return-void
.end method

.method protected updateTextLabel()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_titleLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_imgView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    sget-object v0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog$1;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->getCurrentIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->pageTypeOfIndex(I)Lcom/metamoji/lb/LbConstants$LbPageType;

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

    .line 138
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->library_icon_store:I

    .line 139
    sget v1, Lcom/metamoji/noteanytime/R$string;->Library_Note_Title_Store:I

    goto :goto_0

    .line 134
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->library_icon_system:I

    .line 135
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->tabButtonStringId()I

    move-result v1

    goto :goto_0

    .line 130
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->library_icon_bookmark:I

    .line 131
    sget v1, Lcom/metamoji/noteanytime/R$string;->Library_Note_Title_Bookmark:I

    goto :goto_0

    .line 126
    :cond_4
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->library_icon_history:I

    .line 127
    sget v1, Lcom/metamoji/noteanytime/R$string;->Library_Note_Title_History:I

    .line 145
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 146
    iget-object v3, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_titleLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->m_imgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected useFooter()Z
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    return v0
.end method

.method protected useNoteTemplate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
