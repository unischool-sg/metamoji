.class public Lcom/metamoji/ui/dialog/CreateFolder;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "CreateFolder.java"


# instance fields
.field private _currentFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field private _editText:Landroid/widget/EditText;

.field private _focusFolderTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _folderName:Ljava/lang/String;

.field private _forRename:Z


# direct methods
.method static bridge synthetic -$$Nest$fget_currentFolder(Lcom/metamoji/ui/dialog/CreateFolder;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_currentFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_focusFolderTags(Lcom/metamoji/ui/dialog/CreateFolder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_focusFolderTags:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_folderName(Lcom/metamoji/ui/dialog/CreateFolder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_folderName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_forRename(Lcom/metamoji/ui/dialog/CreateFolder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_forRename:Z

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_forRename:Z

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_folderName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            "Z)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_folderName:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_focusFolderTags:Ljava/util/List;

    .line 79
    iput-object p2, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_currentFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 80
    iput-boolean p3, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_forRename:Z

    if-eqz p3, :cond_0

    .line 82
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object p1

    .line 83
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_folderName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private isInputCheck()Z
    .locals 6

    .line 373
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_folderName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 374
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_currentFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object v0

    .line 382
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 383
    iget-object v4, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_folderName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 390
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CreateFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_CreateFolder_Alert_Error2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return v1

    .line 395
    :cond_3
    iget-object v2, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_currentFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getChildren()Ljava/util/List;

    move-result-object v2

    .line 396
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 397
    iget-object v5, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_folderName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v3

    :cond_5
    if-eqz v0, :cond_6

    .line 404
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CreateFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_CreateFolder_Msg_Alert_Error3:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return v1

    :cond_6
    return v3

    .line 375
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CreateFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_CreateFolder_Alert_No_Title:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return v1
.end method

.method private isNotChange()Z
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_folderName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_currentFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object v0

    .line 363
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_forRename:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_folderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$onCreateView$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 101
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

    .line 102
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x42

    if-ne p0, p1, :cond_1

    .line 103
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method createFolder()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_currentFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_folderName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_currentFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v1

    .line 192
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->beanWithAbsPath(Ljava/lang/String;Ljava/util/List;)Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ui/dialog/CreateFolder$4;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/ui/dialog/CreateFolder$4;-><init>(Lcom/metamoji/ui/dialog/CreateFolder;Ljava/util/List;)V

    new-instance v0, Lcom/metamoji/ui/dialog/CreateFolder$5;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/CreateFolder$5;-><init>(Lcom/metamoji/ui/dialog/CreateFolder;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->createFolder(Lcom/metamoji/dvm/fw/bean/DvmFolderBean;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void
.end method

.method public getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_currentFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_currentFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 355
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CreateFolder;->enableAutoDetectTextViewMode()V

    .line 94
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_create_folder:I

    iput v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->mViewId:I

    .line 95
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_forRename:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/metamoji/noteanytime/R$string;->Folder_Name_Setting_Title:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_CreateFolder_Title:I

    :goto_0
    iput v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->mTitleId:I

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 99
    sget p2, Lcom/metamoji/noteanytime/R$id;->CreateFolder_EditText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_editText:Landroid/widget/EditText;

    .line 100
    new-instance p3, Lcom/metamoji/ui/dialog/CreateFolder$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/metamoji/ui/dialog/CreateFolder$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 110
    iget-object p2, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_folderName:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 111
    iget-object p3, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_editText:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onDestroyView()V

    .line 120
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_folderName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CreateFolder;->getDriveId()Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/metamoji/ui/dialog/CreateFolder$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/dialog/CreateFolder$1;-><init>(Lcom/metamoji/ui/dialog/CreateFolder;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/metamoji/noteanytime/MainActivity;->doAutoSyncDrive(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IDoAutoSyncDriveBlock;)V

    return-void
.end method

.method onDoneInnr(Landroid/view/View;)V
    .locals 4

    .line 141
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/CreateFolder;->isNotChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/CreateFolder;->isInputCheck()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_currentFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_folderName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->beanWithTagName(Ljava/lang/String;Ljava/lang/Integer;)Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/dialog/CreateFolder$2;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/CreateFolder$2;-><init>(Lcom/metamoji/ui/dialog/CreateFolder;)V

    new-instance v3, Lcom/metamoji/ui/dialog/CreateFolder$3;

    invoke-direct {v3, p0, p1}, Lcom/metamoji/ui/dialog/CreateFolder$3;-><init>(Lcom/metamoji/ui/dialog/CreateFolder;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->createTag(Lcom/metamoji/dvm/fw/bean/DvmTagBean;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    .line 184
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 425
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 426
    sget-object v0, Lcom/metamoji/ui/dialog/CreateFolder;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method renameFolder()V
    .locals 7

    .line 236
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_currentFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object v2

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 238
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_currentFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v1

    .line 239
    iget-object v3, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_folderName:Ljava/lang/String;

    new-instance v5, Lcom/metamoji/ui/dialog/CreateFolder$6;

    invoke-direct {v5, p0, v2, v0}, Lcom/metamoji/ui/dialog/CreateFolder$6;-><init>(Lcom/metamoji/ui/dialog/CreateFolder;Ljava/util/List;Ljava/util/List;)V

    new-instance v6, Lcom/metamoji/ui/dialog/CreateFolder$7;

    invoke-direct {v6, p0}, Lcom/metamoji/ui/dialog/CreateFolder$7;-><init>(Lcom/metamoji/ui/dialog/CreateFolder;)V

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->renameFolder(Ljava/util/List;Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder;->_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
