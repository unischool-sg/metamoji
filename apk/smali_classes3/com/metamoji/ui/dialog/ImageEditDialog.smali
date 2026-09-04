.class public Lcom/metamoji/ui/dialog/ImageEditDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ImageEditDialog.java"

# interfaces
.implements Lcom/metamoji/un/image/UnImageUnit$ICloseImageEditDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/ImageEditDialog$IOnResult;
    }
.end annotation


# static fields
.field public static final CTX_BUNDLE:Ljava/lang/String; = "bundle"

.field public static final KEY_BITMAP:Ljava/lang/String; = "bitmap"

.field public static final KEY_IS_WEB:Ljava/lang/String; = "is_web"

.field public static final KEY_NEW_ALPHA:Ljava/lang/String; = "new_alpha"

.field public static final KEY_NEW_MASK:Ljava/lang/String; = "new_mask"

.field public static final KEY_NEW_QCURVE_PATH:Ljava/lang/String; = "new_qcurve_path"

.field public static final KEY_OLD_ALPHA:Ljava/lang/String; = "old_alpha"

.field public static final KEY_OLD_MASK:Ljava/lang/String; = "old_mask"

.field public static final KEY_OLD_QCURVE_PATH:Ljava/lang/String; = "old_qcurve_path"

.field public static final KEY_ORG_RAW_MASK:Ljava/lang/String; = "org_raw_mask"

.field public static final KEY_UNIT_ID:Ljava/lang/String; = "unit_id"

.field public static final KEY_ZOOM_X:Ljava/lang/String; = "zoom_x"

.field public static final KEY_ZOOM_Y:Ljava/lang/String; = "zoom_y"


# instance fields
.field mAlphaDisp:Landroid/widget/TextView;

.field mAlphaOrg:F

.field mAlphaResult:F

.field mEditWebPage:Z

.field mImage:Landroid/graphics/Bitmap;

.field mImageEditor:Lcom/metamoji/ui/UiImageEditorView;

.field mMaskQCurvePathOrg:Lcom/metamoji/cm/PointArray;

.field mMaskQCurvePathResult:Lcom/metamoji/cm/PointArray;

.field mMaskRectOrg:Landroid/graphics/Rect;

.field mMaskRectResult:Landroid/graphics/Rect;

.field mOnClosed:Ljava/lang/Runnable;

.field mOnResult:Lcom/metamoji/ui/dialog/ImageEditDialog$IOnResult;

.field mSelectLasso:Landroid/view/View;

.field mSelectRect:Landroid/view/View;

.field mUnitId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mEditWebPage:Z

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mUnitId:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mImage:Landroid/graphics/Bitmap;

    .line 32
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mMaskRectResult:Landroid/graphics/Rect;

    .line 33
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mMaskQCurvePathResult:Lcom/metamoji/cm/PointArray;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 34
    iput v1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mAlphaResult:F

    .line 36
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mMaskRectOrg:Landroid/graphics/Rect;

    .line 37
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mMaskQCurvePathOrg:Lcom/metamoji/cm/PointArray;

    .line 38
    iput v1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mAlphaOrg:F

    .line 40
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mImageEditor:Lcom/metamoji/ui/UiImageEditorView;

    .line 41
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mAlphaDisp:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mOnResult:Lcom/metamoji/ui/dialog/ImageEditDialog$IOnResult;

    .line 43
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mOnClosed:Ljava/lang/Runnable;

    .line 45
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mSelectRect:Landroid/view/View;

    .line 46
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mSelectLasso:Landroid/view/View;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Rect;FZFFLandroid/graphics/RectF;Lcom/metamoji/cm/PointArray;Lcom/metamoji/ui/dialog/ImageEditDialog$IOnResult;Ljava/lang/Runnable;)Lcom/metamoji/ui/dialog/ImageEditDialog;
    .locals 1

    .line 73
    new-instance v0, Lcom/metamoji/ui/dialog/ImageEditDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/ImageEditDialog;-><init>()V

    .line 75
    iput-object p9, v0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mOnResult:Lcom/metamoji/ui/dialog/ImageEditDialog$IOnResult;

    .line 76
    iput-object p10, v0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mOnClosed:Ljava/lang/Runnable;

    .line 77
    iput-object p1, v0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mImage:Landroid/graphics/Bitmap;

    .line 79
    new-instance p9, Landroid/os/Bundle;

    invoke-direct {p9}, Landroid/os/Bundle;-><init>()V

    .line 80
    const-string p10, "is_web"

    invoke-virtual {p9, p10, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    const-string p4, "bitmap"

    invoke-virtual {p9, p4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    const-string p1, "old_mask"

    invoke-virtual {p9, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    const-string p1, "old_alpha"

    invoke-virtual {p9, p1, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 84
    const-string/jumbo p1, "unit_id"

    invoke-virtual {p9, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string p0, "old_qcurve_path"

    invoke-static {p9, p0, p8}, Lcom/metamoji/ui/UiImageEditorView;->storePointArray(Landroid/os/Bundle;Ljava/lang/String;Lcom/metamoji/cm/PointArray;)V

    .line 88
    const-string/jumbo p0, "zoom_x"

    invoke-virtual {p9, p0, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 89
    const-string/jumbo p0, "zoom_y"

    invoke-virtual {p9, p0, p6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 90
    const-string p0, "org_raw_mask"

    invoke-virtual {p9, p0, p7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    invoke-virtual {v0, p9}, Lcom/metamoji/ui/dialog/ImageEditDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public closeImageEditDialog()V
    .locals 0

    .line 234
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/ImageEditDialog;->dismiss()V

    return-void
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 222
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 106
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/ImageEditDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    const-string v1, "is_web"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mEditWebPage:Z

    .line 108
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 110
    const-string v1, "bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mImage:Landroid/graphics/Bitmap;

    .line 112
    :cond_0
    const-string/jumbo v1, "unit_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mUnitId:Ljava/lang/String;

    .line 113
    const-string v1, "old_mask"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mMaskRectOrg:Landroid/graphics/Rect;

    .line 114
    const-string v1, "old_qcurve_path"

    invoke-static {v0, v1}, Lcom/metamoji/ui/UiImageEditorView;->restorePointArray(Landroid/os/Bundle;Ljava/lang/String;)Lcom/metamoji/cm/PointArray;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mMaskQCurvePathOrg:Lcom/metamoji/cm/PointArray;

    .line 115
    const-string v1, "old_alpha"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mAlphaOrg:F

    .line 116
    const-string v2, "new_alpha"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mAlphaResult:F

    .line 119
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_image_edit:I

    iput v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mViewId:I

    .line 120
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mEditWebPage:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/metamoji/noteanytime/R$string;->ContextMenu_EditWebPage:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->ContextMenu_EditImage:I

    :goto_0
    iput v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mTitleId:I

    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 124
    sget p2, Lcom/metamoji/noteanytime/R$id;->imageEditor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/UiImageEditorView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mImageEditor:Lcom/metamoji/ui/UiImageEditorView;

    .line 125
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mImage:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mMaskRectOrg:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mMaskQCurvePathOrg:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p2, p3, v0, v1}, Lcom/metamoji/ui/UiImageEditorView;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/metamoji/cm/PointArray;)V

    .line 128
    sget p2, Lcom/metamoji/noteanytime/R$id;->text_percent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mAlphaDisp:Landroid/widget/TextView;

    .line 129
    iget p2, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mAlphaResult:F

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 130
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/ImageEditDialog;->showAlpha(I)V

    .line 133
    sget p3, Lcom/metamoji/noteanytime/R$id;->seek_bar:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/SeekBar;

    const/16 v0, 0x5a

    .line 134
    invoke-virtual {p3, v0}, Landroid/widget/SeekBar;->setMax(I)V

    add-int/lit8 p2, p2, -0xa

    .line 135
    invoke-virtual {p3, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 136
    new-instance p2, Lcom/metamoji/ui/dialog/ImageEditDialog$1;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/dialog/ImageEditDialog$1;-><init>(Lcom/metamoji/ui/dialog/ImageEditDialog;)V

    invoke-virtual {p3, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 162
    sget p2, Lcom/metamoji/noteanytime/R$id;->scrollView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/UiScrollView;

    .line 164
    sget p3, Lcom/metamoji/noteanytime/R$id;->select_rect:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mSelectRect:Landroid/view/View;

    .line 165
    new-instance v0, Lcom/metamoji/ui/dialog/ImageEditDialog$2;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/ui/dialog/ImageEditDialog$2;-><init>(Lcom/metamoji/ui/dialog/ImageEditDialog;Lcom/metamoji/ui/UiScrollView;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    sget p3, Lcom/metamoji/noteanytime/R$id;->select_lasso:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mSelectLasso:Landroid/view/View;

    .line 174
    new-instance v0, Lcom/metamoji/ui/dialog/ImageEditDialog$3;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/ui/dialog/ImageEditDialog$3;-><init>(Lcom/metamoji/ui/dialog/ImageEditDialog;Lcom/metamoji/ui/UiScrollView;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/ImageEditDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    .line 184
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/ImageEditDialog;->updateSelectModeButtons()V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 227
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 228
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mOnClosed:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 229
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 10

    .line 207
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mImageEditor:Lcom/metamoji/ui/UiImageEditorView;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiImageEditorView;->check()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mImageEditor:Lcom/metamoji/ui/UiImageEditorView;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiImageEditorView;->getResultMaskRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mMaskRectResult:Landroid/graphics/Rect;

    .line 212
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mImageEditor:Lcom/metamoji/ui/UiImageEditorView;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiImageEditorView;->getResultMaskQCurvePath()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mMaskQCurvePathResult:Lcom/metamoji/cm/PointArray;

    .line 213
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    .line 215
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/ImageEditDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 216
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mOnResult:Lcom/metamoji/ui/dialog/ImageEditDialog$IOnResult;

    const-string/jumbo v1, "unit_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mMaskRectOrg:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mMaskRectResult:Landroid/graphics/Rect;

    iget v4, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mAlphaOrg:F

    iget v5, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mAlphaResult:F

    const-string/jumbo v6, "zoom_x"

    .line 217
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    const-string/jumbo v7, "zoom_y"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    const-string v8, "org_raw_mask"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mMaskQCurvePathResult:Lcom/metamoji/cm/PointArray;

    .line 216
    invoke-interface/range {v0 .. v9}, Lcom/metamoji/ui/dialog/ImageEditDialog$IOnResult;->onResult(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFLandroid/graphics/RectF;Lcom/metamoji/cm/PointArray;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 239
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 240
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/ImageEditDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 241
    const-string v1, "new_alpha"

    iget v2, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mAlphaResult:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 242
    sget-object v0, Lcom/metamoji/ui/dialog/ImageEditDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method showAlpha(I)V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mAlphaDisp:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d%%"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mImageEditor:Lcom/metamoji/ui/UiImageEditorView;

    mul-int/lit16 p1, p1, 0xff

    div-int/lit8 p1, p1, 0x64

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/UiImageEditorView;->setImageAlpha(I)V

    return-void
.end method

.method updateSelectModeButtons()V
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mImageEditor:Lcom/metamoji/ui/UiImageEditorView;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiImageEditorView;->getSelectMode()I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mSelectRect:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 194
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ImageEditDialog;->mSelectLasso:Landroid/view/View;

    if-ne v0, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method
