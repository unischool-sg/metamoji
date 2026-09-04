.class public Lcom/metamoji/un/web/BookmarkEditDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "BookmarkEditDialog.java"


# instance fields
.field private _address:Ljava/lang/String;

.field private _title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method

.method private updateData(Z)V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/metamoji/un/web/BookmarkEditDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    sget v1, Lcom/metamoji/noteanytime/R$id;->bookmark_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 60
    sget v2, Lcom/metamoji/noteanytime/R$id;->bookmark_address:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkEditDialog;->_title:Ljava/lang/String;

    .line 63
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkEditDialog;->_address:Ljava/lang/String;

    return-void

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/web/BookmarkEditDialog;->_title:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p1, p0, Lcom/metamoji/un/web/BookmarkEditDialog;->_address:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p1

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppEditWebUnitUrl:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 70
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkEditDialog;->_address:Ljava/lang/String;

    return-object v0
.end method

.method public getBookmarkTitle()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkEditDialog;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 41
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_bookmark_edit:I

    iput v0, p0, Lcom/metamoji/un/web/BookmarkEditDialog;->mViewId:I

    .line 42
    sget v0, Lcom/metamoji/noteanytime/R$string;->BookmarkEdit_Title:I

    iput v0, p0, Lcom/metamoji/un/web/BookmarkEditDialog;->mTitleId:I

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/web/BookmarkEditDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 93
    invoke-direct {p0, v0}, Lcom/metamoji/un/web/BookmarkEditDialog;->updateData(Z)V

    .line 94
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 87
    invoke-direct {p0, v0}, Lcom/metamoji/un/web/BookmarkEditDialog;->updateData(Z)V

    .line 88
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, v0}, Lcom/metamoji/un/web/BookmarkEditDialog;->updateData(Z)V

    .line 82
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onStart()V

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkEditDialog;->_address:Ljava/lang/String;

    return-void
.end method

.method public setBookmarkTitle(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkEditDialog;->_title:Ljava/lang/String;

    return-void
.end method
