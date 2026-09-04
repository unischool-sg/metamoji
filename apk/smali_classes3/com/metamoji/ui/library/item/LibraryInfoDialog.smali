.class public Lcom/metamoji/ui/library/item/LibraryInfoDialog;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "LibraryInfoDialog.java"


# static fields
.field private static final THUMBNAIL_PADDING:F = 2.6666667f

.field private static final THUMBNAIL_SIZE:F = 80.0f


# instance fields
.field private mBookmarked:Z

.field private mEntityId:Ljava/lang/String;

.field private mLibraryDlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

.field private mPartDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevBookmarked:Z

.field private mPrevTitle:Ljava/lang/String;

.field private mThumbnailPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    return-void
.end method

.method private setThumbnail(Landroid/app/Dialog;)V
    .locals 11

    const/high16 v0, 0x42a00000    # 80.0f

    .line 84
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 88
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mThumbnailPath:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 93
    :goto_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-nez v1, :cond_5

    .line 95
    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 96
    iget-object v5, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mThumbnailPath:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 97
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 98
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v5, :cond_4

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    if-le v5, v6, :cond_3

    int-to-float v7, v0

    int-to-float v8, v6

    int-to-float v9, v5

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-int v7, v7

    move v8, v7

    move v7, v0

    goto :goto_3

    :cond_3
    int-to-float v7, v0

    int-to-float v8, v5

    int-to-float v9, v6

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-int v7, v7

    move v8, v0

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v0

    move v8, v7

    move v1, v3

    goto :goto_3

    :cond_5
    move v7, v0

    move v8, v7

    move v5, v2

    move v6, v5

    .line 114
    :goto_3
    sget v9, Lcom/metamoji/noteanytime/R$id;->image_libinfo_thumbnail:I

    invoke-virtual {p1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 115
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 116
    iget-object v10, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mLibraryDlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    instance-of v10, v10, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;

    if-eqz v10, :cond_6

    .line 118
    iput v7, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 119
    iput v8, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4

    .line 122
    :cond_6
    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 123
    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v0, 0x402aaaab

    .line 124
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 125
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    :goto_4
    if-nez v1, :cond_7

    .line 130
    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    add-int/2addr v5, v7

    sub-int/2addr v5, v3

    .line 131
    div-int/2addr v5, v7

    add-int/2addr v6, v8

    sub-int/2addr v6, v3

    .line 132
    div-int/2addr v6, v8

    .line 133
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 134
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mThumbnailPath:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    return-void
.end method

.method private updateData(Z)V
    .locals 3

    .line 141
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    sget v1, Lcom/metamoji/noteanytime/R$id;->edit_libinfo_title:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 146
    sget v2, Lcom/metamoji/noteanytime/R$id;->switch_libinfo_bookmark:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiSwitch;

    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mTitle:Ljava/lang/String;

    .line 149
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mBookmarked:Z

    return-void

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-boolean p1, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mBookmarked:Z

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public getEntityId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mEntityId:Ljava/lang/String;

    return-object v0
.end method

.method public getPartDic()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mPartDic:Ljava/util/Map;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/metamoji/ui/library/item/LibraryViewDialog;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/library/item/LibraryViewDialog;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mLibraryDlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    .line 61
    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mEntityId:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mPartDic:Ljava/util/Map;

    if-eqz p6, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    const-string p6, ""

    :goto_0
    iput-object p6, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mPrevTitle:Ljava/lang/String;

    .line 64
    iput-boolean p7, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mPrevBookmarked:Z

    .line 65
    iput-object p5, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mThumbnailPath:Ljava/lang/String;

    .line 68
    sget p1, Lcom/metamoji/noteanytime/R$layout;->dialog_library_info:I

    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mViewId:I

    .line 69
    iput p2, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mTitleId:I

    .line 70
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mPrevTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mTitle:Ljava/lang/String;

    .line 71
    iget-boolean p1, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mPrevBookmarked:Z

    iput-boolean p1, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mBookmarked:Z

    return-void
.end method

.method public isBookmarked()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mBookmarked:Z

    return v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 1

    .line 174
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCancel(Landroid/view/View;)V

    .line 175
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mLibraryDlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0, v0, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->partInfoDlgDone(ZLcom/metamoji/ui/library/item/LibraryInfoDialog;ZZ)V

    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 164
    invoke-direct {p0, v0}, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->updateData(Z)V

    .line 165
    iget-boolean v1, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mPrevBookmarked:Z

    iget-boolean v2, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mBookmarked:Z

    if-eq v1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 166
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mPrevTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v0

    .line 168
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    .line 169
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->mLibraryDlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {p1, v0, p0, v1, v2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->partInfoDlgDone(ZLcom/metamoji/ui/library/item/LibraryInfoDialog;ZZ)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 158
    invoke-direct {p0, v0}, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->updateData(Z)V

    .line 159
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 78
    invoke-direct {p0, v0}, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->setThumbnail(Landroid/app/Dialog;)V

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0}, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->updateData(Z)V

    .line 80
    invoke-super {p0}, Lcom/metamoji/ui/dialog/UiDialog;->onStart()V

    return-void
.end method
