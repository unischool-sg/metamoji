.class Lcom/metamoji/nt/itemlist/NtPageList$PageListAdapter;
.super Lcom/metamoji/nt/itemlist/NtItemListAdapter;
.source "NtPageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/itemlist/NtPageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PageListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/nt/itemlist/NtItemListAdapter<",
        "Lcom/metamoji/nt/NtPageController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/metamoji/nt/NtNoteController;)V
    .locals 3

    .line 906
    invoke-direct {p0, p1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;-><init>(Landroid/content/Context;)V

    .line 909
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 911
    invoke-virtual {p2, v0}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    const/4 v2, 0x1

    .line 912
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/nt/itemlist/NtPageList$PageListAdapter;->add(Ljava/lang/Object;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 915
    :cond_0
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/itemlist/NtPageList$PageListAdapter;->getBaseIndex(Lcom/metamoji/nt/NtNoteController;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtPageList$PageListAdapter;->initBaseIndex(I)V

    return-void
.end method


# virtual methods
.method protected _setThumbnail(Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;Lcom/metamoji/cm/Blob;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder<",
            "Lcom/metamoji/nt/NtPageController;",
            ">;",
            "Lcom/metamoji/cm/Blob;",
            ")V"
        }
    .end annotation

    .line 957
    iget-object v0, p1, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->thumbnail:Landroid/widget/ImageView;

    const/16 v1, 0x78

    .line 959
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/itemlist/NtPageList$PageListAdapter;->dpToPx(I)I

    move-result v1

    .line 960
    iget-object v2, p1, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->item:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v2

    .line 961
    iget-object p1, p1, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->item:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/nt/NtPageController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result p1

    cmpl-float v3, v2, p1

    if-lez v3, :cond_0

    int-to-float v3, v1

    div-float v4, p1, v2

    mul-float/2addr v3, v4

    .line 966
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_0

    :cond_0
    int-to-float v3, v1

    div-float v4, v2, p1

    mul-float/2addr v3, v4

    .line 968
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move v5, v3

    move v3, v1

    move v1, v5

    .line 976
    :goto_0
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    .line 977
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    .line 979
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 981
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 982
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 984
    :cond_1
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 986
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 988
    invoke-static {p2, v4, p1, v1}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 990
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 992
    :cond_2
    const-string/jumbo p1, "\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method protected _updateThumbnail(Lcom/metamoji/nt/NtPageController;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 950
    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtPageController;->updateThumbnail(Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic _updateThumbnail(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 903
    check-cast p1, Lcom/metamoji/nt/NtPageController;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtPageList$PageListAdapter;->_updateThumbnail(Lcom/metamoji/nt/NtPageController;)V

    return-void
.end method

.method protected getBaseIndex(Lcom/metamoji/nt/NtNoteController;)I
    .locals 2

    .line 920
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    .line 921
    const-string v0, "MMJNtDocumentSettings"

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 922
    instance-of v1, p1, Lcom/metamoji/nt/NtDocumentSettings;

    if-eqz v1, :cond_0

    .line 923
    check-cast p1, Lcom/metamoji/nt/NtDocumentSettings;

    .line 924
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocumentSettings;->hasFrontCover()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    :cond_0
    return v0
.end method

.method protected getThumbnail(Lcom/metamoji/nt/NtPageController;)Lcom/metamoji/cm/Blob;
    .locals 0

    if-eqz p1, :cond_0

    .line 944
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getThumbnail()Lcom/metamoji/cm/Blob;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic getThumbnail(Ljava/lang/Object;)Lcom/metamoji/cm/Blob;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 903
    check-cast p1, Lcom/metamoji/nt/NtPageController;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtPageList$PageListAdapter;->getThumbnail(Lcom/metamoji/nt/NtPageController;)Lcom/metamoji/cm/Blob;

    move-result-object p1

    return-object p1
.end method

.method public updateLabel(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;)V
    .locals 3

    .line 931
    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->isPurged()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 932
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->getHolder()Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 933
    iget-object v0, p1, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->label:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->item:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p1, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->label:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->item:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPageIndex()I

    move-result v1

    iget v2, p0, Lcom/metamoji/nt/itemlist/NtPageList$PageListAdapter;->m_baseIndex:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    iget-object p1, p1, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->label:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method
