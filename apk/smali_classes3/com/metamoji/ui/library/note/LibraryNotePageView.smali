.class public Lcom/metamoji/ui/library/note/LibraryNotePageView;
.super Lcom/metamoji/ui/library/item/LibraryPageView;
.source "LibraryNotePageView.java"


# static fields
.field public static final THUMBNAIL_HEIGHT:I = 0xa0

.field static final THUMBNAIL_HORIZONTAL_MAX:I = 0x4

.field public static final THUMBNAIL_WIDTH:I = 0x82


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/metamoji/ui/library/note/LibraryNotePageView;Lcom/metamoji/ui/library/item/LibraryPartView;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/note/LibraryNotePageView;->removePartView(Lcom/metamoji/ui/library/item/LibraryPartView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/metamoji/ui/library/note/LibraryNotePageView;)Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/metamoji/ui/library/note/LibraryNotePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/metamoji/ui/library/note/LibraryNotePageView;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/metamoji/ui/library/note/LibraryNotePageView;->m_partViewArray:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/metamoji/ui/library/note/LibraryNotePageView;)V
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNotePageView;->stopArrangementModeAllPages()V

    return-void
.end method


# virtual methods
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

    .line 98
    new-instance v0, Lcom/metamoji/ui/library/note/LibraryNotePartView;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/library/note/LibraryNotePartView;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v0, p0, p2}, Lcom/metamoji/ui/library/item/LibraryPartView;->createContents(Lcom/metamoji/ui/library/item/LibraryPageView;Ljava/util/Map;)V

    return-object v0
.end method

.method public deletePart(Lcom/metamoji/ui/library/item/LibraryPartView;)V
    .locals 10

    .line 113
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 119
    const-string v1, "LibraryNotePageView#deletePart"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v2, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string v3, "entityId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNotePageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 126
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    .line 147
    iget-object v4, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string/jumbo v5, "title"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 150
    sget v5, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoTitle:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 151
    const-string v4, ""

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNotePageView;->pageType()Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v5

    sget-object v6, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_BOOKMARK:Lcom/metamoji/lb/LbConstants$LbPageType;

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    .line 155
    sget v6, Lcom/metamoji/noteanytime/R$string;->Library_Note_DeleteAlert_Msg_Bookmark:I

    goto :goto_2

    :cond_4
    sget v6, Lcom/metamoji/noteanytime/R$string;->Library_Note_DeleteAlert_Msg:I

    :goto_2
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_5

    .line 156
    sget v7, Lcom/metamoji/noteanytime/R$string;->Library_Note_DeleteAlert_Msg_With_Name_Bookmark:I

    goto :goto_3

    :cond_5
    sget v7, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Msg_With_Name:I

    :goto_3
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 158
    const-string v8, "%@"

    const-string v9, "%s"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_6

    .line 159
    sget v8, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Title_Bookmark:I

    goto :goto_4

    :cond_6
    sget v8, Lcom/metamoji/noteanytime/R$string;->Library_Note_DeleteAlert_Title:I

    :goto_4
    if-eqz v4, :cond_8

    .line 160
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_7

    goto :goto_5

    :cond_7
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_8
    :goto_5
    if-eqz v5, :cond_9

    .line 161
    sget v4, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Delete_Bookmark:I

    goto :goto_6

    :cond_9
    sget v4, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Delete:I

    .line 164
    :goto_6
    iget-object v5, p0, Lcom/metamoji/ui/library/note/LibraryNotePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v5}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    .line 165
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 167
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/metamoji/ui/library/note/LibraryNotePageView$1;

    invoke-direct {v6, p0, p1, v2}, Lcom/metamoji/ui/library/note/LibraryNotePageView$1;-><init>(Lcom/metamoji/ui/library/note/LibraryNotePageView;Lcom/metamoji/ui/library/item/LibraryPartView;Ljava/lang/String;)V

    invoke-virtual {v5, v4, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 180
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v5, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 181
    new-instance p1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p1, v5}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 182
    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected getBasicThumbnailSize()Lcom/metamoji/cm/Size;
    .locals 3

    .line 44
    new-instance v0, Lcom/metamoji/cm/Size;

    const/16 v1, 0x82

    const/16 v2, 0xa0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object v0
.end method

.method protected getHorizontalMaxCount()I
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNotePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    return v1

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNotePageView;->isPortrait()Z

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

.method protected guidanceStringId()I
    .locals 3

    .line 57
    sget-object v0, Lcom/metamoji/ui/library/note/LibraryNotePageView$2;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    iget-object v1, p0, Lcom/metamoji/ui/library/note/LibraryNotePageView;->m_pageDic:Ljava/util/Map;

    const-string/jumbo v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lb/LbConstants$LbPageType;

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

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 67
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Note_Comment_Download:I

    return v0

    .line 65
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Note_Comment_System:I

    return v0

    .line 63
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Note_Comment_User:I

    return v0

    .line 61
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Note_Comment_Bookmark:I

    return v0

    .line 59
    :cond_4
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Note_Comment_History:I

    return v0
.end method

.method public updatePartViewTitle(Lcom/metamoji/lb/LbConstants$LbPageType;I)V
    .locals 0

    .line 192
    iget-object p1, p0, Lcom/metamoji/ui/library/note/LibraryNotePageView;->m_partViewArray:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/library/note/LibraryNotePartView;

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->updateTitle()V

    :cond_0
    return-void
.end method
