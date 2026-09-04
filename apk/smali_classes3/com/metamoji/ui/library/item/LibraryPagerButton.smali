.class public Lcom/metamoji/ui/library/item/LibraryPagerButton;
.super Landroid/widget/LinearLayout;
.source "LibraryPagerButton.java"


# instance fields
.field m_btnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field m_currentIndex:I

.field m_libraryDlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public configureButton(I)V
    .locals 5

    .line 48
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPagerButton;->removeAllViews()V

    .line 49
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton;->m_btnList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 56
    new-instance v3, Lcom/metamoji/ui/common/UiImageButton;

    invoke-direct {v3, v0}, Lcom/metamoji/ui/common/UiImageButton;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 57
    invoke-virtual {v3, v4}, Lcom/metamoji/ui/common/UiImageButton;->setAdjustViewBounds(Z)V

    .line 58
    invoke-virtual {v3, v1, v1, v1, v1}, Lcom/metamoji/ui/common/UiImageButton;->setPadding(IIII)V

    .line 59
    iget-object v4, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton;->m_libraryDlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v4, v2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->pageTypeOfIndex(I)Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/metamoji/ui/library/item/LibraryPagerButton;->getNormalIconId(Lcom/metamoji/lb/LbConstants$LbPageType;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/metamoji/ui/common/UiImageButton;->setImageResource(I)V

    .line 61
    invoke-virtual {v3, v1}, Lcom/metamoji/ui/common/UiImageButton;->setBackgroundResource(I)V

    .line 63
    new-instance v4, Lcom/metamoji/ui/library/item/LibraryPagerButton$1;

    invoke-direct {v4, p0, v2}, Lcom/metamoji/ui/library/item/LibraryPagerButton$1;-><init>(Lcom/metamoji/ui/library/item/LibraryPagerButton;I)V

    invoke-virtual {v3, v4}, Lcom/metamoji/ui/common/UiImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/metamoji/ui/library/item/LibraryPagerButton;->addView(Landroid/view/View;)V

    .line 70
    iget-object v4, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton;->m_btnList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getNormalIconId(Lcom/metamoji/lb/LbConstants$LbPageType;)I
    .locals 1

    .line 104
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryPagerButton$2;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 112
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->library_icon_system_n:I

    return p1

    .line 110
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->library_icon_store_n:I

    return p1

    .line 108
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->library_icon_bookmark_n:I

    return p1

    .line 106
    :cond_2
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->library_icon_history_n:I

    return p1
.end method

.method getSelectedIconId(Lcom/metamoji/lb/LbConstants$LbPageType;)I
    .locals 1

    .line 122
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryPagerButton$2;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 130
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->library_icon_system_s:I

    return p1

    .line 128
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->library_icon_store_s:I

    return p1

    .line 126
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->library_icon_bookmark_s:I

    return p1

    .line 124
    :cond_2
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->library_icon_history_s:I

    return p1
.end method

.method public setCurrentIndex(I)V
    .locals 3

    .line 81
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton;->m_currentIndex:I

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton;->m_btnList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton;->m_currentIndex:I

    if-ltz v0, :cond_1

    .line 87
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton;->m_btnList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 88
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton;->m_libraryDlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton;->m_currentIndex:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->pageTypeOfIndex(I)Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/library/item/LibraryPagerButton;->getNormalIconId(Lcom/metamoji/lb/LbConstants$LbPageType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 91
    :cond_1
    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton;->m_currentIndex:I

    .line 94
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton;->m_btnList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 95
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton;->m_libraryDlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iget v1, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton;->m_currentIndex:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->pageTypeOfIndex(I)Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryPagerButton;->getSelectedIconId(Lcom/metamoji/lb/LbConstants$LbPageType;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setLibraryViewDialog(Lcom/metamoji/ui/library/item/LibraryViewDialog;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton;->m_libraryDlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton;->m_currentIndex:I

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton;->m_btnList:Ljava/util/List;

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPagerButton;->setOrientation(I)V

    const/16 p1, 0x51

    .line 36
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPagerButton;->setGravity(I)V

    return-void
.end method
