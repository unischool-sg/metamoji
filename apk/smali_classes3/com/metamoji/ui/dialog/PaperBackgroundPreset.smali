.class public Lcom/metamoji/ui/dialog/PaperBackgroundPreset;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "PaperBackgroundPreset.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static TAG:Ljava/lang/String;

.field private static btnid:[I

.field public static imgid:[I


# instance fields
.field _dlgPaperBackground:Lcom/metamoji/ui/dialog/PaperBackground;

.field private _param:Lcom/metamoji/ui/UiPaperSettingsParam;

.field private _prebtn:[Landroid/widget/ImageButton;

.field _preview:Landroid/widget/ImageView;

.field btn_bk:Lcom/metamoji/ui/common/UiButton;


# direct methods
.method static bridge synthetic -$$Nest$fget_param(Lcom/metamoji/ui/dialog/PaperBackgroundPreset;)Lcom/metamoji/ui/UiPaperSettingsParam;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 31
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_paper_pre_img_btn_0:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->dlg_paper_pre_img_btn_1:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->dlg_paper_pre_img_btn_2:I

    sget v3, Lcom/metamoji/noteanytime/R$id;->dlg_paper_pre_img_btn_3:I

    sget v4, Lcom/metamoji/noteanytime/R$id;->dlg_paper_pre_img_btn_4:I

    sget v5, Lcom/metamoji/noteanytime/R$id;->dlg_paper_pre_img_btn_5:I

    filled-new-array/range {v0 .. v5}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->btnid:[I

    .line 39
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->sheet_background_1:I

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->sheet_background_2:I

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->sheet_background_3:I

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->sheet_background_4:I

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->sheet_background_5:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->imgid:[I

    .line 48
    const-string v0, "PaperBackgroundPreset"

    sput-object v0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    .line 25
    new-instance v0, Lcom/metamoji/ui/UiPaperSettingsParam;

    invoke-direct {v0}, Lcom/metamoji/ui/UiPaperSettingsParam;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/4 v0, 0x6

    .line 46
    new-array v0, v0, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_prebtn:[Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public get_param()Lcom/metamoji/ui/UiPaperSettingsParam;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    return-object v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    .line 149
    sget-object v3, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->btnid:[I

    aget v3, v3, v2

    if-ne v0, v3, :cond_1

    .line 150
    iget-object v3, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iput v2, v3, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    if-nez v2, :cond_0

    .line 152
    iget-object v3, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iput-boolean v1, v3, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    .line 153
    iget-object v3, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 156
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 157
    iget-object v4, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v5, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->imgid:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v4, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    .line 158
    iget-object v3, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    .line 159
    iget-object v3, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iput-boolean v4, v3, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    .line 160
    iget-object v3, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iput-boolean v1, v3, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    .line 161
    iget-object v3, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    sget-object v4, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->TILED:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object v4, v3, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 163
    :goto_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->onDone(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    if-eqz p1, :cond_0

    .line 53
    sget-object v0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/UiPaperSettingsParam;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    .line 56
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_paperbackground_preset:I

    iput v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->mViewId:I

    .line 57
    sget v0, Lcom/metamoji/noteanytime/R$string;->SheetSettings_SheetBackGround:I

    iput v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->mTitleId:I

    .line 59
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_prebtn:[Landroid/widget/ImageButton;

    sget-object v2, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->btnid:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    aput-object v2, v1, v0

    .line 62
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_prebtn:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->paperbackground_preset_btn_album:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->btn_bk:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_2

    .line 67
    new-instance v1, Lcom/metamoji/ui/dialog/PaperBackgroundPreset$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/PaperBackgroundPreset$1;-><init>(Lcom/metamoji/ui/dialog/PaperBackgroundPreset;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_paper_bk_alb_btn_img:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_preview:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 78
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v0, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    .line 81
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_preview:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v0, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 81
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->restoreInstanceStateIfAvailable(Landroid/app/Dialog;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 3

    .line 102
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    .line 104
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 107
    const-string v1, "UiPaperSettingsParam"

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_PAPER_BACK_SETTING_DONE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/nt/NtEditorWindowController;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 95
    const-string v0, "reconstructdialogflag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    sget-object v0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public set_background(Lcom/metamoji/ui/UiPaperSettingsParam;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    .line 174
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    .line 175
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    .line 176
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 177
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUri:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    iput v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    .line 179
    iget-boolean v0, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object p1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iput-object v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    .line 184
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_preview:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object p1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_preview:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v0, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 187
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_preview:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public set_bgImageParams(Lcom/metamoji/nt/NtPageController$BGImageParams;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, p1, Lcom/metamoji/nt/NtPageController$BGImageParams;->Style:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 134
    iget-object v0, p1, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    invoke-virtual {v0}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/png"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    .line 138
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, p1, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    iget-object p1, p1, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    invoke-static {p1}, Lcom/metamoji/cm/ImageUtils;->getBitmapSizeFromBlob(Lcom/metamoji/cm/Blob;)Lcom/metamoji/cm/Size;

    move-result-object p1

    const/16 v2, 0x40

    invoke-static {v1, v2, v2, p1}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    .line 139
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/4 v0, -0x1

    iput v0, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    .line 140
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUri:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public set_param(Lcom/metamoji/ui/UiPaperSettingsParam;)V
    .locals 2

    .line 120
    iget-object v0, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 124
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    .line 125
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    .line 126
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    iput-boolean v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    .line 127
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUri:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget p1, p1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    iput p1, v0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    return-void
.end method
