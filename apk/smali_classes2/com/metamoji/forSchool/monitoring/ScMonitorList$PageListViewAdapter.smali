.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ScMonitorList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PageListViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public m_pageIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;->m_pageIds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected dpToPx(I)I
    .locals 2

    .line 162
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorPage()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 163
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;->m_pageIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPosition(Ljava/lang/String;)I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;->m_pageIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 117
    check-cast p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;->onBindViewHolder(Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;I)V
    .locals 11

    .line 174
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 177
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;->m_pageIds:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 178
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtNoteController;->pageIndexFromPageId(Ljava/lang/String;)I

    move-result v3

    .line 179
    invoke-virtual {v1, v3}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/16 v5, 0x78

    .line 184
    invoke-virtual {p0, v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;->dpToPx(I)I

    move-result v5

    .line 185
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v6

    .line 186
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v7

    cmpl-float v8, v6, v7

    if-lez v8, :cond_1

    int-to-float v8, v5

    div-float v9, v7, v6

    mul-float/2addr v8, v9

    .line 191
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    goto :goto_0

    :cond_1
    int-to-float v8, v5

    div-float v9, v6, v7

    mul-float/2addr v8, v9

    .line 193
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    move v10, v8

    move v8, v5

    move v5, v10

    .line 198
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    .line 199
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    .line 201
    iget-object v7, p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->thumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 203
    iput v5, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 204
    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 206
    :cond_2
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v5, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 208
    :goto_1
    iget-object v5, p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->thumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getThumbnail()Lcom/metamoji/cm/Blob;

    move-result-object v5

    const/4 v7, 0x0

    .line 211
    invoke-static {v5, v9, v6, v7}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 212
    iget-object v6, p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->thumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 214
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v5

    .line 215
    invoke-virtual {v5, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getStudentCountViewingPage(Ljava/lang/String;)I

    move-result v2

    .line 217
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 218
    const-string v5, "MMJNtDocumentSettings"

    invoke-virtual {v0, v5}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 219
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->hasFrontCover()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    move v0, v5

    .line 220
    :goto_2
    iget-object v6, p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->pageNumberLabel:Landroid/widget/TextView;

    const/4 v7, 0x1

    add-int/2addr v3, v7

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "%d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v2, :cond_4

    .line 223
    iget-object v0, p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->pageViewingStudentCountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    iget-object v0, p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->pageViewingCount:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 226
    :cond_4
    iget-object v0, p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->pageViewingStudentCountLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    :goto_3
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    if-eqz v0, :cond_8

    if-eq v0, v7, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    move v0, v5

    goto :goto_4

    .line 243
    :cond_5
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->school_page_class:I

    goto :goto_4

    .line 240
    :cond_6
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->school_page_group:I

    goto :goto_4

    .line 237
    :cond_7
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->school_page_user:I

    goto :goto_4

    .line 234
    :cond_8
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->school_page_normal:I

    .line 249
    :goto_4
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 250
    iget-object v2, p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->schoolPageTypeIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 254
    iget-object p1, p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 256
    :cond_9
    iget-object p1, p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;
    .locals 2

    .line 134
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/metamoji/noteanytime/R$layout;->nt_pagelist_item:I

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 137
    new-instance p2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;Landroid/view/View;)V

    .line 140
    iget-object p1, p2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$1;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method protected onPageTapped(Ljava/lang/String;)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->pageJump(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
