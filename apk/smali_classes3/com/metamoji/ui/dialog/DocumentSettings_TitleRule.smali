.class public Lcom/metamoji/ui/dialog/DocumentSettings_TitleRule;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "DocumentSettings_TitleRule.java"


# instance fields
.field private _titleRuleText:Lcom/metamoji/ui/common/UiEditText;

.field public titleRule:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 29
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_doc_settings_titlerule:I

    iput v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings_TitleRule;->mViewId:I

    .line 30
    sget v0, Lcom/metamoji/noteanytime/R$string;->Editor_NoteTemplate_Setting_TitleRule:I

    iput v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings_TitleRule;->mTitleId:I

    .line 32
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 34
    sget p2, Lcom/metamoji/noteanytime/R$id;->titleRuleText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiEditText;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings_TitleRule;->_titleRuleText:Lcom/metamoji/ui/common/UiEditText;

    .line 35
    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings_TitleRule;->titleRule:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/DocumentSettings_TitleRule;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings_TitleRule;->_titleRuleText:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings_TitleRule;->titleRule:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings_TitleRule;->titleRule:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getValidDocumentTitleError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 p1, 0x0

    .line 48
    invoke-static {v0, p1, p1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 52
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 61
    sget-object v0, Lcom/metamoji/ui/dialog/DocumentSettings_TitleRule;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V
    .locals 1

    .line 66
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "don\'t use onClosedListener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
