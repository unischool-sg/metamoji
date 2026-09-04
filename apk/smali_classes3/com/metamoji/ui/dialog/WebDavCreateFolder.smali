.class public Lcom/metamoji/ui/dialog/WebDavCreateFolder;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "WebDavCreateFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/WebDavCreateFolder$IWebDavCreatFolderDialogAfterAction;
    }
.end annotation


# instance fields
.field private _editText:Landroid/widget/EditText;

.field private _folderName:Ljava/lang/String;

.field mAction:Lcom/metamoji/ui/dialog/WebDavCreateFolder$IWebDavCreatFolderDialogAfterAction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/metamoji/ui/dialog/WebDavCreateFolder;->_folderName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/dialog/WebDavCreateFolder$IWebDavCreatFolderDialogAfterAction;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/metamoji/ui/dialog/WebDavCreateFolder;->_folderName:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavCreateFolder;->mAction:Lcom/metamoji/ui/dialog/WebDavCreateFolder$IWebDavCreatFolderDialogAfterAction;

    return-void
.end method

.method private isInputCheck()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavCreateFolder;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/WebDavCreateFolder;->_folderName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/WebDavCreateFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_CreateFolder_Alert_No_Title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/WebDavCreateFolder;->enableAutoDetectTextViewMode()V

    .line 60
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_webdav_create_folder:I

    iput v0, p0, Lcom/metamoji/ui/dialog/WebDavCreateFolder;->mViewId:I

    .line 61
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_CreateFolder_Title:I

    iput v0, p0, Lcom/metamoji/ui/dialog/WebDavCreateFolder;->mTitleId:I

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 66
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->CreateFolder_EditText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/WebDavCreateFolder;->_editText:Landroid/widget/EditText;

    .line 67
    iget-object p3, p0, Lcom/metamoji/ui/dialog/WebDavCreateFolder;->_folderName:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 68
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onDestroyView()V

    .line 76
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavCreateFolder;->_editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/WebDavCreateFolder;->_folderName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/WebDavCreateFolder;->isInputCheck()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavCreateFolder;->mAction:Lcom/metamoji/ui/dialog/WebDavCreateFolder$IWebDavCreatFolderDialogAfterAction;

    if-eqz v0, :cond_1

    .line 88
    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavCreateFolder;->_folderName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/metamoji/ui/dialog/WebDavCreateFolder$IWebDavCreatFolderDialogAfterAction;->action(Ljava/lang/String;)V

    .line 90
    :cond_1
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 49
    sget-object v0, Lcom/metamoji/ui/dialog/WebDavCreateFolder;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
