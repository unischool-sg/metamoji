.class public Lcom/metamoji/ui/library/note/LibraryNotePartView;
.super Lcom/metamoji/ui/library/item/LibraryPartView;
.source "LibraryNotePartView.java"


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

    .line 42
    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPartView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/metamoji/ui/library/note/LibraryNotePartView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView;->m_thumbnail:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/metamoji/ui/library/note/LibraryNotePartView;)Landroid/widget/ImageView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView;->m_thumbnail:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/metamoji/ui/library/note/LibraryNotePartView;)Landroid/widget/ImageView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView;->m_thumbnail:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/metamoji/ui/library/note/LibraryNotePartView;)Z
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->onDeleteBtnTapped()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getTitleForShortcut()Ljava/lang/String;
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView;->m_partDic:Ljava/util/Map;

    const-string/jumbo v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 231
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

    .line 234
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 235
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_CreateNote:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method protected initCanvas()V
    .locals 8

    .line 53
    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getThumbnailSize()Lcom/metamoji/cm/Size;

    move-result-object v0

    .line 54
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

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/high16 v5, 0x42b40000    # 90.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 67
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/metamoji/noteanytime/R$layout;->library_note:I

    invoke-static {v5, v6, p0}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v5, 0x0

    .line 69
    invoke-virtual {p0, v5}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->setClipChildren(Z)V

    .line 71
    iget-object v6, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView;->m_partDic:Ljava/util/Map;

    const-string v7, "imagePath"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 72
    new-instance v7, Lcom/metamoji/ui/library/note/LibraryNotePartView$1;

    invoke-direct {v7, p0, v0, v6}, Lcom/metamoji/ui/library/note/LibraryNotePartView$1;-><init>(Lcom/metamoji/ui/library/note/LibraryNotePartView;ILjava/lang/String;)V

    .line 141
    invoke-virtual {p0, v7}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->thumbnailTaskExecute(Landroid/os/AsyncTask;)V

    .line 144
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->pageType()Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v0

    .line 145
    sget-object v6, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SYSTEM:Lcom/metamoji/lb/LbConstants$LbPageType;

    if-eq v0, v6, :cond_1

    .line 146
    sget v6, Lcom/metamoji/noteanytime/R$id;->button_library_delete:I

    invoke-virtual {p0, v6}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView;->m_deleteBtn:Landroid/widget/ImageButton;

    .line 147
    iget-object v6, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView;->m_deleteBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 148
    invoke-virtual {v6, v3, v4, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 149
    iget-object v3, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView;->m_deleteBtn:Landroid/widget/ImageButton;

    new-instance v4, Lcom/metamoji/ui/library/note/LibraryNotePartView$2;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/library/note/LibraryNotePartView$2;-><init>(Lcom/metamoji/ui/library/note/LibraryNotePartView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView;->m_partDic:Ljava/util/Map;

    const-string v4, "isTrial"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    sget v3, Lcom/metamoji/noteanytime/R$id;->overlay_library_trial:I

    invoke-virtual {p0, v3}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 161
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :cond_2
    sget-object v3, Lcom/metamoji/ui/library/note/LibraryNotePartView$3;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {v0}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_3

    goto :goto_0

    .line 170
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$id;->overlay_library_shortcut:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 171
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :goto_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->label_library_title:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView;->m_titleLabel:Landroid/widget/TextView;

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 181
    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView;->m_titleLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v1}, Lcom/metamoji/ui/library/item/LibraryPageView;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 182
    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView;->m_titleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 183
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->updateTitle()V

    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 221
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/library/item/LibraryPartView;->onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected showContextMenu(Lcom/metamoji/lb/LbConstants$LbPageType;)V
    .locals 0

    return-void
.end method

.method public updateTitle()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView;->m_partDic:Ljava/util/Map;

    const-string/jumbo v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 196
    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoTitle:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView;->m_titleLabel:Landroid/widget/TextView;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 201
    iget-object v1, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView;->m_titleLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView;->m_titleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
