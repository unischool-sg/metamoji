.class public Lcom/metamoji/ui/dialog/TitleEdit;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "TitleEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "TitleEditParam"


# instance fields
.field private _defaultTitle:Ljava/lang/String;

.field private _docId:Ljava/lang/String;

.field private _driveId:Ljava/lang/String;

.field private _editText:Landroid/widget/EditText;

.field public _param:Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;


# direct methods
.method static bridge synthetic -$$Nest$fget_editText(Lcom/metamoji/ui/dialog/TitleEdit;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 61
    new-instance v0, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_param:Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 61
    new-instance v0, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_param:Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;

    .line 123
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_docId:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_driveId:Ljava/lang/String;

    return-void
.end method

.method private getDateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 142
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 144
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 281
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 152
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TitleEdit;->enableAutoDetectTextViewMode()V

    if-eqz p3, :cond_0

    .line 155
    sget-object v0, Lcom/metamoji/ui/dialog/TitleEdit;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_param:Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;

    .line 158
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_title_edit:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TitleEdit;->mViewId:I

    .line 159
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_TitleEdit_Title:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TitleEdit;->mTitleId:I

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 169
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_param:Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;

    iget-boolean p2, p2, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->isReadFlg:Z

    if-eqz p2, :cond_1

    .line 170
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_param:Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;

    iget-object p2, p2, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->defaultTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_defaultTitle:Ljava/lang/String;

    .line 171
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_param:Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;

    iget-object p2, p2, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->docID:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_docId:Ljava/lang/String;

    .line 172
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_param:Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;

    iget-object p2, p2, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->driveID:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_driveId:Ljava/lang/String;

    .line 174
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->Title_EditText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_editText:Landroid/widget/EditText;

    .line 175
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TitleEdit;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoTitle:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_editText:Landroid/widget/EditText;

    new-instance p3, Lcom/metamoji/ui/dialog/TitleEdit$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/TitleEdit$1;-><init>(Lcom/metamoji/ui/dialog/TitleEdit;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 188
    :try_start_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_driveId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p2

    .line 189
    iget-object p3, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_docId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p2

    .line 190
    invoke-virtual {p2}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object p3

    .line 191
    invoke-virtual {p2}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsUpdate()Ljava/util/Date;

    move-result-object v0

    .line 192
    invoke-virtual {p2}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsCreate()Ljava/util/Date;

    move-result-object p2

    .line 195
    iget-object v1, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_param:Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;

    iget-boolean v1, v1, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->isReadFlg:Z

    if-nez v1, :cond_4

    if-eqz p3, :cond_2

    .line 197
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TitleEdit;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoTitle:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 200
    :cond_3
    iput-object p3, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_defaultTitle:Ljava/lang/String;

    goto :goto_0

    .line 202
    :cond_4
    iget-object p3, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_param:Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;

    iget-object p3, p3, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->title:Ljava/lang/String;

    .line 204
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TitleEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoTitle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 205
    iget-object v1, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_editText:Landroid/widget/EditText;

    invoke-virtual {v1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v1, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_editText:Landroid/widget/EditText;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/EditText;->setSelection(I)V

    .line 210
    :cond_5
    sget p3, Lcom/metamoji/noteanytime/R$id;->dlg_title_edit_createtime:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiTextView;

    .line 212
    invoke-direct {p0, p2}, Lcom/metamoji/ui/dialog/TitleEdit;->getDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_title_edit_timestamp:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    .line 217
    invoke-direct {p0, v0}, Lcom/metamoji/ui/dialog/TitleEdit;->getDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/metamoji/cm/CmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 219
    const-string p3, "[TitleEdit] :: ERROR onCreateDialog:"

    invoke-static {p2, p3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 222
    :goto_1
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_param:Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;

    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->isReadFlg:Z

    .line 223
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_param:Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;

    iget-object p3, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_defaultTitle:Ljava/lang/String;

    iput-object p3, p2, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->defaultTitle:Ljava/lang/String;

    .line 224
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_param:Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;

    iget-object p3, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_docId:Ljava/lang/String;

    iput-object p3, p2, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->docID:Ljava/lang/String;

    .line 225
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_param:Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;

    iget-object p3, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_driveId:Ljava/lang/String;

    iput-object p3, p2, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->driveID:Ljava/lang/String;

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TitleEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    :cond_1
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getValidDocumentTitleError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 247
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 248
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return-void

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_defaultTitle:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 255
    :try_start_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_driveId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_docId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    .line 257
    iget-object v2, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_docId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->updateDocumentTitle(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object v2

    .line 258
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->succeeded()Z

    move-result v3

    if-nez v3, :cond_3

    .line 259
    invoke-static {v2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->dvmErrorAnalize(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    .line 262
    :cond_3
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TitleEdit;->uploadMediaTitle(Ljava/lang/String;)V

    .line 266
    iget-object v2, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_docId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 267
    invoke-virtual {v1, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getAbsPathMatchTags(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 268
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 269
    const-string v2, "[ %s ] : [ %s ] : [ %s ] \u2192 [ %s ]"

    iget-object v3, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_driveId:Ljava/lang/String;

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_defaultTitle:Ljava/lang/String;

    filled-new-array {v3, v1, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x19f

    .line 270
    invoke-static {v1, v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/metamoji/cm/CmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 273
    const-string v1, "[TitleEdit] :: ERROR onDone:"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 276
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 232
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 233
    sget-object v0, Lcom/metamoji/ui/dialog/TitleEdit;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_param:Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 234
    sget-object v0, Lcom/metamoji/ui/dialog/TitleEdit;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method uploadMediaTitle(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    sget-object v0, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    const/4 v1, 0x0

    .line 301
    :try_start_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_driveId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v2

    .line 302
    iget-object v3, p0, Lcom/metamoji/ui/dialog/TitleEdit;->_docId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->openEditorForQuickEdit(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object v2

    .line 303
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v1

    .line 312
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object v2

    .line 313
    invoke-virtual {v2, v1, p1}, Lcom/metamoji/media/MediaUploadManager2;->notifyDocumentTitleChanged(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 323
    invoke-interface {v1, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 317
    :try_start_1
    const-string v2, "[TitleEdit] :: ERROR onDone:"

    invoke-static {p1, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 323
    invoke-interface {v1, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    :cond_1
    :goto_0
    return-void

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    .line 325
    :cond_2
    throw p1
.end method
