.class public Lcom/metamoji/ui/dialog/DocumentSettings;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "DocumentSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "DocumentSettings"

.field static _TextUnitStyleTag:Ljava/lang/String; = "TextUnitStyle"


# instance fields
.field _TextUnitStyleDlg:Lcom/metamoji/ui/dialog/TextUnitStyle;

.field _TextUnitStyleListener:Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;

.field _coverPrintCheckView:Lcom/metamoji/ui/common/UiSwitch;

.field _footerButton:Lcom/metamoji/ui/common/UiButton;

.field _headerButton:Lcom/metamoji/ui/common/UiButton;

.field _notthumbtext:Ljava/lang/String;

.field _param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

.field _textStyleButton:Lcom/metamoji/ui/common/UiButton;

.field _thumbButton:Lcom/metamoji/ui/common/UiButton;

.field _thumbPreview:Landroid/widget/ImageView;

.field private _unitStyles:Lcom/metamoji/un/text/model/UnitStyles;


# direct methods
.method static bridge synthetic -$$Nest$fget_unitStyles(Lcom/metamoji/ui/dialog/DocumentSettings;)Lcom/metamoji/un/text/model/UnitStyles;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_unitStyles(Lcom/metamoji/ui/dialog/DocumentSettings;Lcom/metamoji/un/text/model/UnitStyles;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 133
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    .line 134
    new-instance v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    const/4 v1, 0x0

    .line 135
    iput-boolean v1, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->coverpage:Z

    .line 136
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->coverprint:Z

    return-void
.end method


# virtual methods
.method changeCoverSwitch()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_coverPrintCheckView:Lcom/metamoji/ui/common/UiSwitch;

    if-eqz v0, :cond_0

    .line 329
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-boolean v1, v1, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->coverpage:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public get_Footer()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->footer:Ljava/lang/String;

    return-object v0
.end method

.method public get_FrontCover()Z
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->coverpage:Z

    return v0
.end method

.method public get_Header()Ljava/lang/String;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->header:Ljava/lang/String;

    return-object v0
.end method

.method public get_NoFrontCoverOnPrinting()Z
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->coverprint:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public get_ThumbnailType()Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbUsed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->User:Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    return-object v0

    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->Auto:Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    return-object v0
.end method

.method public get_ThumbnailUri()Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbUri:Ljava/lang/String;

    return-object v0
.end method

.method public get_ThumbnailUsed()Z
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbUsed:Z

    return v0
.end method

.method public get_unitStyles()Lcom/metamoji/un/text/model/UnitStyles;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    if-eqz p1, :cond_0

    .line 142
    const-string v0, "DocSetParam"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    .line 143
    const-string v0, "UnitStyles"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/UnitStyles;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    .line 145
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_doc_settings:I

    iput v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->mViewId:I

    .line 146
    sget v0, Lcom/metamoji/noteanytime/R$string;->DocumentSetting_Title:I

    iput v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->mTitleId:I

    .line 152
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 153
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-boolean v2, v2, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbUsed:Z

    if-nez v2, :cond_1

    .line 156
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_doc_thumb_group:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    .line 157
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 163
    :cond_1
    sget v2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set_btn_thumb:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiButton;

    iput-object v2, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_thumbButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz v2, :cond_2

    .line 165
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$string;->ThumbnailSetting_NotSpecify:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_notthumbtext:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_thumbButton:Lcom/metamoji/ui/common/UiButton;

    new-instance v2, Lcom/metamoji/ui/dialog/DocumentSettings$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/DocumentSettings$1;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set_btn_img_thumb:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_thumbPreview:Landroid/widget/ImageView;

    .line 181
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_thumbPreview:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_thumbButton:Lcom/metamoji/ui/common/UiButton;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_notthumbtext:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 189
    :goto_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set_chk_firstpage:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiSwitch;

    .line 190
    iget-object v2, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-boolean v2, v2, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->coverpage:Z

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 191
    new-instance v2, Lcom/metamoji/ui/dialog/DocumentSettings$2;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/DocumentSettings$2;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 200
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 201
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 202
    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 206
    :cond_4
    invoke-static {}, Lcom/metamoji/nt/NtPrintPDF;->canPrint()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set_cover_prt:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 208
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set_chk_cover_prt:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiSwitch;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_coverPrintCheckView:Lcom/metamoji/ui/common/UiSwitch;

    .line 213
    iget-object v2, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-boolean v2, v2, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->coverprint:Z

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 214
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_coverPrintCheckView:Lcom/metamoji/ui/common/UiSwitch;

    new-instance v2, Lcom/metamoji/ui/dialog/DocumentSettings$3;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/DocumentSettings$3;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 222
    :cond_5
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set_btn_header:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_headerButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_6

    .line 224
    iget-object v2, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->header:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_headerButton:Lcom/metamoji/ui/common/UiButton;

    new-instance v2, Lcom/metamoji/ui/dialog/DocumentSettings$4;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/DocumentSettings$4;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    :cond_6
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set_btn_footer:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_footerButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_7

    .line 243
    iget-object v2, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->footer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_footerButton:Lcom/metamoji/ui/common/UiButton;

    new-instance v2, Lcom/metamoji/ui/dialog/DocumentSettings$5;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/DocumentSettings$5;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    :cond_7
    new-instance v0, Lcom/metamoji/ui/dialog/DocumentSettings$6;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/DocumentSettings$6;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings;)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_TextUnitStyleListener:Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;

    .line 272
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set_btn_textunit_def:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_textStyleButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_8

    .line 274
    new-instance v2, Lcom/metamoji/ui/dialog/DocumentSettings$7;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/DocumentSettings$7;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    if-eqz p1, :cond_9

    .line 288
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/DocumentSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/ui/dialog/DocumentSettings;->_TextUnitStyleTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/TextUnitStyle;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_TextUnitStyleDlg:Lcom/metamoji/ui/dialog/TextUnitStyle;

    if-eqz p1, :cond_9

    .line 290
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_TextUnitStyleListener:Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 294
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/DocumentSettings;->changeCoverSwitch()V

    .line 295
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/dialog/DocumentSettings;->restoreInstanceStateIfAvailable(Landroid/app/Dialog;)Z

    return-object v1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 3

    .line 311
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    .line 312
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 314
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 315
    sget-object v1, Lcom/metamoji/ui/dialog/DocumentSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/dialog/DocumentSettings$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/ui/dialog/DocumentSettings$8;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 301
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 303
    const-string v0, "reconstructdialogflag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    const-string v0, "DocSetParam"

    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 305
    const-string v0, "UnitStyles"

    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public set_Footer(Ljava/lang/String;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iput-object p1, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->footer:Ljava/lang/String;

    return-void
.end method

.method public set_HasFrontCover(Z)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iput-boolean p1, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->coverpage:Z

    return-void
.end method

.method public set_Header(Ljava/lang/String;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iput-object p1, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->header:Ljava/lang/String;

    return-void
.end method

.method public set_HeaderFooterString(ILjava/lang/String;)V
    .locals 2

    .line 421
    sget v0, Lcom/metamoji/noteanytime/R$string;->DocumentSetting_Header:I

    .line 425
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    if-ne p1, v0, :cond_0

    .line 422
    iput-object p2, v1, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->header:Ljava/lang/String;

    .line 423
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_headerButton:Lcom/metamoji/ui/common/UiButton;

    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-object p2, p2, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->header:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 425
    :cond_0
    iput-object p2, v1, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->footer:Ljava/lang/String;

    .line 426
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_footerButton:Lcom/metamoji/ui/common/UiButton;

    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-object p2, p2, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->footer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public set_PrintCover(Z)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iput-boolean p1, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->coverprint:Z

    return-void
.end method

.method public set_Thumbnail(Lcom/metamoji/cm/Blob;)V
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    const/16 v1, 0x40

    invoke-static {p1}, Lcom/metamoji/cm/ImageUtils;->getBitmapSizeFromBlob(Lcom/metamoji/cm/Blob;)Lcom/metamoji/cm/Size;

    move-result-object v2

    invoke-static {p1, v1, v1, v2}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    return-void
.end method

.method public set_ThumbnailType(Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;)V
    .locals 2

    .line 351
    sget-object v0, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->Auto:Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    .line 354
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 352
    iput-boolean p1, v1, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbUsed:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 354
    iput-boolean p1, v1, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbUsed:Z

    return-void
.end method

.method public set_background(Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;)V
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-boolean v1, p1, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUsed:Z

    iput-boolean v1, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbUsed:Z

    .line 397
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbUsed:Z

    .line 401
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p1, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    .line 399
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUri:Ljava/lang/String;

    iput-object p1, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbUri:Ljava/lang/String;

    goto :goto_0

    .line 401
    :cond_0
    iput-object v2, v1, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    .line 402
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iput-object v2, p1, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbUri:Ljava/lang/String;

    .line 404
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_thumbPreview:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 405
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    .line 408
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_thumbButton:Lcom/metamoji/ui/common/UiButton;

    if-nez p1, :cond_1

    .line 406
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_notthumbtext:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 408
    :cond_1
    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public set_unitStyles(Lcom/metamoji/un/text/model/UnitStyles;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings;->_unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    return-void
.end method
