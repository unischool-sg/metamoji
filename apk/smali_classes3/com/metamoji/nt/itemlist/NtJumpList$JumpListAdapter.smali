.class Lcom/metamoji/nt/itemlist/NtJumpList$JumpListAdapter;
.super Lcom/metamoji/nt/itemlist/NtItemListAdapter;
.source "NtJumpList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/itemlist/NtJumpList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JumpListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/nt/itemlist/NtItemListAdapter<",
        "Lcom/metamoji/nt/NtJumpLocation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/metamoji/nt/NtNoteController;)V
    .locals 4

    .line 734
    invoke-direct {p0, p1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;-><init>(Landroid/content/Context;)V

    .line 737
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->getLinkJumpManager()Lcom/metamoji/nt/NtLinkJumpManager;

    move-result-object p1

    .line 738
    invoke-virtual {p1}, Lcom/metamoji/nt/NtLinkJumpManager;->getLinks()Ljava/util/List;

    move-result-object p1

    .line 739
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 741
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    goto :goto_1

    .line 742
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtJumpLocation;

    const/4 v3, 0x1

    .line 743
    invoke-virtual {p0, v2, v3}, Lcom/metamoji/nt/itemlist/NtJumpList$JumpListAdapter;->add(Ljava/lang/Object;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 746
    :cond_1
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/itemlist/NtJumpList$JumpListAdapter;->getBaseIndex(Lcom/metamoji/nt/NtNoteController;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtJumpList$JumpListAdapter;->initBaseIndex(I)V

    return-void
.end method


# virtual methods
.method protected _setThumbnail(Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;Lcom/metamoji/cm/Blob;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder<",
            "Lcom/metamoji/nt/NtJumpLocation;",
            ">;",
            "Lcom/metamoji/cm/Blob;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x78

    .line 764
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/itemlist/NtJumpList$JumpListAdapter;->dpToPx(I)I

    move-result v0

    .line 766
    iget-object v1, p1, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->item:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/nt/NtLinkJump;

    .line 767
    sget-object v2, Lcom/metamoji/nt/NtLinkJump$Type;->ActiveLocation:Lcom/metamoji/nt/NtLinkJump$Type;

    .line 768
    instance-of v3, v1, Lcom/metamoji/nt/NtJumpLocation;

    if-eqz v3, :cond_1

    .line 769
    check-cast v1, Lcom/metamoji/nt/NtJumpLocation;

    .line 770
    invoke-virtual {v1}, Lcom/metamoji/nt/NtJumpLocation;->getSize()Lcom/metamoji/cm/SizeF;

    move-result-object v2

    .line 771
    iget v3, v2, Lcom/metamoji/cm/SizeF;->width:F

    iget v4, v2, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 772
    iget v3, v2, Lcom/metamoji/cm/SizeF;->height:F

    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr v3, v2

    int-to-float v2, v0

    mul-float/2addr v3, v2

    float-to-int v2, v3

    goto :goto_0

    .line 774
    :cond_0
    iget v3, v2, Lcom/metamoji/cm/SizeF;->width:F

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v3, v2

    int-to-float v2, v0

    mul-float/2addr v3, v2

    float-to-int v2, v3

    move v5, v2

    move v2, v0

    move v0, v5

    .line 776
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/nt/NtJumpLocation;->getLinkJumpType()Lcom/metamoji/nt/NtLinkJump$Type;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    move v2, v0

    .line 779
    :goto_1
    iget-object v3, p1, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->thumbnail:Landroid/widget/ImageView;

    .line 780
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 782
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 783
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 785
    :cond_2
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 787
    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    .line 789
    invoke-static {p2, v0, v2, v4}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 791
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 794
    :cond_3
    sget-object p2, Lcom/metamoji/nt/NtLinkJump$Type;->ActiveLocation:Lcom/metamoji/nt/NtLinkJump$Type;

    if-ne v1, p2, :cond_4

    sget p2, Lcom/metamoji/noteanytime/R$drawable;->itemlist_jump:I

    goto :goto_3

    :cond_4
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->itemlist_jump_skip:I

    :goto_3
    invoke-static {p2}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 795
    iget-object p1, p1, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->jump:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected _updateThumbnail(Lcom/metamoji/nt/NtJumpLocation;)V
    .locals 0

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

    .line 731
    check-cast p1, Lcom/metamoji/nt/NtJumpLocation;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtJumpList$JumpListAdapter;->_updateThumbnail(Lcom/metamoji/nt/NtJumpLocation;)V

    return-void
.end method

.method protected getBaseIndex(Lcom/metamoji/nt/NtNoteController;)I
    .locals 2

    .line 751
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    .line 752
    const-string v0, "MMJNtDocumentSettings"

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 753
    instance-of v1, p1, Lcom/metamoji/nt/NtDocumentSettings;

    if-eqz v1, :cond_0

    .line 754
    check-cast p1, Lcom/metamoji/nt/NtDocumentSettings;

    .line 755
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocumentSettings;->hasFrontCover()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    :cond_0
    return v0
.end method

.method protected getThumbnail(Lcom/metamoji/nt/NtJumpLocation;)Lcom/metamoji/cm/Blob;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 828
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtJumpLocation;->getThumbnail()Lcom/metamoji/cm/Blob;

    move-result-object p1

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

    .line 731
    check-cast p1, Lcom/metamoji/nt/NtJumpLocation;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtJumpList$JumpListAdapter;->getThumbnail(Lcom/metamoji/nt/NtJumpLocation;)Lcom/metamoji/cm/Blob;

    move-result-object p1

    return-object p1
.end method

.method public holderInitialize(Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder<",
            "Lcom/metamoji/nt/NtJumpLocation;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 802
    iget-object v0, p1, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->jump:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 803
    iget-object p1, p1, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->label:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateLabel(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;)V
    .locals 4

    .line 809
    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->isPurged()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 810
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->getHolder()Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 811
    iget-object v1, v0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->label:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 814
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 815
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 817
    iget-object v2, v0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->item:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/nt/NtJumpLocation;

    .line 818
    invoke-virtual {v2}, Lcom/metamoji/nt/NtJumpLocation;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/metamoji/nt/NtJumpLocation;->getPageIndexByPageId(Ljava/lang/String;Lcom/metamoji/nt/NtNoteController;)I

    move-result v1

    iget v2, p0, Lcom/metamoji/nt/itemlist/NtJumpList$JumpListAdapter;->m_baseIndex:I

    add-int/2addr v1, v2

    .line 820
    iget-object v2, v0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->label:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->getPosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpList$JumpListAdapter;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "P)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object p1, v0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->label:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method
