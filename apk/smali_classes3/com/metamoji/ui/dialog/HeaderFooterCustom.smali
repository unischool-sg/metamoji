.class public Lcom/metamoji/ui/dialog/HeaderFooterCustom;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "HeaderFooterCustom.java"


# instance fields
.field private _dlgtitleid:I

.field private _editText:Landroid/widget/EditText;

.field private _text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method

.method private getParent()Lcom/metamoji/ui/dialog/HeaderFooter;
    .locals 3

    .line 78
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "HeaderFooterDialog"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/lib/dialog/UtDialogHelper;->findDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/dialog/HeaderFooter;

    return-object v0
.end method

.method static synthetic lambda$onCreateView$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 50
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

    .line 51
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x42

    if-ne p0, p1, :cond_1

    .line 52
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public get_text()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->_text:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    .line 100
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->getParent()Lcom/metamoji/ui/dialog/HeaderFooter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/HeaderFooter;->back_fromCustom()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    if-eqz p3, :cond_0

    .line 39
    const-string v0, "DialogTitleId"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->_dlgtitleid:I

    .line 40
    const-string v0, "EditString"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->_text:Ljava/lang/String;

    .line 42
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_header_footer_custom:I

    iput v0, p0, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->mViewId:I

    .line 43
    iget v0, p0, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->_dlgtitleid:I

    iput v0, p0, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->mTitleId:I

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 46
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_hed_cst_edit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->_editText:Landroid/widget/EditText;

    if-eqz p2, :cond_1

    .line 48
    iget-object p3, p0, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->_text:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p2, p0, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->_editText:Landroid/widget/EditText;

    new-instance p3, Lcom/metamoji/ui/dialog/HeaderFooterCustom$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/metamoji/ui/dialog/HeaderFooterCustom$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 62
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_hed_cst_msg7:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    .line 63
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    .line 84
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->getParent()Lcom/metamoji/ui/dialog/HeaderFooter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/HeaderFooter;->set_customString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    const-string v0, "DialogTitleId"

    iget v1, p0, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->_dlgtitleid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    iget-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditString"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public set_dlgtitleid(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->_dlgtitleid:I

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->_text:Ljava/lang/String;

    return-void
.end method
