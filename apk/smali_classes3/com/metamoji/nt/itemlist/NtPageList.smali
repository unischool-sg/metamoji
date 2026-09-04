.class public Lcom/metamoji/nt/itemlist/NtPageList;
.super Lcom/metamoji/nt/itemlist/NtItemList;
.source "NtPageList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/itemlist/NtPageList$PageListAdapter;,
        Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;
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
        "Lcom/metamoji/nt/NtPageController;",
        ">;"
    }
.end annotation


# instance fields
.field private _note:Lcom/metamoji/nt/NtNoteController;

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

.field private m_onPageChangeEventListener:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/df/controller/PageEventContext;",
            ">;"
        }
    .end annotation
.end field

.field private m_onPaperSizeChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/df/controller/DfPageController;",
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

.field private tagSpriteUpdateListener:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mcanPerformChangeSchoolPageTypeCommand(Lcom/metamoji/nt/itemlist/NtPageList;Lcom/metamoji/nt/NtCommand;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/itemlist/NtPageList;->canPerformChangeSchoolPageTypeCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCommandManager(Lcom/metamoji/nt/itemlist/NtPageList;)Lcom/metamoji/nt/NtCommandManager;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mselectPage(Lcom/metamoji/nt/itemlist/NtPageList;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/itemlist/NtPageList;->selectPage(IZZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/metamoji/nt/itemlist/NtItemList;-><init>()V

    return-void
.end method

.method private addSchoolPageTypeMenu(Ljava/util/List;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/nt/itemlist/NtPageList<",
            "TT;>.ContextMenuOptions;)V"
        }
    .end annotation

    .line 1204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1207
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_NORMAL:Lcom/metamoji/nt/NtCommand;

    iget v2, p2, Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;->position:I

    invoke-direct {p0, v1, v2}, Lcom/metamoji/nt/itemlist/NtPageList;->canPerformChangeSchoolPageTypeCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1208
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_NORMAL:Lcom/metamoji/nt/NtCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_PageType_Normal:I

    invoke-direct {v1, v2, p2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    :cond_0
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_PERSONAL_USER:Lcom/metamoji/nt/NtCommand;

    iget v2, p2, Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;->position:I

    invoke-direct {p0, v1, v2}, Lcom/metamoji/nt/itemlist/NtPageList;->canPerformChangeSchoolPageTypeCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1212
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_PERSONAL_USER:Lcom/metamoji/nt/NtCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_PageType_Personal_User:I

    invoke-direct {v1, v2, p2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    :cond_1
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_PERSONAL_GROUP:Lcom/metamoji/nt/NtCommand;

    iget v2, p2, Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;->position:I

    invoke-direct {p0, v1, v2}, Lcom/metamoji/nt/itemlist/NtPageList;->canPerformChangeSchoolPageTypeCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1216
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_PERSONAL_GROUP:Lcom/metamoji/nt/NtCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_PageType_Personal_Group:I

    invoke-direct {v1, v2, p2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    :cond_2
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_PERSONAL_CLASS:Lcom/metamoji/nt/NtCommand;

    iget v2, p2, Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;->position:I

    invoke-direct {p0, v1, v2}, Lcom/metamoji/nt/itemlist/NtPageList;->canPerformChangeSchoolPageTypeCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1220
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_PERSONAL_CLASS:Lcom/metamoji/nt/NtCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_PageType_Personal_Class:I

    invoke-direct {v1, v2, p2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 1223
    new-instance p2, Lcom/metamoji/ui/UiMenuItem;

    sget v1, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_PageType:I

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2, v2}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    .line 1224
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private canPerformChangeSchoolPageTypeCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 12

    .line 1233
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1238
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->isMultiSelectMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1239
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getSelectedItemIndexes()Ljava/util/ArrayList;

    move-result-object p2

    .line 1240
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_1

    return v1

    .line 1243
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1245
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    .line 1252
    :cond_3
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1253
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    if-eqz v0, :cond_a

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    if-ltz p2, :cond_6

    .line 1259
    sget-object v0, Lcom/metamoji/nt/itemlist/NtPageList$12;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 p1, 0x3

    goto :goto_1

    :pswitch_1
    const/4 p1, 0x2

    goto :goto_1

    :pswitch_2
    move p1, v2

    goto :goto_1

    :pswitch_3
    move p1, v1

    .line 1275
    :goto_1
    invoke-virtual {v3, p2}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1276
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p2

    if-ne p2, p1, :cond_6

    :cond_5
    return v1

    .line 1282
    :cond_6
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1283
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->isReadOnly()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_2

    .line 1288
    :cond_7
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1289
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v3

    .line 1290
    invoke-virtual {v3}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object p1

    sget-object p2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-eq p1, p2, :cond_8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1291
    invoke-virtual/range {v3 .. v11}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result p1

    if-nez p1, :cond_9

    :cond_8
    return v1

    :cond_9
    return v2

    :cond_a
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private changeSchoolPageType(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtCommand;",
            "Lcom/metamoji/nt/itemlist/NtPageList<",
            "TT;>.ContextMenuOptions;)V"
        }
    .end annotation

    .line 1314
    iget v3, p2, Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;->position:I

    .line 1315
    invoke-direct {p0, p1, v3}, Lcom/metamoji/nt/itemlist/NtPageList;->canPerformChangeSchoolPageTypeCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 1321
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->isMultiSelectMode()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1322
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getSelectedItemIndexes()Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_0

    .line 1324
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1325
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move-object v5, p2

    .line 1327
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ge p2, v0, :cond_2

    goto :goto_3

    .line 1334
    :cond_2
    sget-object p2, Lcom/metamoji/nt/itemlist/NtPageList$12;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget p2, p2, v1

    const/4 v6, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_3

    .line 1349
    :pswitch_0
    sget p2, Lcom/metamoji/noteanytime/R$string;->School_Msg_Change_PageType_Personal_Class:I

    const/4 v0, 0x3

    goto :goto_1

    .line 1345
    :pswitch_1
    sget p2, Lcom/metamoji/noteanytime/R$string;->School_Msg_Change_PageType_Personal_Group:I

    const/4 v0, 0x2

    goto :goto_1

    .line 1341
    :pswitch_2
    sget p2, Lcom/metamoji/noteanytime/R$string;->School_Msg_Change_PageType_Personal_User:I

    :goto_1
    move v4, v0

    goto :goto_2

    .line 1337
    :pswitch_3
    sget p2, Lcom/metamoji/noteanytime/R$string;->School_Msg_Change_PageType_Normal:I

    move v4, v6

    .line 1356
    :goto_2
    invoke-direct {p0, p1, v3}, Lcom/metamoji/nt/itemlist/NtPageList;->canPerformChangeSchoolPageTypeCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 1361
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1362
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1363
    sget v7, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_PageType:I

    new-instance v0, Lcom/metamoji/nt/itemlist/NtPageList$11;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/nt/itemlist/NtPageList$11;-><init>(Lcom/metamoji/nt/itemlist/NtPageList;Lcom/metamoji/nt/NtCommand;IILjava/util/List;)V

    invoke-static {p2, v7, v0, v6}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 1375
    :cond_4
    invoke-static {v4, v5}, Lcom/metamoji/forSchool/ScSchoolCommand;->changeSchoolPageType(ILjava/util/List;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCommandManager()Lcom/metamoji/nt/NtCommandManager;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_note:Lcom/metamoji/nt/NtNoteController;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;
    .locals 2

    .line 1131
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_note:Lcom/metamoji/nt/NtNoteController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1134
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 1138
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    return-object v0
.end method

.method private handleAllSelect(Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/itemlist/NtPageList<",
            "TT;>.ContextMenuOptions;)V"
        }
    .end annotation

    .line 543
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 545
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/itemlist/NtPageList;->getViewAt(I)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    .line 548
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setChecked(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleClipboardClear()V
    .locals 2

    .line 570
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    return-void

    .line 572
    :cond_0
    const-string v1, ""

    invoke-static {v1, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 573
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method private handleCopyMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtEditorWindowController;",
            "Lcom/metamoji/nt/itemlist/NtPageList<",
            "TT;>.ContextMenuOptions;)V"
        }
    .end annotation

    .line 491
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_COPY:Lcom/metamoji/nt/NtCommand;

    const-string v1, "pages"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/metamoji/nt/itemlist/NtPageList;->handleRemoveCutCopyMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;Lcom/metamoji/nt/NtCommand;Ljava/lang/String;)V

    return-void
.end method

.method private handleCutMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtEditorWindowController;",
            "Lcom/metamoji/nt/itemlist/NtPageList<",
            "TT;>.ContextMenuOptions;)V"
        }
    .end annotation

    .line 485
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_CUT:Lcom/metamoji/nt/NtCommand;

    const-string v1, "pages"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/metamoji/nt/itemlist/NtPageList;->handleRemoveCutCopyMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;Lcom/metamoji/nt/NtCommand;Ljava/lang/String;)V

    return-void
.end method

.method private handleDeselectAll(Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/itemlist/NtPageList<",
            "TT;>.ContextMenuOptions;)V"
        }
    .end annotation

    .line 1384
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->uncheckAllItem()V

    return-void
.end method

.method private handleNewButtonTapN(Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/itemlist/NtPageList<",
            "TT;>.ContextMenuOptions;)V"
        }
    .end annotation

    .line 555
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 556
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 557
    :goto_0
    iget v3, p1, Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;->n:I

    if-ge v2, v3, :cond_0

    .line 558
    new-instance v3, Lcom/metamoji/nt/itemlist/NtPageList$8;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/nt/itemlist/NtPageList$8;-><init>(Lcom/metamoji/nt/itemlist/NtPageList;Lcom/metamoji/nt/NtCommandManager;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleNewPageMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtEditorWindowController;",
            "Lcom/metamoji/nt/itemlist/NtPageList<",
            "TT;>.ContextMenuOptions;)V"
        }
    .end annotation

    .line 520
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 521
    iget p2, p2, Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;->position:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "page"

    invoke-virtual {v0, v1, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method private handlePasteMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtEditorWindowController;",
            "Lcom/metamoji/nt/itemlist/NtPageList<",
            "TT;>.ContextMenuOptions;)V"
        }
    .end annotation

    .line 470
    iget p2, p2, Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;->position:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 471
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 472
    const-string v1, "pageIndex"

    invoke-virtual {v0, v1, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_PASTE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method private handleRemoveCutCopyMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;Lcom/metamoji/nt/NtCommand;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtEditorWindowController;",
            "Lcom/metamoji/nt/itemlist/NtPageList<",
            "TT;>.ContextMenuOptions;",
            "Lcom/metamoji/nt/NtCommand;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 503
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getSelectedItemIndexes()Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_0

    .line 506
    :cond_0
    iget p2, p2, Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;->position:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 508
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p2, v0

    .line 510
    :goto_0
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 511
    invoke-virtual {v0, p4, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 512
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    invoke-virtual {p1, p3, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method private handleRemoveMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtEditorWindowController;",
            "Lcom/metamoji/nt/itemlist/NtPageList<",
            "TT;>.ContextMenuOptions;)V"
        }
    .end annotation

    .line 479
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_DELETE:Lcom/metamoji/nt/NtCommand;

    const-string v1, "pages"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/metamoji/nt/itemlist/NtPageList;->handleRemoveCutCopyMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;Lcom/metamoji/nt/NtCommand;Ljava/lang/String;)V

    return-void
.end method

.method private handleSelectAll(Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/itemlist/NtPageList<",
            "TT;>.ContextMenuOptions;)V"
        }
    .end annotation

    .line 1380
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->checkAllItem()V

    return-void
.end method

.method private handleSelectModeMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtEditorWindowController;",
            "Lcom/metamoji/nt/itemlist/NtPageList<",
            "TT;>.ContextMenuOptions;)V"
        }
    .end annotation

    const/4 p1, 0x1

    .line 529
    invoke-virtual {p0, p1, p1}, Lcom/metamoji/nt/itemlist/NtPageList;->setMultiselectMode(ZZ)V

    return-void
.end method

.method private handleUnselectModeMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtEditorWindowController;",
            "Lcom/metamoji/nt/itemlist/NtPageList<",
            "TT;>.ContextMenuOptions;Z)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 536
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/nt/itemlist/NtPageList;->setMultiselectMode(ZZ)V

    return-void
.end method

.method private selectPage(IZZ)V
    .locals 1

    xor-int/lit8 v0, p3, 0x1

    .line 267
    invoke-super {p0, p1, p2, v0}, Lcom/metamoji/nt/itemlist/NtItemList;->selectItem(IZZ)V

    if-eqz p3, :cond_0

    .line 269
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance p3, Lcom/metamoji/nt/itemlist/NtPageList$6;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/nt/itemlist/NtPageList$6;-><init>(Lcom/metamoji/nt/itemlist/NtPageList;I)V

    invoke-virtual {p2, p3}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private selectPageAsync(IZZ)V
    .locals 6

    .line 289
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    .line 290
    new-instance v0, Lcom/metamoji/nt/itemlist/NtPageList$7;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/nt/itemlist/NtPageList$7;-><init>(Lcom/metamoji/nt/itemlist/NtPageList;Lcom/metamoji/cm/CmTaskManager;IZZ)V

    invoke-virtual {v2, v0}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method canPerformDetachLinkToVoice(I)Z
    .locals 1

    .line 819
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtPageList;->voiceTagInstancesToDetachLinkToVoice(I)Ljava/util/List;

    move-result-object p1

    .line 821
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method canPerformPlayLinkedVoice(I)Z
    .locals 3

    .line 791
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->isMultiSelectMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 795
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtPageList;->voiceTagInstanceToPlayLinkedVoice(I)Lcom/metamoji/ctold/tag/CtTagInstance;

    move-result-object p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public destroy()V
    .locals 3

    .line 199
    invoke-super {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->destroy()V

    .line 201
    invoke-direct {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->tagSpriteUpdateListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-interface {v0, v1}, Lcom/metamoji/ctold/CtDocTagManager;->removeTagChangedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_note:Lcom/metamoji/nt/NtNoteController;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onPageChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->m_onPageChangeEventListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_note:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onThumbnailChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->m_onThumbnailChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_note:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onPaperSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->m_onPaperSizeChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_note:Lcom/metamoji/nt/NtNoteController;

    .line 213
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->m_docSettings:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    .line 214
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtDocumentSettings;

    if-eqz v1, :cond_2

    .line 216
    iget-object v1, v1, Lcom/metamoji/nt/NtDocumentSettings;->onPropertyChangedEvent:Lcom/metamoji/cm/CmEventListener;

    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtPageList;->m_onDocumentSettingsChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 218
    :cond_2
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->m_docSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 220
    :cond_3
    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->m_docSettings:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public enableView(Z)V
    .locals 2

    .line 998
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 999
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/itemlist/NtPageList$10;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/itemlist/NtPageList$10;-><init>(Lcom/metamoji/nt/itemlist/NtPageList;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_listView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1008
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1009
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1010
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    :cond_1
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
            "Lcom/metamoji/nt/NtPageController;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    return-object p1

    .line 227
    :cond_0
    new-instance v0, Lcom/metamoji/nt/itemlist/NtPageList$PageListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/metamoji/nt/itemlist/NtPageList$PageListAdapter;-><init>(Landroid/content/Context;Lcom/metamoji/nt/NtNoteController;)V

    return-object v0
.end method

.method protected getContextMenus(Landroid/view/View;I)Ljava/util/ArrayList;
    .locals 6
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

    .line 627
    invoke-direct {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 632
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 633
    new-instance v1, Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;

    invoke-direct {v1, p0, p2}, Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;-><init>(Lcom/metamoji/nt/itemlist/NtPageList;I)V

    .line 636
    invoke-static {}, Lcom/metamoji/nt/NtTrialManager;->getInstance()Lcom/metamoji/nt/NtTrialManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtTrialManager;->isTrialMode()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    .line 637
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 638
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getSelectionCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 639
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getSelectionCount()I

    move-result v4

    if-le v2, v4, :cond_1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_CUT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 640
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_CUT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Cut:I

    invoke-direct {v2, v4, v1, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_1
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_COPY:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 643
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_COPY:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Copy:I

    invoke-direct {v2, v4, v1, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 647
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getCount()I

    move-result v2

    if-le v2, v3, :cond_3

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_CUT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 648
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_CUT:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Cut:I

    invoke-direct {v2, v4, v1, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_COPY:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 651
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_COPY:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Copy:I

    invoke-direct {v2, v4, v1, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_4
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/nt/NtNoteDataProvider;->getClipboardType(Landroid/content/Context;)I

    move-result v2

    if-ne v3, v2, :cond_5

    .line 658
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_PASTE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 659
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_PASTE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Paste:I

    invoke-direct {v2, v4, v1, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 666
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getSelectionCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 667
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getSelectionCount()I

    move-result v4

    if-le v2, v4, :cond_6

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_DELETE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 668
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_DELETE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Remove:I

    invoke-direct {v2, v4, v1, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    :cond_6
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_MULTISELECT_END:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Unselected_Mode:I

    invoke-direct {v2, v4, v1, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getSelectionCount()I

    move-result v4

    if-le v2, v4, :cond_7

    .line 676
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_PAGELIST_SELECTALL:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Ctx_PageList_SelectAll:I

    invoke-direct {v2, v4, v1, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getSelectionCount()I

    move-result v2

    if-lez v2, :cond_b

    .line 679
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_PAGELIST_DESELECTALL:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Ctx_PageList_DeSelectAll:I

    invoke-direct {v2, v4, v1, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 683
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getCount()I

    move-result v2

    if-le v2, v3, :cond_9

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_DELETE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 684
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_DELETE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Remove:I

    invoke-direct {v2, v4, v1, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getCount()I

    move-result v2

    if-le v2, v3, :cond_b

    .line 687
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_CUT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_COPY:Lcom/metamoji/nt/NtCommand;

    .line 688
    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_PASTE:Lcom/metamoji/nt/NtCommand;

    .line 689
    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_DELETE:Lcom/metamoji/nt/NtCommand;

    .line 690
    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    .line 691
    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 692
    :cond_a
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_MULTISELECT_START:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Selected_Mode:I

    invoke-direct {v2, v4, v1, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_b
    :goto_1
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 699
    new-instance p1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->ContextMenu_NewPage:I

    invoke-direct {p1, v2, v1, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 706
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/itemlist/NtPageList;->canPerformPlayLinkedVoice(I)Z

    move-result v2

    if-ne v2, v3, :cond_d

    .line 707
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_FROM_VOICE_TAG:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Voice_PlayTag:I

    invoke-direct {v2, v4, v1, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_d
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/itemlist/NtPageList;->canPerformDetachLinkToVoice(I)Z

    move-result p2

    if-ne p2, v3, :cond_e

    .line 716
    new-instance p2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_VC_DETACH_VOICE_TAG_SELECTED_OBJECTS:Lcom/metamoji/nt/NtCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->Voice_DetachLink:I

    invoke-direct {p2, v2, v1, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    :cond_e
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_f

    .line 720
    new-instance p2, Lcom/metamoji/ui/UiMenuItem;

    sget v2, Lcom/metamoji/noteanytime/R$string;->Voice_Menu:I

    const/4 v3, 0x0

    invoke-direct {p2, p1, v2, v3, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    .line 721
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_f
    invoke-direct {p0, v0, v1}, Lcom/metamoji/nt/itemlist/NtPageList;->addSchoolPageTypeMenu(Ljava/util/List;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V

    return-object v0
.end method

.method protected getSingleSelectAction()Lcom/metamoji/nt/itemlist/NtItemList$SingleSelectAction;
    .locals 1

    .line 850
    new-instance v0, Lcom/metamoji/nt/itemlist/NtPageList$9;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/itemlist/NtPageList$9;-><init>(Lcom/metamoji/nt/itemlist/NtPageList;)V

    return-object v0
.end method

.method handleDetachLinkToVoiceMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtEditorWindowController;",
            "Lcom/metamoji/nt/itemlist/NtPageList<",
            "TT;>.ContextMenuOptions;)V"
        }
    .end annotation

    .line 614
    iget p2, p2, Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;->position:I

    invoke-virtual {p0, p2}, Lcom/metamoji/nt/itemlist/NtPageList;->voiceTagInstancesToDetachLinkToVoice(I)Ljava/util/List;

    move-result-object p2

    .line 616
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 617
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_note:Lcom/metamoji/nt/NtNoteController;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/metamoji/media/voice/VcUtil;->detachVoiceTag(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/controller/EditContext;)V

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_VC_DETACH_VOICE_TAG_SELECTED_OBJECTS:Lcom/metamoji/nt/NtCommand;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    return-void
.end method

.method handlePlayLinkedVoiceMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtEditorWindowController;",
            "Lcom/metamoji/nt/itemlist/NtPageList<",
            "TT;>.ContextMenuOptions;)V"
        }
    .end annotation

    .line 601
    iget p1, p2, Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;->position:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtPageList;->voiceTagInstanceToPlayLinkedVoice(I)Lcom/metamoji/ctold/tag/CtTagInstance;

    move-result-object p1

    .line 603
    invoke-static {p1}, Lcom/metamoji/media/voice/VcUtil;->playFromVoiceTagInstance(Lcom/metamoji/ctold/tag/CtTagInstance;)Z

    return-void
.end method

.method public initializeList(Lcom/metamoji/nt/NtNoteController;I)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Lcom/metamoji/nt/itemlist/NtItemList;->initializeList(Lcom/metamoji/nt/NtNoteController;)V

    .line 100
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_note:Lcom/metamoji/nt/NtNoteController;

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p0, p2, v0, v0}, Lcom/metamoji/nt/itemlist/NtPageList;->selectItem(IZZ)V

    .line 103
    new-instance p2, Lcom/metamoji/nt/itemlist/NtPageList$1;

    invoke-direct {p2, p0}, Lcom/metamoji/nt/itemlist/NtPageList$1;-><init>(Lcom/metamoji/nt/itemlist/NtPageList;)V

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtPageList;->m_onPageChangeEventListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 114
    iget-object p2, p1, Lcom/metamoji/nt/NtNoteController;->onPageChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->m_onPageChangeEventListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 116
    new-instance p2, Lcom/metamoji/nt/itemlist/NtPageList$2;

    invoke-direct {p2, p0}, Lcom/metamoji/nt/itemlist/NtPageList$2;-><init>(Lcom/metamoji/nt/itemlist/NtPageList;)V

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtPageList;->m_onThumbnailChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 127
    iget-object p2, p1, Lcom/metamoji/nt/NtNoteController;->onThumbnailChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->m_onThumbnailChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 130
    new-instance p2, Lcom/metamoji/nt/itemlist/NtPageList$3;

    invoke-direct {p2, p0}, Lcom/metamoji/nt/itemlist/NtPageList$3;-><init>(Lcom/metamoji/nt/itemlist/NtPageList;)V

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtPageList;->m_onPaperSizeChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 142
    iget-object p2, p1, Lcom/metamoji/nt/NtNoteController;->onPaperSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->m_onPaperSizeChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 144
    new-instance p2, Lcom/metamoji/nt/itemlist/NtPageList$4;

    invoke-direct {p2, p0, p1}, Lcom/metamoji/nt/itemlist/NtPageList$4;-><init>(Lcom/metamoji/nt/itemlist/NtPageList;Lcom/metamoji/nt/NtNoteController;)V

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtPageList;->m_onDocumentSettingsChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 164
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    .line 165
    const-string p2, "MMJNtDocumentSettings"

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 166
    instance-of p2, p1, Lcom/metamoji/nt/NtDocumentSettings;

    if-eqz p2, :cond_0

    .line 167
    check-cast p1, Lcom/metamoji/nt/NtDocumentSettings;

    .line 168
    iget-object p2, p1, Lcom/metamoji/nt/NtDocumentSettings;->onPropertyChangedEvent:Lcom/metamoji/cm/CmEventListener;

    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->m_onDocumentSettingsChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 169
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtPageList;->m_docSettings:Ljava/lang/ref/WeakReference;

    .line 173
    :cond_0
    new-instance p1, Lcom/metamoji/nt/itemlist/NtPageList$5;

    invoke-direct {p1, p0}, Lcom/metamoji/nt/itemlist/NtPageList$5;-><init>(Lcom/metamoji/nt/itemlist/NtPageList;)V

    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->tagSpriteUpdateListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 190
    invoke-direct {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 192
    iget-object p2, p0, Lcom/metamoji/nt/itemlist/NtPageList;->tagSpriteUpdateListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-interface {p1, p2}, Lcom/metamoji/ctold/CtDocTagManager;->addTagChangedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V

    :cond_1
    return-void
.end method

.method protected isShowContextMenuOnSelectedItemShortTap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected move(II)V
    .locals 5

    .line 373
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getSelectedIndex()I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 375
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 376
    new-instance v3, Lcom/metamoji/cm/CmContext;

    invoke-direct {v3}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 377
    const-string v4, "fromPageIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    const-string/jumbo p1, "toPageIndex"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_MOVE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v2, v3}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    if-eqz v0, :cond_1

    .line 382
    invoke-direct {p0, p2, v1, v1}, Lcom/metamoji/nt/itemlist/NtPageList;->selectPage(IZZ)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 94
    sget p3, Lcom/metamoji/noteanytime/R$layout;->nt_pagelist:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method onPageChanged(Lcom/metamoji/df/controller/PageEventContext;)V
    .locals 5

    .line 304
    sget-object v0, Lcom/metamoji/nt/itemlist/NtPageList$12;->$SwitchMap$com$metamoji$df$controller$PageEventContext$Kind:[I

    invoke-virtual {p1}, Lcom/metamoji/df/controller/PageEventContext;->getKind()Lcom/metamoji/df/controller/PageEventContext$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/controller/PageEventContext$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto/16 :goto_1

    .line 351
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/df/controller/PageEventContext;->getCurrentPageIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/itemlist/NtPageList;->isItemInScreen(I)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 352
    invoke-virtual {p1}, Lcom/metamoji/df/controller/PageEventContext;->getCurrentPageIndex()I

    move-result p1

    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/nt/itemlist/NtPageList;->selectPage(IZZ)V

    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    if-eqz v0, :cond_6

    .line 342
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/df/controller/PageEventContext;->getMoveFromIndex()I

    move-result v3

    invoke-virtual {p1}, Lcom/metamoji/df/controller/PageEventContext;->getMoveToIndex()I

    move-result p1

    invoke-virtual {v0, v3, p1, v2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->move(IIZ)V

    .line 344
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_note:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result p1

    .line 345
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_listView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    if-ltz p1, :cond_6

    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 346
    invoke-direct {p0, p1, v1, v1}, Lcom/metamoji/nt/itemlist/NtPageList;->selectPage(IZZ)V

    return-void

    .line 323
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/df/controller/PageEventContext;->getPagesDeleted()Ljava/util/List;

    move-result-object p1

    .line 324
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    .line 326
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 328
    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    if-eqz v3, :cond_3

    if-ltz v0, :cond_3

    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v3}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 329
    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    iget-object v4, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v4, v0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v3, v0, v2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->remove(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 334
    :cond_4
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_note:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result p1

    .line 335
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_listView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    if-ltz p1, :cond_6

    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 336
    invoke-direct {p0, p1, v1, v1}, Lcom/metamoji/nt/itemlist/NtPageList;->selectPage(IZZ)V

    return-void

    .line 306
    :cond_5
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_note:Lcom/metamoji/nt/NtNoteController;

    if-eqz v0, :cond_6

    .line 308
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/nt/itemlist/NtPageList;->setMultiselectMode(ZZ)V

    .line 311
    invoke-virtual {p1}, Lcom/metamoji/df/controller/PageEventContext;->getPageInserted()I

    move-result p1

    .line 312
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_note:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v1, v0, p1, v2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->insert(Ljava/lang/Object;IZ)V

    if-eqz v0, :cond_6

    .line 316
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p1

    .line 317
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtPageList;->updateSchoolPageTypeIcon(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 392
    check-cast p3, Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;

    .line 395
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 396
    sget-object v0, Lcom/metamoji/nt/itemlist/NtPageList$12;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    check-cast p2, Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p2}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    return-void

    .line 460
    :pswitch_0
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->logPurgeInfo()V

    return-void

    .line 457
    :pswitch_1
    invoke-direct {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->handleClipboardClear()V

    return-void

    .line 453
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/metamoji/nt/itemlist/NtPageList;->handleNewButtonTapN(Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V

    .line 454
    invoke-direct {p0, p1, p3, v1}, Lcom/metamoji/nt/itemlist/NtPageList;->handleUnselectModeMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;Z)V

    return-void

    .line 447
    :pswitch_3
    invoke-direct {p0, p1, p3}, Lcom/metamoji/nt/itemlist/NtPageList;->handleSelectModeMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V

    .line 448
    invoke-direct {p0, p3}, Lcom/metamoji/nt/itemlist/NtPageList;->handleAllSelect(Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V

    return-void

    .line 442
    :pswitch_4
    invoke-direct {p0, p3}, Lcom/metamoji/nt/itemlist/NtPageList;->handleDeselectAll(Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V

    return-void

    .line 439
    :pswitch_5
    invoke-direct {p0, p3}, Lcom/metamoji/nt/itemlist/NtPageList;->handleSelectAll(Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V

    return-void

    .line 436
    :pswitch_6
    invoke-direct {p0, p2, p3}, Lcom/metamoji/nt/itemlist/NtPageList;->changeSchoolPageType(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V

    return-void

    .line 429
    :pswitch_7
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/nt/itemlist/NtPageList;->handleDetachLinkToVoiceMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V

    return-void

    .line 423
    :pswitch_8
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/nt/itemlist/NtPageList;->handlePlayLinkedVoiceMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V

    return-void

    .line 420
    :pswitch_9
    invoke-direct {p0, p1, p3, v1}, Lcom/metamoji/nt/itemlist/NtPageList;->handleUnselectModeMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;Z)V

    return-void

    .line 417
    :pswitch_a
    invoke-direct {p0, p1, p3}, Lcom/metamoji/nt/itemlist/NtPageList;->handleSelectModeMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V

    return-void

    .line 414
    :pswitch_b
    invoke-direct {p0, p1, p3}, Lcom/metamoji/nt/itemlist/NtPageList;->handleNewPageMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V

    return-void

    .line 410
    :pswitch_c
    invoke-direct {p0, p1, p3}, Lcom/metamoji/nt/itemlist/NtPageList;->handleRemoveMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V

    .line 411
    invoke-direct {p0, p1, p3, v1}, Lcom/metamoji/nt/itemlist/NtPageList;->handleUnselectModeMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;Z)V

    return-void

    .line 406
    :pswitch_d
    invoke-direct {p0, p1, p3}, Lcom/metamoji/nt/itemlist/NtPageList;->handlePasteMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V

    .line 407
    invoke-direct {p0, p1, p3, v1}, Lcom/metamoji/nt/itemlist/NtPageList;->handleUnselectModeMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;Z)V

    return-void

    .line 402
    :pswitch_e
    invoke-direct {p0, p1, p3}, Lcom/metamoji/nt/itemlist/NtPageList;->handleCopyMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V

    return-void

    .line 398
    :pswitch_f
    invoke-direct {p0, p1, p3}, Lcom/metamoji/nt/itemlist/NtPageList;->handleCutMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V

    .line 399
    invoke-direct {p0, p1, p3, v1}, Lcom/metamoji/nt/itemlist/NtPageList;->handleUnselectModeMenuTap(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onThumbnailChanged(Lcom/metamoji/nt/NtPageController;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p1

    .line 362
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtPageList;->getViewAt(I)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->setThumbnail(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;)V

    return-void
.end method

.method public selectItem(IZZ)V
    .locals 0

    xor-int/lit8 p3, p3, 0x1

    .line 244
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/itemlist/NtPageList;->selectPage(IZZ)V

    return-void
.end method

.method protected setMultiselectMode(ZZ)V
    .locals 0

    .line 1016
    invoke-super {p0, p1, p2}, Lcom/metamoji/nt/itemlist/NtItemList;->setMultiselectMode(ZZ)V

    const/4 p1, 0x0

    .line 1018
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtPageList;->updateInfoIcon(Ljava/lang/String;)V

    return-void
.end method

.method public updateInfoIcon(Ljava/lang/String;)V
    .locals 5

    .line 1027
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->isMultiSelectMode()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    .line 1031
    :goto_0
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 1032
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPageController;

    if-eqz v0, :cond_0

    .line 1034
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    .line 1035
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    if-eqz v0, :cond_0

    .line 1038
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setInfoIconVisibility(I)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1046
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getCount()I

    move-result p1

    if-ge v2, p1, :cond_9

    .line 1047
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    if-eqz p1, :cond_2

    .line 1049
    invoke-virtual {p1, v1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setInfoIconVisibility(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1056
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    .line 1060
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1061
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_4

    .line 1066
    :cond_5
    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    if-eqz v3, :cond_9

    .line 1067
    const-string v3, "MMJNsShareSettings"

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    move v0, v2

    .line 1068
    :goto_2
    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v3}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 1069
    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v3, v0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtPageController;

    if-eqz v3, :cond_8

    .line 1071
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_6

    .line 1072
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1073
    :cond_6
    invoke-static {v3}, Lcom/metamoji/ns/NsCollaboCommand;->isUpdatedBoothId(Ljava/lang/String;)Z

    move-result v3

    .line 1074
    iget-object v4, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    if-eqz v4, :cond_8

    if-eqz v3, :cond_7

    move v3, v2

    goto :goto_3

    :cond_7
    move v3, v1

    .line 1076
    :goto_3
    invoke-virtual {v4, v3}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setInfoIconVisibility(I)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    return-void
.end method

.method public updatePresenterViewingPageIcon(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateSchoolPageTypeIcon(Ljava/lang/String;)V
    .locals 7

    .line 1394
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1395
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 1397
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_a

    .line 1398
    iget-object v4, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v4, v3}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/nt/NtPageController;

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_1

    .line 1402
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_3

    .line 1405
    :cond_1
    iget-object v5, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    if-eqz v5, :cond_9

    .line 1408
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_2
    if-eqz v4, :cond_7

    .line 1410
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    goto :goto_1

    .line 1421
    :cond_3
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->school_page_class:I

    goto :goto_2

    .line 1418
    :cond_4
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->school_page_group:I

    goto :goto_2

    .line 1415
    :cond_5
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->school_page_user:I

    goto :goto_2

    .line 1412
    :cond_6
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->school_page_normal:I

    goto :goto_2

    :cond_7
    :goto_1
    move v4, v2

    :goto_2
    if-eqz v4, :cond_8

    .line 1429
    invoke-virtual {v5, v2}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setSchoolPageTypeIconVisibility(I)V

    .line 1430
    invoke-virtual {v5, v4}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setSchoolPageTypeIcon(I)V

    goto :goto_3

    :cond_8
    const/4 v4, 0x4

    .line 1432
    invoke-virtual {v5, v4}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setSchoolPageTypeIconVisibility(I)V

    :cond_9
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    return-void
.end method

.method public updateTabLabel(Lcom/metamoji/nt/NtNoteController;Landroid/widget/TextView;)V
    .locals 2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndexForUI()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPagesForUI()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateTagIcon(Ljava/lang/String;)V
    .locals 7

    .line 1176
    invoke-direct {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1180
    :cond_0
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 1181
    iget-object v4, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v4, v3}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/nt/NtPageController;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 1185
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 1188
    :cond_2
    iget-object v5, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    if-eqz v5, :cond_3

    .line 1191
    sget-object v6, Lcom/metamoji/ctold/tag/CtSystemTagId;->CT_TAGID_VOICE:Lcom/metamoji/ctold/tag/CtSystemTagId;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v6, v4, v2}, Lcom/metamoji/ctold/CtDocTagManager;->getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    .line 1192
    invoke-virtual {v5, v4}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setTagInstances(Ljava/util/List;)V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public updateTagIcon(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;)V"
        }
    .end annotation

    .line 1148
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1149
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 1150
    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtPageController;

    if-nez v3, :cond_0

    goto :goto_1

    .line 1154
    :cond_0
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 1157
    :cond_1
    iget-object v4, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    if-eqz v4, :cond_2

    .line 1159
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ctold/CtEventTagChanged;

    .line 1160
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/metamoji/ctold/CtEventTagChanged;->getAfter()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1161
    invoke-virtual {v4, v5}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setTagInstances(Ljava/util/List;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method voiceTagInstanceToPlayLinkedVoice(I)Lcom/metamoji/ctold/tag/CtTagInstance;
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_note:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 805
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    .line 806
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_note:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1, p1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    .line 807
    sget-object v1, Lcom/metamoji/ctold/tag/CtSystemTagId;->CT_TAGID_VOICE:Lcom/metamoji/ctold/tag/CtSystemTagId;

    invoke-interface {v0, v1, p1}, Lcom/metamoji/ctold/CtDocTagManager;->getSystemTagInstance(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/ctold/tag/CtTagInstance;

    move-result-object p1

    return-object p1
.end method

.method voiceTagInstancesToDetachLinkToVoice(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 831
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getSelectedItemIndexes()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 834
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 835
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    .line 837
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 838
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 839
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtPageList;->_note:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 840
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 842
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/nt/itemlist/NtPageList;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object p1

    .line 843
    sget-object v1, Lcom/metamoji/ctold/tag/CtSystemTagId;->CT_TAGID_VOICE:Lcom/metamoji/ctold/tag/CtSystemTagId;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/metamoji/ctold/CtDocTagManager;->getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
