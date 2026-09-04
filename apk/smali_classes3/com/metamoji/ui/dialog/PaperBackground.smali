.class public Lcom/metamoji/ui/dialog/PaperBackground;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "PaperBackground.java"


# static fields
.field private static TAG:Ljava/lang/String; = "PaperBackground"


# instance fields
.field private _bgImageView:Landroid/widget/ImageView;

.field private _btnDone:Lcom/metamoji/ui/common/UiButtonHeader;

.field private _groupKind:Lcom/metamoji/ui/common/UiRadioGroup;

.field private _groupLayout:Lcom/metamoji/ui/common/UiRadioGroup;

.field private _groupResolution:Lcom/metamoji/ui/common/UiRadioGroup;

.field private _imageOpacitySlider:Lcom/metamoji/ui/common/UiPlainSlider;

.field private _importImgBtn:Lcom/metamoji/ui/common/UiButton;

.field private _isSheet:Z

.field private _param:Lcom/metamoji/ui/UiPaperSettingsParam;


# direct methods
.method static bridge synthetic -$$Nest$mupdateThumbnail(Lcom/metamoji/ui/dialog/PaperBackground;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PaperBackground;->updateThumbnail()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 38
    new-instance v0, Lcom/metamoji/ui/UiPaperSettingsParam;

    invoke-direct {v0}, Lcom/metamoji/ui/UiPaperSettingsParam;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_isSheet:Z

    return-void
.end method

.method private changeEnable()V
    .locals 2

    .line 206
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_paper_bk_btn_3:I

    .line 207
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_groupLayout:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    .line 211
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_paper_bk_btn_jpg:I

    .line 212
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_groupKind:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    .line 216
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_paper_bk_btn_normal:I

    .line 217
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_groupResolution:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    return-void
.end method

.method private getBitmapFormat(Landroid/net/Uri;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 296
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 297
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 298
    const-string v0, "jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p1

    .line 300
    :cond_0
    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 301
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p1

    .line 303
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p1
.end method

.method private setSelectValus()V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_groupLayout:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButtonIndex()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    sget-object v2, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->CENTER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object v2, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 192
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    sget-object v2, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->FIT_TO_PAPER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object v2, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    goto :goto_0

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 194
    sget-object v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->FIT_TO_WHOLE_PAPER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object v0, v2, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    goto :goto_0

    .line 196
    :cond_2
    sget-object v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->TILED:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object v0, v2, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_groupKind:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButtonIndex()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    .line 199
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_groupResolution:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButtonIndex()I

    move-result v2

    if-nez v2, :cond_4

    move v1, v3

    :cond_4
    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    .line 200
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_imageOpacitySlider:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->getCurrentPos()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageOpacity:F

    return-void
.end method

.method private updateThumbnail()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_imageOpacitySlider:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->getCurrentPos()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 292
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_bgImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 184
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    if-eqz p3, :cond_0

    .line 62
    sget-object v0, Lcom/metamoji/ui/dialog/PaperBackground;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/UiPaperSettingsParam;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    .line 63
    const-string v0, "IsSheet"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_isSheet:Z

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    .line 68
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    sget-object v2, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->CENTER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object v2, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 69
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    .line 70
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    .line 71
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageOpacity:F

    .line 73
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_paperbackground:I

    iput v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->mViewId:I

    .line 74
    sget v0, Lcom/metamoji/noteanytime/R$string;->SheetBackGround_Image_Album:I

    iput v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->mTitleId:I

    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 79
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_right_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_btnDone:Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 p3, 0x4

    .line 80
    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 82
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_paper_bk_gr2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_groupLayout:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 83
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_paper_bk_gr_imgtype:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_groupKind:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 84
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_paper_bk_gr_resolution:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_groupResolution:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 85
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_paper_bk_btn_inport:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_importImgBtn:Lcom/metamoji/ui/common/UiButton;

    .line 86
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_paper_bk_img_preview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_bgImageView:Landroid/widget/ImageView;

    .line 87
    sget p2, Lcom/metamoji/noteanytime/R$id;->image_opacity:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiPlainSlider;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_imageOpacitySlider:Lcom/metamoji/ui/common/UiPlainSlider;

    const/16 p2, 0xff

    .line 90
    invoke-static {p2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    .line 91
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_imageOpacitySlider:Lcom/metamoji/ui/common/UiPlainSlider;

    const/16 v3, 0x19

    invoke-static {p2, v3}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result v4

    invoke-virtual {v0, v4, p2}, Lcom/metamoji/ui/common/UiPlainSlider;->setSliderColor(II)V

    .line 92
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_imageOpacitySlider:Lcom/metamoji/ui/common/UiPlainSlider;

    const/16 v0, 0x3e8

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentPos(I)V

    .line 93
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_imageOpacitySlider:Lcom/metamoji/ui/common/UiPlainSlider;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    new-instance v5, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-direct {v5, v2, v1}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v5, v4, v2

    new-instance v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v5, 0xfa

    invoke-direct {v2, v5, v3}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v2, v4, v1

    new-instance v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v2, 0x1f4

    const/16 v3, 0x32

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v2, 0x2

    aput-object v1, v4, v2

    new-instance v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v2, 0x2ee

    const/16 v3, 0x4b

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v2, 0x3

    aput-object v1, v4, v2

    new-instance v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v2, 0x64

    invoke-direct {v1, v0, v2}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v1, v4, p3

    invoke-virtual {p2, v4}, Lcom/metamoji/ui/common/UiPlainSlider;->setTickList([Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;)V

    .line 100
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_imageOpacitySlider:Lcom/metamoji/ui/common/UiPlainSlider;

    new-instance p3, Lcom/metamoji/ui/dialog/PaperBackground$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/PaperBackground$1;-><init>(Lcom/metamoji/ui/dialog/PaperBackground;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiPlainSlider;->setValueChangedListener(Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;)V

    .line 107
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PaperBackground;->changeEnable()V

    .line 109
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_importImgBtn:Lcom/metamoji/ui/common/UiButton;

    new-instance p3, Lcom/metamoji/ui/dialog/PaperBackground$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/PaperBackground$2;-><init>(Lcom/metamoji/ui/dialog/PaperBackground;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/PaperBackground;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 7

    .line 134
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PaperBackground;->setSelectValus()V

    .line 135
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/PaperBackground;->getParentDialog()Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object v0

    .line 136
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    .line 138
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 140
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 141
    iget-boolean v2, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_isSheet:Z

    if-eqz v2, :cond_0

    .line 142
    const-string v2, "UiPaperSettingsParam"

    iget-object v3, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PAPER_BACK_SETTING_DONE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v2, v1}, Lcom/metamoji/nt/NtEditorWindowController;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    goto :goto_2

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_imageOpacitySlider:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiPlainSlider;->getCurrentPos()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p1, v2

    .line 147
    new-instance v2, Lcom/metamoji/nt/NtPageController$BGImageParams;

    invoke-direct {v2}, Lcom/metamoji/nt/NtPageController$BGImageParams;-><init>()V

    .line 149
    iget-object v3, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v3, v3, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 150
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v4

    .line 151
    invoke-interface {v4}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v5, v5, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v4, v3, v5}, Lcom/metamoji/cm/ImageUtils;->createImageBlobFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;

    move-result-object v3

    .line 152
    iget-object v4, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v4, v4, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    invoke-static {v4}, Lcom/metamoji/df/controller/AttachmentsManager;->getBitmapShortSideSize(Z)I

    move-result v4

    .line 153
    iget-object v5, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v5, v5, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    invoke-static {v5}, Lcom/metamoji/df/controller/AttachmentsManager;->getBitmapLongSideSize(Z)I

    move-result v5

    const/4 v6, 0x0

    .line 154
    invoke-static {v3, v4, v5, v6}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 156
    iget-object v4, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v4, v4, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    if-eqz v4, :cond_2

    .line 157
    iget-object v4, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v4, v4, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x50

    goto :goto_0

    :cond_1
    const/16 v4, 0x32

    goto :goto_0

    :cond_2
    const/16 v4, 0x64

    .line 159
    :goto_0
    iget-object v5, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v5, v5, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    if-eqz v5, :cond_3

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    :cond_3
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_1
    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Lcom/metamoji/cm/Blob;

    move-result-object v3

    iput-object v3, v2, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    .line 161
    iput p1, v2, Lcom/metamoji/nt/NtPageController$BGImageParams;->Opacity:F

    .line 162
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object p1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object p1, v2, Lcom/metamoji/nt/NtPageController$BGImageParams;->Style:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 163
    iput-object v6, v2, Lcom/metamoji/nt/NtPageController$BGImageParams;->Color:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 164
    iput p1, v2, Lcom/metamoji/nt/NtPageController$BGImageParams;->ColorOpacity:F

    .line 166
    invoke-static {v1, v2}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->addCoverFromLibrary(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtPageController$BGImageParams;)V

    .line 171
    :cond_4
    :goto_2
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_5

    .line 178
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog;->cancel()V

    :cond_5
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 123
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 124
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PaperBackground;->setSelectValus()V

    if-eqz p1, :cond_0

    .line 126
    sget-object v0, Lcom/metamoji/ui/dialog/PaperBackground;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    sget-object v0, Lcom/metamoji/ui/dialog/PaperBackground;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    const-string v0, "IsSheet"

    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_isSheet:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setIsSheet(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_isSheet:Z

    return-void
.end method

.method public setSelectImage(Landroid/net/Uri;)V
    .locals 4

    .line 267
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 268
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/PaperBackground;->getBitmapFormat(Landroid/net/Uri;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    .line 269
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/metamoji/cm/ImageUtils;->createImageBlobFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;

    move-result-object v0

    if-nez v0, :cond_0

    .line 272
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_Error_AppUnsupportedData:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/4 v3, -0x1

    iput v3, v2, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    .line 277
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUri:Ljava/lang/String;

    .line 278
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iput-object v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 279
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    invoke-static {v0}, Lcom/metamoji/cm/ImageUtils;->getBitmapSizeFromBlob(Lcom/metamoji/cm/Blob;)Lcom/metamoji/cm/Size;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {v0, v2, v2, v1}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    .line 280
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_bgImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v0, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 283
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PaperBackground;->updateThumbnail()V

    .line 285
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_btnDone:Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    return-void
.end method

.method public set_param(Lcom/metamoji/ui/UiPaperSettingsParam;)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    .line 223
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    .line 224
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    .line 225
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 226
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUri:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageOpacity:F

    iput v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageOpacity:F

    .line 228
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    iput v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    .line 229
    iget-boolean v0, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object p1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    return-void

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackground;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected wakeupGallery()V
    .locals 1

    .line 237
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->selectImageForPaperBackground()V

    :cond_0
    return-void
.end method
