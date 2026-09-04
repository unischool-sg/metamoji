.class public Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;
.super Lcom/metamoji/ui/library/item/LibraryPageViewEx;
.source "LibraryNotePageViewEx.java"


# static fields
.field public static final THUMBNAIL_HEIGHT:I = 0xa0

.field static final THUMBNAIL_HORIZONTAL_MAX:I = 0x4

.field public static final THUMBNAIL_WIDTH:I = 0x82


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;Lcom/metamoji/ui/library/item/LibraryPartView;III)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;->removePartView(Lcom/metamoji/ui/library/item/LibraryPartView;III)V

    return-void
.end method

.method static synthetic access$100(Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;)Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;->m_partViewArrayArray:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;)V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;->stopArrangementModeAllPages()V

    return-void
.end method


# virtual methods
.method protected categoryCommentStringId(I)I
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;->hasDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Note_Comment_System:I

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 110
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_Comment_Add_Download:I

    return p1

    .line 109
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Note_Comment_System:I

    return p1
.end method

.method protected categoryNoFromPageType(Lcom/metamoji/lb/LbConstants$LbPageType;)I
    .locals 4

    .line 133
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;->hasDownload()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 134
    sget-object v0, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx$2;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v3, :cond_0

    return v1

    :cond_0
    return v2

    .line 139
    :cond_1
    sget-object v0, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx$2;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

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

    .line 88
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;->hasDownload()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 93
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Note_Title_Download:I

    return p1

    .line 92
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Note_Title_System:I

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

    .line 122
    new-instance p1, Lcom/metamoji/ui/library/note/LibraryNotePartView;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/metamoji/ui/library/note/LibraryNotePartView;-><init>(Landroid/content/Context;)V

    .line 123
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

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;->hasDownload()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 77
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public deletePart(Lcom/metamoji/ui/library/item/LibraryPartView;)V
    .locals 12

    .line 174
    iget-object v0, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 175
    invoke-virtual {p0, v6}, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;->categoryNoFromPageType(Lcom/metamoji/lb/LbConstants$LbPageType;)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 186
    const-string v8, "LibraryNotePageViewEx#deletePart"

    invoke-virtual {v0, v8}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_0
    return-void

    .line 190
    :cond_2
    iget-object v1, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string v2, "entityId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 193
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    .line 214
    iget-object v1, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string/jumbo v2, "title"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 217
    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoTitle:I

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    const-string v1, ""

    .line 221
    :cond_3
    sget v2, Lcom/metamoji/noteanytime/R$string;->Library_Note_DeleteAlert_Msg:I

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 222
    sget v3, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Msg_With_Name:I

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 224
    const-string v5, "%@"

    const-string v10, "%s"

    invoke-virtual {v3, v5, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 225
    sget v5, Lcom/metamoji/noteanytime/R$string;->Library_Note_DeleteAlert_Title:I

    if-eqz v1, :cond_5

    .line 226
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 227
    :cond_5
    :goto_1
    sget v1, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Delete:I

    move v3, v5

    .line 228
    invoke-virtual {p0, v4, p1}, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;->downloadNo(ILcom/metamoji/ui/library/item/LibraryPartView;)[I

    move-result-object v5

    .line 231
    iget-object v10, p0, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v10}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v10

    .line 232
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 233
    invoke-virtual {v10, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 234
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v1, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx$1;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx$1;-><init>(Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;Lcom/metamoji/ui/library/item/LibraryPartView;I[ILcom/metamoji/lb/LbConstants$LbPageType;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 252
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v10, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 253
    new-instance p1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p1, v10}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 254
    invoke-virtual {p1, v0, v8}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected getBasicThumbnailSize()Lcom/metamoji/cm/Size;
    .locals 3

    .line 46
    new-instance v0, Lcom/metamoji/cm/Size;

    const/16 v1, 0x82

    const/16 v2, 0xa0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object v0
.end method

.method protected getHorizontalMaxCount()I
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    return v1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;->isPortrait()Z

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

.method public updatePartViewTitle(Lcom/metamoji/lb/LbConstants$LbPageType;I)V
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;->categoryNoFromPageType(Lcom/metamoji/lb/LbConstants$LbPageType;)I

    move-result p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/note/LibraryNotePageViewEx;->getPartViewArray(I)Ljava/util/List;

    move-result-object p1

    .line 156
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/library/note/LibraryNotePartView;

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->updateTitle()V

    :cond_0
    return-void
.end method
