.class public Lcom/metamoji/ui/dialog/DocumentThumbnail;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "DocumentThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "DocumentThumbnail"


# instance fields
.field private _bgImageView:Landroid/widget/ImageView;

.field private _groupBackgroundEnable:Lcom/metamoji/ui/common/UiRadioGroup;

.field private _importImgBtn:Lcom/metamoji/ui/common/UiButton;

.field _param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;


# direct methods
.method static bridge synthetic -$$Nest$mchangeEnable(Lcom/metamoji/ui/dialog/DocumentThumbnail;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/DocumentThumbnail;->changeEnable()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 39
    new-instance v0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    return-void
.end method

.method private changeEnable()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_importImgBtn:Lcom/metamoji/ui/common/UiButton;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    iget-boolean v1, v1, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUsed:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUsed:Z

    .line 168
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_bgImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 166
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 168
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public get_param()Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    return-object v0
.end method

.method public is_thumbUsed()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUsed:Z

    return v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    if-eqz p3, :cond_0

    .line 54
    sget-object v0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    .line 57
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_doc_thumb:I

    iput v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->mViewId:I

    .line 58
    sget v0, Lcom/metamoji/noteanytime/R$string;->Documentsetting_Thumbnail:I

    iput v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->mTitleId:I

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 61
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_thumb_grp_used:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_groupBackgroundEnable:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 62
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_thumb_btn_import:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_importImgBtn:Lcom/metamoji/ui/common/UiButton;

    .line 66
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    iget-boolean p2, p2, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUsed:Z

    .line 69
    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_groupBackgroundEnable:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p2, :cond_1

    .line 67
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_thumb_btn_use:I

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    goto :goto_0

    .line 69
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_thumb_btn_none:I

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    .line 71
    :goto_0
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_groupBackgroundEnable:Lcom/metamoji/ui/common/UiRadioGroup;

    new-instance p3, Lcom/metamoji/ui/dialog/DocumentThumbnail$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/DocumentThumbnail$1;-><init>(Lcom/metamoji/ui/dialog/DocumentThumbnail;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 85
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_thumb_preview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_bgImageView:Landroid/widget/ImageView;

    .line 86
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    iget-object p2, p2, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2

    .line 87
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_bgImageView:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    iget-object p3, p3, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    :cond_2
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_importImgBtn:Lcom/metamoji/ui/common/UiButton;

    new-instance p3, Lcom/metamoji/ui/dialog/DocumentThumbnail$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/DocumentThumbnail$2;-><init>(Lcom/metamoji/ui/dialog/DocumentThumbnail;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/DocumentThumbnail;->changeEnable()V

    .line 100
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/DocumentThumbnail;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 1

    .line 147
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    .line 149
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 151
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/ui/dialog/DocumentSettings;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/DocumentSettings;

    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/DocumentSettings;->set_background(Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 106
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 108
    sget-object v0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    sget-object v0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public setSelectImage(Landroid/net/Uri;)V
    .locals 4

    .line 206
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/metamoji/cm/ImageUtils;->createImageBlobFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    invoke-static {v0}, Lcom/metamoji/cm/ImageUtils;->getBitmapSizeFromBlob(Lcom/metamoji/cm/Blob;)Lcom/metamoji/cm/Size;

    move-result-object v2

    const/16 v3, 0x40

    invoke-static {v0, v3, v3, v2}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    .line 210
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUri:Ljava/lang/String;

    .line 211
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_bgImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public set_bgImage(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public set_bgImageUsed(Z)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    iput-boolean p1, v0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUsed:Z

    return-void
.end method

.method public set_param(Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    iget-boolean v1, p1, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbUsed:Z

    iput-boolean v1, v0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUsed:Z

    .line 120
    iget-object v0, p1, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected wakeupGallery()V
    .locals 1

    .line 176
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->selectDocThumbnailImage()V

    :cond_0
    return-void
.end method
