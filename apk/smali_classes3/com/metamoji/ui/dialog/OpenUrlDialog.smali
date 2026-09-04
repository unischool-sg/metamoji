.class public Lcom/metamoji/ui/dialog/OpenUrlDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "OpenUrlDialog.java"


# static fields
.field static final QRCODE_SIZE:I = 0x190


# instance fields
.field public isReadOnly:Z

.field m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

.field protected m_closeBtn:Lcom/metamoji/ui/common/UiButtonHeader;

.field protected m_doneProcessing:Z

.field m_qrCodeBitmap:Landroid/graphics/Bitmap;

.field m_savingQRCodeImage:Ljava/lang/Boolean;

.field m_urlText:Landroid/widget/EditText;

.field public url:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mhandleClipboardButtonTap(Lcom/metamoji/ui/dialog/OpenUrlDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/OpenUrlDialog;->handleClipboardButtonTap()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_doneProcessing:Z

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_qrCodeBitmap:Landroid/graphics/Bitmap;

    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_savingQRCodeImage:Ljava/lang/Boolean;

    .line 67
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->isReadOnly:Z

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->url:Ljava/lang/String;

    return-void
.end method

.method private handleClipboardButtonTap()V
    .locals 6

    .line 312
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->isReadOnly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->url:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 320
    new-instance v1, Landroid/content/ClipData$Item;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->url:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    .line 321
    new-array v3, v3, [Ljava/lang/String;

    .line 322
    const-string/jumbo v4, "text/plain"

    aput-object v4, v3, v2

    .line 323
    new-instance v2, Landroid/content/ClipData;

    new-instance v4, Landroid/content/ClipDescription;

    const-string/jumbo v5, "text_data"

    invoke-direct {v4, v5, v3}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    invoke-direct {v2, v4, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 324
    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void

    .line 331
    :cond_1
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 335
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_urlText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic lambda$onCreateView$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "actionId = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " event = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez p2, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "onEditorAction"

    invoke-static {p1, p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 144
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x42

    if-ne p0, p1, :cond_1

    .line 145
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected dlgTitle()I
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->isReadOnly:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_MENU_SHOW_URL:I

    return v0

    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_OPENURLDLG_TITLE:I

    return v0
.end method

.method protected doneExecInner(Ljava/lang/String;)V
    .locals 4

    .line 268
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 269
    sget p1, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 270
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_doneProcessing:Z

    return-void

    .line 274
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ui/dialog/OpenUrlDialog$3;

    invoke-direct {v3, p0, p1, v0}, Lcom/metamoji/ui/dialog/OpenUrlDialog$3;-><init>(Lcom/metamoji/ui/dialog/OpenUrlDialog;Ljava/lang/String;Ljava/util/List;)V

    new-instance p1, Lcom/metamoji/ui/dialog/OpenUrlDialog$4;

    invoke-direct {p1, p0, v0}, Lcom/metamoji/ui/dialog/OpenUrlDialog$4;-><init>(Lcom/metamoji/ui/dialog/OpenUrlDialog;Ljava/util/List;)V

    invoke-virtual {v2, v3, v1, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-eqz p3, :cond_0

    .line 83
    const-string/jumbo v0, "url"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->url:Ljava/lang/String;

    .line 84
    const-string v0, "isReadOnly"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->isReadOnly:Z

    :cond_0
    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->mDone:Z

    const/4 v1, 0x1

    .line 87
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->mCancel:Z

    .line 88
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->mClose:Z

    .line 89
    sget v1, Lcom/metamoji/noteanytime/R$layout;->dialog_open_url:I

    iput v1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->mViewId:I

    .line 90
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/OpenUrlDialog;->dlgTitle()I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->mTitleId:I

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 94
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/OpenUrlDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 97
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_left_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 98
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_right_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_closeBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 99
    iget-object p2, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 102
    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->isReadOnly:Z

    if-eqz p2, :cond_1

    .line 103
    sget p2, Lcom/metamoji/noteanytime/R$id;->urlTextRO:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_urlText:Landroid/widget/EditText;

    const/4 p3, 0x0

    .line 104
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_0

    .line 141
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->urlText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_urlText:Landroid/widget/EditText;

    .line 142
    new-instance p3, Lcom/metamoji/ui/dialog/OpenUrlDialog$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/metamoji/ui/dialog/OpenUrlDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 151
    iget-object p2, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_urlText:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 152
    sget p2, Lcom/metamoji/noteanytime/R$id;->urlTextRO:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :goto_0
    iget-object p2, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_urlText:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->url:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    sget p2, Lcom/metamoji/noteanytime/R$id;->clipbordBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    .line 158
    iget-boolean p3, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->isReadOnly:Z

    if-eqz p3, :cond_2

    sget p3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_MENU_SHOW_URL_COPY_CLIPBOARD:I

    goto :goto_1

    :cond_2
    sget p3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_OPENURLDLG_PASTE_TEXT:I

    :goto_1
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    .line 159
    new-instance p3, Lcom/metamoji/ui/dialog/OpenUrlDialog$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/OpenUrlDialog$1;-><init>(Lcom/metamoji/ui/dialog/OpenUrlDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->isReadOnly:Z

    if-nez p2, :cond_3

    .line 169
    iget-object p2, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 170
    iget-object p2, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_closeBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    sget p3, Lcom/metamoji/noteanytime/R$string;->Button_Done_J:I

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 171
    iget-object p2, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_closeBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_purple:I

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 172
    iget-object p2, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_closeBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    new-instance p3, Lcom/metamoji/ui/dialog/OpenUrlDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/OpenUrlDialog$2;-><init>(Lcom/metamoji/ui/dialog/OpenUrlDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object p2, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_urlText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 182
    :cond_3
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/OpenUrlDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 188
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onDestroyView()V

    .line 191
    iget-object v0, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_qrCodeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_qrCodeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_qrCodeBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 2

    .line 247
    iget-boolean p1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_doneProcessing:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 250
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_doneProcessing:Z

    .line 252
    iget-object p1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_urlText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 254
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_OPENURLDLG_ERROR_NO_URL:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 255
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_doneProcessing:Z

    return-void

    .line 260
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/OpenUrlDialog;->doneExecInner(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 209
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 212
    iget-object v0, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->m_urlText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "isReadOnly"

    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->isReadOnly:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    sget-object v0, Lcom/metamoji/ui/dialog/OpenUrlDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
