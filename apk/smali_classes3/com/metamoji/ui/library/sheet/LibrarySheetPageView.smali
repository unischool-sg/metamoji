.class public Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;
.super Lcom/metamoji/ui/library/note/LibraryNotePageView;
.source "LibrarySheetPageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/note/LibraryNotePageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;Lcom/metamoji/ui/library/item/LibraryPartView;)V
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;->removePartView(Lcom/metamoji/ui/library/item/LibraryPartView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;)Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;->m_partViewArray:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;)V
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;->stopArrangementModeAllPages()V

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

    .line 58
    new-instance v0, Lcom/metamoji/ui/library/sheet/LibrarySheetPartView;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/library/sheet/LibrarySheetPartView;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v0, p0, p2}, Lcom/metamoji/ui/library/item/LibraryPartView;->createContents(Lcom/metamoji/ui/library/item/LibraryPageView;Ljava/util/Map;)V

    return-object v0
.end method

.method public deletePart(Lcom/metamoji/ui/library/item/LibraryPartView;)V
    .locals 10

    .line 73
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 79
    const-string v1, "LibrarySheetPageView#deletePart"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v2, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string v3, "entityId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    iget-object v3, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string/jumbo v4, "title"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;->pageType()Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v4

    sget-object v5, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_BOOKMARK:Lcom/metamoji/lb/LbConstants$LbPageType;

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 87
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v4, :cond_3

    .line 88
    sget v6, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_DeleteAlert_Msg_Bookmark:I

    goto :goto_2

    :cond_3
    sget v6, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_DeleteAlert_Msg:I

    :goto_2
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_4

    .line 89
    sget v7, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_DeleteAlert_Msg_With_Name_Bookmark:I

    goto :goto_3

    :cond_4
    sget v7, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Msg_With_Name:I

    :goto_3
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 91
    const-string v8, "%@"

    const-string v9, "%s"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_5

    .line 92
    sget v8, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Title_Bookmark:I

    goto :goto_4

    :cond_5
    sget v8, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_DeleteAlert_Title:I

    :goto_4
    if-eqz v3, :cond_7

    .line 93
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_6

    goto :goto_5

    :cond_6
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_7
    :goto_5
    if-eqz v4, :cond_8

    .line 94
    sget v3, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Delete_Bookmark:I

    goto :goto_6

    :cond_8
    sget v3, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Delete:I

    .line 97
    :goto_6
    iget-object v4, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v4}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    .line 98
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v4, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView$1;

    invoke-direct {v6, p0, p1, v2}, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView$1;-><init>(Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;Lcom/metamoji/ui/library/item/LibraryPartView;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 113
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v4, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 114
    new-instance p1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p1, v4}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 115
    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected guidanceStringId()I
    .locals 3

    .line 37
    sget-object v0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView$2;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    iget-object v1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPageView;->m_pageDic:Ljava/util/Map;

    const-string/jumbo v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {v1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 45
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_Comment_Download:I

    return v0

    .line 43
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_Comment_System:I

    return v0

    .line 41
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_Comment_Bookmark:I

    return v0

    .line 39
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Sheet_Comment_History:I

    return v0
.end method
