.class public Lcom/metamoji/nt/itemlist/NtJumpList;
.super Lcom/metamoji/nt/itemlist/NtItemList;
.source "NtJumpList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/itemlist/NtJumpList$JumpListAdapter;,
        Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/FrameLayout;",
        ":",
        "Lcom/metamoji/nt/itemlist/NtItemListScrollView;",
        ">",
        "Lcom/metamoji/nt/itemlist/NtItemList<",
        "TT;",
        "Lcom/metamoji/nt/NtJumpLocation;",
        ">;"
    }
.end annotation


# instance fields
.field private _note:Lcom/metamoji/nt/NtNoteController;

.field private m_add:Landroid/widget/ImageButton;

.field private m_back:Landroid/widget/ImageButton;

.field private m_docSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/nt/NtDocumentSettings;",
            ">;"
        }
    .end annotation
.end field

.field private m_onDocumentSettingsChangedListener:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_onThumbnailChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/nt/NtPageController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mhandleBackButtonTap(Lcom/metamoji/nt/itemlist/NtJumpList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->handleBackButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCommand(Lcom/metamoji/nt/itemlist/NtJumpList;Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/itemlist/NtJumpList;->handleCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectLinkJump(Lcom/metamoji/nt/itemlist/NtJumpList;IZZ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/itemlist/NtJumpList;->selectLinkJump(IZZ)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/metamoji/nt/itemlist/NtItemList;-><init>()V

    return-void
.end method

.method private chgJumpAttr(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;I)V
    .locals 12

    .line 468
    sget-object v0, Lcom/metamoji/nt/NtLinkJump$Type;->ActiveLocation:Lcom/metamoji/nt/NtLinkJump$Type;

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 470
    sget-object v0, Lcom/metamoji/nt/NtLinkJump$Type;->Location:Lcom/metamoji/nt/NtLinkJump$Type;

    :cond_0
    move-object v4, v0

    .line 473
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->isMultiSelectMode()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 474
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectedItemIndexes()Ljava/util/ArrayList;

    move-result-object p3

    goto :goto_0

    .line 476
    :cond_1
    iget p3, p2, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;->position:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 478
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p3, v0

    .line 482
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getLinkJumpManager()Lcom/metamoji/nt/NtLinkJumpManager;

    move-result-object v0

    .line 484
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 485
    invoke-virtual {p0, v10}, Lcom/metamoji/nt/itemlist/NtJumpList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/metamoji/nt/NtJumpLocation;

    .line 486
    invoke-virtual {v11}, Lcom/metamoji/nt/NtJumpLocation;->getSize()Lcom/metamoji/cm/SizeF;

    move-result-object v1

    iget v8, v1, Lcom/metamoji/cm/SizeF;->width:F

    .line 487
    invoke-virtual {v11}, Lcom/metamoji/nt/NtJumpLocation;->getSize()Lcom/metamoji/cm/SizeF;

    move-result-object v1

    iget v9, v1, Lcom/metamoji/cm/SizeF;->height:F

    .line 488
    new-instance v1, Lcom/metamoji/nt/NtJumpLocation;

    invoke-virtual {v11}, Lcom/metamoji/nt/NtJumpLocation;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/metamoji/nt/NtJumpLocation;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/metamoji/nt/NtJumpLocation;->getScale()F

    move-result v5

    .line 489
    invoke-virtual {v11}, Lcom/metamoji/nt/NtJumpLocation;->getOffset()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11}, Lcom/metamoji/nt/NtJumpLocation;->getOffset()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-direct/range {v1 .. v9}, Lcom/metamoji/nt/NtJumpLocation;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtLinkJump$Type;FFFFF)V

    .line 490
    invoke-virtual {v11}, Lcom/metamoji/nt/NtJumpLocation;->getThumbnail()Lcom/metamoji/cm/Blob;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtJumpLocation;->setThumbnail(Lcom/metamoji/cm/Blob;)V

    .line 491
    invoke-virtual {v0, v1, v10}, Lcom/metamoji/nt/NtLinkJumpManager;->replaceLink(Lcom/metamoji/nt/NtJumpLocation;I)V

    .line 492
    invoke-direct {p0, v1, v10}, Lcom/metamoji/nt/itemlist/NtJumpList;->replaceLink(Lcom/metamoji/nt/NtJumpLocation;I)V

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 494
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/itemlist/NtJumpList;->handleUnselectModeMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;Z)V

    return-void
.end method

.method private handleAllSelect(Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;)V
    .locals 0

    .line 577
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->checkAllItem()V

    return-void
.end method

.method private handleBackButtonTap()V
    .locals 3

    .line 548
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 549
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 550
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_BACK:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method private handleCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;)V
    .locals 4

    .line 398
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 399
    sget-object v1, Lcom/metamoji/nt/itemlist/NtJumpList$6;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 423
    :pswitch_0
    invoke-direct {p0, v0, p2, v2}, Lcom/metamoji/nt/itemlist/NtJumpList;->chgJumpAttr(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;I)V

    return-void

    .line 420
    :pswitch_1
    invoke-direct {p0, v0, p2, v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->chgJumpAttr(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;I)V

    return-void

    .line 417
    :pswitch_2
    invoke-direct {p0, v0, p2, v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->handleUnselectModeMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;Z)V

    return-void

    .line 414
    :pswitch_3
    invoke-direct {p0, v0, p2}, Lcom/metamoji/nt/itemlist/NtJumpList;->handleSelectModeMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;)V

    return-void

    .line 410
    :pswitch_4
    invoke-direct {p0, v0, p2}, Lcom/metamoji/nt/itemlist/NtJumpList;->handleMove(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;)V

    .line 411
    invoke-direct {p0, v0, p2, v2}, Lcom/metamoji/nt/itemlist/NtJumpList;->handleUnselectModeMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;Z)V

    return-void

    .line 406
    :pswitch_5
    invoke-direct {p0, v0, p2}, Lcom/metamoji/nt/itemlist/NtJumpList;->handleRemoveMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;)V

    .line 407
    invoke-direct {p0, v0, p2, v2}, Lcom/metamoji/nt/itemlist/NtJumpList;->handleUnselectModeMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;Z)V

    return-void

    .line 401
    :pswitch_6
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 402
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_MEMORY_LOCATION:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v3, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 403
    invoke-direct {p0, v0, p2, v2}, Lcom/metamoji/nt/itemlist/NtJumpList;->handleUnselectModeMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleMove(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;)V
    .locals 7

    .line 511
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectedIndex()I

    move-result v0

    iget v1, p2, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;->from:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 514
    :goto_0
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 515
    iget v4, p2, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;->from:I

    invoke-virtual {p0, v4}, Lcom/metamoji/nt/itemlist/NtJumpList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/nt/NtLinkJump;

    .line 516
    iget v5, p2, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;->to:I

    invoke-virtual {p0, v5}, Lcom/metamoji/nt/itemlist/NtJumpList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/nt/NtLinkJump;

    .line 517
    const-string v6, "fromLinkJumpIndex"

    invoke-virtual {v1, v6, v4}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    const-string/jumbo v4, "toLinkJumpIndex"

    invoke-virtual {v1, v4, v5}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_MOVE_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v4, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 522
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    iget v1, p2, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;->from:I

    iget v4, p2, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;->to:I

    invoke-virtual {p1, v1, v4, v2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->move(IIZ)V

    if-eqz v0, :cond_1

    .line 526
    iget p1, p2, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;->to:I

    invoke-direct {p0, p1, v3, v3}, Lcom/metamoji/nt/itemlist/NtJumpList;->selectLinkJumpAsync(IZZ)V

    :cond_1
    return-void
.end method

.method private handleRemoveMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;)V
    .locals 7

    .line 435
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->isMultiSelectMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectedItemIndexes()Ljava/util/ArrayList;

    move-result-object p2

    .line 438
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_0

    .line 440
    :cond_0
    iget p2, p2, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;->position:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v2

    move-object v6, v0

    move v0, p2

    move-object p2, v6

    .line 448
    :goto_0
    new-instance v3, Lcom/metamoji/cm/CmContext;

    invoke-direct {v3}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 449
    const-string v4, "linkjumps"

    invoke-virtual {v3, v4, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 450
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v4

    sget-object v5, Lcom/metamoji/nt/NtCommand;->CMD_DELETE_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v4, v5, v3}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 453
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    .line 454
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 455
    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/metamoji/nt/itemlist/NtJumpList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtJumpLocation;

    if-eqz v3, :cond_1

    .line 456
    iget-object v4, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v4, v3, v2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->remove(Ljava/lang/Object;Z)V

    goto :goto_1

    .line 460
    :cond_2
    invoke-direct {p0, v0, v2, v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->selectLinkJumpAsync(IZZ)V

    .line 463
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->updateJumpLabel()V

    return-void
.end method

.method private handleSelectModeMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;)V
    .locals 0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 533
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/itemlist/NtJumpList;->setMultiselectMode(ZZ)V

    return-void
.end method

.method private handleUnselectModeMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;Z)V
    .locals 0

    const/4 p1, 0x0

    .line 540
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/nt/itemlist/NtJumpList;->setMultiselectMode(ZZ)V

    return-void
.end method

.method private replaceLink(Lcom/metamoji/nt/NtJumpLocation;I)V
    .locals 3

    .line 500
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/itemlist/NtJumpList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtJumpLocation;

    if-eqz v0, :cond_0

    .line 502
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->remove(Ljava/lang/Object;Z)V

    .line 503
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v0, p1, p2, v2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->insert(Ljava/lang/Object;IZ)V

    :cond_0
    return-void
.end method

.method private searchItem(II)I
    .locals 4

    add-int v0, p1, p2

    .line 685
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getCount()I

    move-result v1

    :goto_0
    if-ltz v0, :cond_2

    if-gt v1, v0, :cond_0

    goto :goto_1

    .line 689
    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtJumpLocation;

    .line 690
    invoke-virtual {v2}, Lcom/metamoji/nt/NtJumpLocation;->getLinkJumpType()Lcom/metamoji/nt/NtLinkJump$Type;

    move-result-object v2

    .line 691
    sget-object v3, Lcom/metamoji/nt/NtLinkJump$Type;->Location:Lcom/metamoji/nt/NtLinkJump$Type;

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/2addr v0, p2

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private selectLinkJump(IZZ)Z
    .locals 6

    .line 311
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eqz p3, :cond_5

    .line 314
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getCount()I

    move-result v1

    const/4 v3, 0x0

    if-gt v1, p1, :cond_0

    return v3

    .line 315
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtJumpList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtLinkJump;

    if-nez v1, :cond_1

    return v3

    .line 317
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v4

    .line 318
    invoke-virtual {v1, v4}, Lcom/metamoji/nt/NtLinkJump;->hasMemoryLocation(Lcom/metamoji/nt/NtNoteController;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 319
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/metamoji/nt/NtLinkJump;->performJump(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtCommandManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 322
    invoke-virtual {v4}, Lcom/metamoji/nt/NtNoteController;->getJumpBackLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 323
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move v3, v2

    .line 324
    :cond_2
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_back:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v3}, Lcom/metamoji/nt/itemlist/NtJumpList;->setViewEnabled(Landroid/view/View;Z)V

    goto :goto_0

    :cond_3
    return v3

    .line 332
    :cond_4
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLinkJump;->showJumpErrorDialog()V

    return v3

    :cond_5
    :goto_0
    if-ltz p1, :cond_6

    .line 337
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_6

    xor-int/2addr p3, v2

    .line 338
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/nt/itemlist/NtItemList;->selectItem(IZZ)V

    .line 343
    :cond_6
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 345
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->updateJumpLabel()V

    :cond_7
    return v2
.end method

.method private selectLinkJumpAsync(IZZ)V
    .locals 6

    if-gez p1, :cond_0

    return-void

    .line 355
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    .line 356
    new-instance v0, Lcom/metamoji/nt/itemlist/NtJumpList$5;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/nt/itemlist/NtJumpList$5;-><init>(Lcom/metamoji/nt/itemlist/NtJumpList;Lcom/metamoji/cm/CmTaskManager;IZZ)V

    invoke-virtual {v2, v0}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public EnableJumpBackButton()V
    .locals 2

    .line 841
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_back:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->setViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public GetJumpItems(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/nt/NtJumpLocation;",
            ">;"
        }
    .end annotation

    .line 716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 717
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 718
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtJumpLocation;

    if-eqz v2, :cond_0

    .line 720
    invoke-virtual {v2}, Lcom/metamoji/nt/NtJumpLocation;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 721
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public addJump(ILandroid/graphics/RectF;Lcom/metamoji/nt/NtLinkJump$Type;)V
    .locals 4

    .line 556
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectedIndex()I

    move-result v0

    .line 557
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 558
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v3

    .line 559
    invoke-virtual {v3}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    .line 560
    invoke-virtual {v3, v0, p1, p2, p3}, Lcom/metamoji/nt/NtNoteController;->getLocation(IILandroid/graphics/RectF;Lcom/metamoji/nt/NtLinkJump$Type;)Lcom/metamoji/nt/NtJumpLocation;

    move-result-object p1

    .line 563
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getCount()I

    move-result p2

    if-nez p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v2

    .line 569
    :goto_0
    iget-object p2, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {p2, p1, v0, v2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->insert(Ljava/lang/Object;IZ)V

    .line 571
    invoke-direct {p0, v0, v2, v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->selectLinkJumpAsync(IZZ)V

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 168
    invoke-super {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->destroy()V

    .line 170
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->_note:Lcom/metamoji/nt/NtNoteController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onThumbnailChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_onThumbnailChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 172
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->_note:Lcom/metamoji/nt/NtNoteController;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_docSettings:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, v0, Lcom/metamoji/nt/NtDocumentSettings;->onPropertyChangedEvent:Lcom/metamoji/cm/CmEventListener;

    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_onDocumentSettingsChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_add:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_add:Landroid/widget/ImageButton;

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_back:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_back:Landroid/widget/ImageButton;

    :cond_3
    return-void
.end method

.method protected getAdapter(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/nt/itemlist/NtItemListAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtNoteController;",
            ")",
            "Lcom/metamoji/nt/itemlist/NtItemListAdapter<",
            "Lcom/metamoji/nt/NtJumpLocation;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    return-object p1

    .line 274
    :cond_0
    new-instance v0, Lcom/metamoji/nt/itemlist/NtJumpList$JumpListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/metamoji/nt/itemlist/NtJumpList$JumpListAdapter;-><init>(Landroid/content/Context;Lcom/metamoji/nt/NtNoteController;)V

    return-object v0
.end method

.method protected getContextMenus(Landroid/view/View;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;"
        }
    .end annotation

    .line 584
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 585
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    .line 586
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_DELETE_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 590
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 591
    new-instance v1, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;

    invoke-direct {v1}, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;-><init>()V

    .line 592
    iput p2, v1, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;->position:I

    .line 594
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->isMultiSelectMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectionCount()I

    move-result v2

    if-lez v2, :cond_c

    .line 595
    :cond_1
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_DELETE_JUMP:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Remove:I

    invoke-direct {v2, v4, v1, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->isMultiSelectMode()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectionCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 601
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectedItemIndexes()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v2, v3

    move v5, v2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 602
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/metamoji/nt/itemlist/NtJumpList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/nt/NtJumpLocation;

    .line 603
    invoke-virtual {v6}, Lcom/metamoji/nt/NtJumpLocation;->getLinkJumpType()Lcom/metamoji/nt/NtLinkJump$Type;

    move-result-object v6

    .line 604
    sget-object v7, Lcom/metamoji/nt/NtLinkJump$Type;->Generic:Lcom/metamoji/nt/NtLinkJump$Type;

    if-eq v6, v7, :cond_3

    sget-object v7, Lcom/metamoji/nt/NtLinkJump$Type;->Page:Lcom/metamoji/nt/NtLinkJump$Type;

    if-ne v6, v7, :cond_4

    .line 605
    :cond_3
    sget-object v6, Lcom/metamoji/nt/NtLinkJump$Type;->ActiveLocation:Lcom/metamoji/nt/NtLinkJump$Type;

    :cond_4
    if-eqz v5, :cond_5

    move v5, v4

    move-object v0, v6

    goto :goto_0

    :cond_5
    if-eq v0, v6, :cond_2

    move v2, v4

    goto :goto_0

    .line 615
    :cond_6
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/itemlist/NtJumpList;->getItemAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/nt/NtJumpLocation;

    .line 616
    invoke-virtual {p2}, Lcom/metamoji/nt/NtJumpLocation;->getLinkJumpType()Lcom/metamoji/nt/NtLinkJump$Type;

    move-result-object p2

    .line 617
    sget-object v0, Lcom/metamoji/nt/NtLinkJump$Type;->Generic:Lcom/metamoji/nt/NtLinkJump$Type;

    if-eq p2, v0, :cond_7

    sget-object v0, Lcom/metamoji/nt/NtLinkJump$Type;->Page:Lcom/metamoji/nt/NtLinkJump$Type;

    if-ne p2, v0, :cond_8

    .line 618
    :cond_7
    sget-object p2, Lcom/metamoji/nt/NtLinkJump$Type;->ActiveLocation:Lcom/metamoji/nt/NtLinkJump$Type;

    :cond_8
    move-object v0, p2

    move v2, v3

    .line 622
    :cond_9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 624
    new-instance v5, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v5}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 625
    sget v6, Lcom/metamoji/noteanytime/R$string;->Menu_JumpType_Normal:I

    invoke-virtual {v5, v6}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    if-eqz v2, :cond_a

    .line 626
    sget-object v6, Lcom/metamoji/nt/NtLinkJump$Type;->ActiveLocation:Lcom/metamoji/nt/NtLinkJump$Type;

    if-ne v0, v6, :cond_a

    .line 627
    sget-object v6, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    invoke-virtual {v5, v6}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    goto :goto_1

    .line 629
    :cond_a
    sget-object v6, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    invoke-virtual {v5, v6}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    .line 631
    :goto_1
    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_ATTR_SET_NORMAL:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v5, v6}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 632
    invoke-virtual {v5, v1}, Lcom/metamoji/ui/UiMenuItem;->set_options(Ljava/lang/Object;)V

    .line 633
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    new-instance v5, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v5}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 637
    sget v6, Lcom/metamoji/noteanytime/R$string;->Menu_JumpType_Skip:I

    invoke-virtual {v5, v6}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    if-eqz v2, :cond_b

    .line 638
    sget-object v2, Lcom/metamoji/nt/NtLinkJump$Type;->Location:Lcom/metamoji/nt/NtLinkJump$Type;

    if-ne v0, v2, :cond_b

    .line 639
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    invoke-virtual {v5, v0}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    goto :goto_2

    .line 641
    :cond_b
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    invoke-virtual {v5, v0}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    .line 643
    :goto_2
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_ATTR_SET_SKIP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v5, v0}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 644
    invoke-virtual {v5, v1}, Lcom/metamoji/ui/UiMenuItem;->set_options(Ljava/lang/Object;)V

    .line 645
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget v2, Lcom/metamoji/noteanytime/R$string;->Menu_JumpType:I

    invoke-direct {v0, p2, v2, v4, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    .line 649
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_c
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->isMultiSelectMode()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 654
    new-instance p2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_LINKJUMP_MULTISELECT_END:Lcom/metamoji/nt/NtCommand;

    sget v2, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Unselected_Mode:I

    invoke-direct {p2, v0, v1, v2}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 656
    :cond_d
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getCount()I

    move-result p2

    if-le p2, v3, :cond_e

    .line 657
    new-instance p2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_LINKJUMP_MULTISELECT_START:Lcom/metamoji/nt/NtCommand;

    sget v2, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Selected_Mode:I

    invoke-direct {p2, v0, v1, v2}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    return-object p1
.end method

.method public getNextLinkJump()I
    .locals 4

    .line 701
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectedIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 703
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectedIndex()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/metamoji/nt/itemlist/NtJumpList;->searchItem(II)I

    move-result v2

    if-ne v2, v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public getPrevLinkJump()I
    .locals 3

    .line 708
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectedIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 710
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectedIndex()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->searchItem(II)I

    move-result v2

    if-ne v2, v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public haveNext()Z
    .locals 3

    .line 669
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectedIndex()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->searchItem(II)I

    move-result v0

    .line 670
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectedIndex()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public havePrev()Z
    .locals 2

    .line 678
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectedIndex()I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->searchItem(II)I

    move-result v0

    .line 679
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectedIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public initializeList(Lcom/metamoji/nt/NtNoteController;I)V
    .locals 3

    .line 70
    invoke-super {p0, p1}, Lcom/metamoji/nt/itemlist/NtItemList;->initializeList(Lcom/metamoji/nt/NtNoteController;)V

    .line 71
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->_note:Lcom/metamoji/nt/NtNoteController;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getCount()I

    move-result v2

    if-ltz v2, :cond_0

    .line 74
    invoke-direct {p0, v1, v0, v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->selectLinkJump(IZZ)Z

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 77
    invoke-direct {p0, p2, v0, v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->selectLinkJump(IZZ)Z

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getView()Landroid/view/View;

    move-result-object p2

    sget v2, Lcom/metamoji/noteanytime/R$id;->nt_jumplist_add:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_add:Landroid/widget/ImageButton;

    if-eqz p2, :cond_2

    .line 82
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p2

    .line 83
    invoke-virtual {p2}, Lcom/metamoji/nt/NtDocument;->isReadOnly()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 85
    iget-object p2, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_add:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2, v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->setViewEnabled(Landroid/view/View;Z)V

    .line 87
    :cond_1
    iget-object p2, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_add:Landroid/widget/ImageButton;

    new-instance v2, Lcom/metamoji/nt/itemlist/NtJumpList$1;

    invoke-direct {v2, p0}, Lcom/metamoji/nt/itemlist/NtJumpList$1;-><init>(Lcom/metamoji/nt/itemlist/NtJumpList;)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getView()Landroid/view/View;

    move-result-object p2

    sget v2, Lcom/metamoji/noteanytime/R$id;->nt_jumplist_back:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_back:Landroid/widget/ImageButton;

    if-eqz p2, :cond_4

    .line 105
    new-instance v2, Lcom/metamoji/nt/itemlist/NtJumpList$2;

    invoke-direct {v2, p0}, Lcom/metamoji/nt/itemlist/NtJumpList$2;-><init>(Lcom/metamoji/nt/itemlist/NtJumpList;)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getJumpBackLink()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 117
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    .line 118
    :goto_1
    iget-object p2, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_back:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2, v0}, Lcom/metamoji/nt/itemlist/NtJumpList;->setViewEnabled(Landroid/view/View;Z)V

    .line 121
    :cond_4
    new-instance p2, Lcom/metamoji/nt/itemlist/NtJumpList$3;

    invoke-direct {p2, p0}, Lcom/metamoji/nt/itemlist/NtJumpList$3;-><init>(Lcom/metamoji/nt/itemlist/NtJumpList;)V

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_onThumbnailChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 132
    iget-object p2, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->_note:Lcom/metamoji/nt/NtNoteController;

    iget-object p2, p2, Lcom/metamoji/nt/NtNoteController;->onThumbnailChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_onThumbnailChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 135
    new-instance p2, Lcom/metamoji/nt/itemlist/NtJumpList$4;

    invoke-direct {p2, p0, p1}, Lcom/metamoji/nt/itemlist/NtJumpList$4;-><init>(Lcom/metamoji/nt/itemlist/NtJumpList;Lcom/metamoji/nt/NtNoteController;)V

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_onDocumentSettingsChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 155
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    .line 156
    const-string p2, "MMJNtDocumentSettings"

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 157
    instance-of p2, p1, Lcom/metamoji/nt/NtDocumentSettings;

    if-eqz p2, :cond_5

    .line 158
    check-cast p1, Lcom/metamoji/nt/NtDocumentSettings;

    .line 159
    iget-object p2, p1, Lcom/metamoji/nt/NtDocumentSettings;->onPropertyChangedEvent:Lcom/metamoji/cm/CmEventListener;

    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_onDocumentSettingsChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 160
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_docSettings:Ljava/lang/ref/WeakReference;

    :cond_5
    return-void
.end method

.method protected isShowContextMenuOnSelectedItemShortTap()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected move(II)V
    .locals 3

    .line 375
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectedIndex()I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 377
    :goto_0
    new-instance v2, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;

    invoke-direct {v2}, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;-><init>()V

    .line 378
    iput p1, v2, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;->from:I

    .line 379
    iput p2, v2, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;->to:I

    .line 380
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_MOVE_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-direct {p0, p1, v2}, Lcom/metamoji/nt/itemlist/NtJumpList;->handleCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;)V

    if-eqz v0, :cond_1

    .line 383
    invoke-direct {p0, p2, v1, v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->selectLinkJump(IZZ)Z

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 61
    sget p3, Lcom/metamoji/noteanytime/R$layout;->nt_jumplist:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method onPageChanged(Lcom/metamoji/df/controller/PageEventContext;)V
    .locals 0

    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 392
    check-cast p3, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;

    .line 393
    check-cast p2, Lcom/metamoji/nt/NtCommand;

    invoke-direct {p0, p2, p3}, Lcom/metamoji/nt/itemlist/NtJumpList;->handleCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;)V

    return-void
.end method

.method onThumbnailChanged(Lcom/metamoji/nt/NtPageController;)V
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 199
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->_note:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getLinkJumpManager()Lcom/metamoji/nt/NtLinkJumpManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 206
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 207
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtJumpLocation;

    if-eqz v2, :cond_3

    .line 210
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/metamoji/nt/NtJumpLocation;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 212
    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->_note:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {p0, v3, v2}, Lcom/metamoji/nt/itemlist/NtJumpList;->updateThumbnail(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtJumpLocation;)Lcom/metamoji/cm/Blob;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 215
    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtJumpLocation;->setThumbnail(Lcom/metamoji/cm/Blob;)V

    .line 216
    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtLinkJumpManager;->replaceLink(Lcom/metamoji/nt/NtJumpLocation;I)V

    .line 218
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->getViewAt(I)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 222
    :cond_2
    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->setThumbnail(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public selectItem(IZZ)V
    .locals 0

    xor-int/lit8 p3, p3, 0x1

    .line 296
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/itemlist/NtJumpList;->selectLinkJumpAsync(IZZ)V

    return-void
.end method

.method public setAddButtonEnabled(Z)V
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_add:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/itemlist/NtJumpList;->setViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setJumpBackButtonEnabled(Z)V
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList;->m_back:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/itemlist/NtJumpList;->setViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public updateTabLabel(Lcom/metamoji/nt/NtNoteController;Landroid/widget/TextView;)V
    .locals 2

    .line 284
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectedIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 285
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 287
    const-string p1, "0/0"

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateThumbnail(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtJumpLocation;)Lcom/metamoji/cm/Blob;
    .locals 10

    .line 233
    invoke-virtual {p2}, Lcom/metamoji/nt/NtJumpLocation;->getOffset()Landroid/graphics/PointF;

    move-result-object v0

    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 234
    invoke-virtual {p2}, Lcom/metamoji/nt/NtJumpLocation;->getOffset()Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->y:F

    .line 237
    invoke-virtual {p2}, Lcom/metamoji/nt/NtJumpLocation;->getScale()F

    move-result v0

    .line 239
    invoke-virtual {p2}, Lcom/metamoji/nt/NtJumpLocation;->getSize()Lcom/metamoji/cm/SizeF;

    move-result-object v1

    iget v5, v1, Lcom/metamoji/cm/SizeF;->width:F

    .line 240
    invoke-virtual {p2}, Lcom/metamoji/nt/NtJumpLocation;->getSize()Lcom/metamoji/cm/SizeF;

    move-result-object v1

    iget v6, v1, Lcom/metamoji/cm/SizeF;->height:F

    .line 241
    invoke-virtual {p2}, Lcom/metamoji/nt/NtJumpLocation;->getLinkJumpType()Lcom/metamoji/nt/NtLinkJump$Type;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtLinkJump$Type;->ActiveLocation:Lcom/metamoji/nt/NtLinkJump$Type;

    const/4 v7, 0x0

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/metamoji/nt/NtJumpLocation;->getLinkJumpType()Lcom/metamoji/nt/NtLinkJump$Type;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtLinkJump$Type;->Location:Lcom/metamoji/nt/NtLinkJump$Type;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v9, v7

    move v7, v0

    move v0, v9

    goto :goto_3

    :cond_1
    :goto_1
    const/high16 v0, 0x42a00000    # 80.0f

    div-float v1, v5, v0

    const/4 v2, 0x0

    cmpl-float v8, v5, v2

    if-eqz v8, :cond_6

    cmpl-float v2, v6, v2

    if-eqz v2, :cond_6

    div-float v1, v5, v6

    float-to-double v1, v1

    const-wide v7, 0x3ff3ae147ae147aeL    # 1.23

    cmpl-double v7, v1, v7

    if-ltz v7, :cond_2

    const-wide v7, 0x3ff6e147ae147ae1L    # 1.43

    cmpg-double v7, v1, v7

    if-gtz v7, :cond_2

    goto :goto_2

    :cond_2
    const-wide v7, 0x3fe4cccccccccccdL    # 0.65

    cmpl-double v7, v1, v7

    if-ltz v7, :cond_3

    const-wide v7, 0x3feb333333333333L    # 0.85

    cmpg-double v7, v1, v7

    if-gtz v7, :cond_3

    const/high16 v0, 0x42700000    # 60.0f

    goto :goto_2

    :cond_3
    const-wide v7, 0x3ffae147ae147ae1L    # 1.68

    cmpl-double v7, v1, v7

    if-ltz v7, :cond_4

    const-wide v7, 0x3ffe147ae147ae14L    # 1.88

    cmpg-double v7, v1, v7

    if-gtz v7, :cond_4

    goto :goto_2

    :cond_4
    const-wide v7, 0x3fdd70a3d70a3d71L    # 0.46

    cmpl-double v7, v1, v7

    if-ltz v7, :cond_5

    const-wide v7, 0x3fe51eb851eb851fL    # 0.66

    cmpg-double v1, v1, v7

    if-gtz v1, :cond_5

    const/high16 v0, 0x42340000    # 45.0f

    :cond_5
    :goto_2
    div-float/2addr v0, v5

    const/4 v7, 0x1

    goto :goto_0

    :cond_6
    move v0, v7

    move v7, v1

    :goto_3
    if-eqz v0, :cond_7

    .line 263
    invoke-virtual {p2}, Lcom/metamoji/nt/NtJumpLocation;->getPageId()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/nt/NtNoteController;->makeThumbnail(Ljava/lang/String;FFFFF)Lcom/metamoji/cm/Blob;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method
