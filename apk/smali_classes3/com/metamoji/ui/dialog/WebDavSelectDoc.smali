.class public Lcom/metamoji/ui/dialog/WebDavSelectDoc;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "WebDavSelectDoc.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field private _wevdavinfo:Lcom/metamoji/ex/webdav/WebDAVInfo;

.field private mCurrentPath:Ljava/lang/String;

.field private mExt:[Ljava/lang/String;

.field private mFile:Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

.field private mFileListView:Lcom/metamoji/ui/dialog/WebDavListView;

.field private mTextView:Landroid/widget/TextView;

.field private mType:I


# direct methods
.method static bridge synthetic -$$Nest$fget_wevdavinfo(Lcom/metamoji/ui/dialog/WebDavSelectDoc;)Lcom/metamoji/ex/webdav/WebDAVInfo;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->_wevdavinfo:Lcom/metamoji/ex/webdav/WebDAVInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentPath(Lcom/metamoji/ui/dialog/WebDavSelectDoc;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mCurrentPath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFileListView(Lcom/metamoji/ui/dialog/WebDavSelectDoc;)Lcom/metamoji/ui/dialog/WebDavListView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mFileListView:Lcom/metamoji/ui/dialog/WebDavListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentPath(Lcom/metamoji/ui/dialog/WebDavSelectDoc;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mCurrentPath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFile(Lcom/metamoji/ui/dialog/WebDavSelectDoc;Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mFile:Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBaseDir(Lcom/metamoji/ui/dialog/WebDavSelectDoc;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->setBaseDir(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 35
    const-string v0, "WebDavSelectDoc"

    iput-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mCurrentPath:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ex/webdav/WebDAVInfo;I[Ljava/lang/String;I)V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 35
    const-string v0, "WebDavSelectDoc"

    iput-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mCurrentPath:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mTextView:Landroid/widget/TextView;

    .line 57
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->_wevdavinfo:Lcom/metamoji/ex/webdav/WebDAVInfo;

    .line 58
    iput-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mFile:Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

    .line 59
    iput p2, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mType:I

    .line 60
    iput-object p3, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mExt:[Ljava/lang/String;

    .line 61
    iput p4, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mTitleId:I

    return-void
.end method

.method private setBaseDir(Ljava/lang/String;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->_wevdavinfo:Lcom/metamoji/ex/webdav/WebDAVInfo;

    invoke-virtual {v0}, Lcom/metamoji/ex/webdav/WebDAVInfo;->getRoot()Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->_wevdavinfo:Lcom/metamoji/ex/webdav/WebDAVInfo;

    invoke-virtual {v1}, Lcom/metamoji/ex/webdav/WebDAVInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mFileListView:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/WebDavListView;->setBaseUrl(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/$"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mFileListView:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/WebDavListView;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 67
    iget v1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 69
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mFile:Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

    if-eqz v1, :cond_1

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mFile:Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method handleCreateFolderButtonTap()V
    .locals 3

    .line 178
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v1, Lcom/metamoji/ui/dialog/WebDavCreateFolder;

    new-instance v2, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;-><init>(Lcom/metamoji/ui/dialog/WebDavSelectDoc;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/metamoji/ui/dialog/WebDavCreateFolder;-><init>(Lcom/metamoji/ui/dialog/WebDavCreateFolder$IWebDavCreatFolderDialogAfterAction;)V

    .line 221
    const-string v0, "WevDavCreateFolder"

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/dialog/WebDavCreateFolder;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 173
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 105
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_wevdav_select_doc:I

    iput v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mViewId:I

    .line 106
    iget v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mDone:Z

    .line 110
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 113
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->wevdav_select_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/dialog/WebDavListView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mFileListView:Lcom/metamoji/ui/dialog/WebDavListView;

    .line 114
    iget-object p3, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->_wevdavinfo:Lcom/metamoji/ex/webdav/WebDAVInfo;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/dialog/WebDavListView;->setWevDavInfo(Lcom/metamoji/ex/webdav/WebDAVInfo;)V

    .line 115
    iget-object p2, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mFileListView:Lcom/metamoji/ui/dialog/WebDavListView;

    iget p3, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mType:I

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/dialog/WebDavListView;->setType(I)V

    .line 116
    iget-object p2, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mFileListView:Lcom/metamoji/ui/dialog/WebDavListView;

    iget-object p3, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mExt:[Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/dialog/WebDavListView;->setExt([Ljava/lang/String;)V

    .line 117
    sget p2, Lcom/metamoji/noteanytime/R$id;->wevdav_select_doc_folder_place:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mTextView:Landroid/widget/TextView;

    .line 119
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 120
    new-instance p3, Lcom/metamoji/ui/dialog/WebDavSelectDoc$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/WebDavSelectDoc$1;-><init>(Lcom/metamoji/ui/dialog/WebDavSelectDoc;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    iget-object p2, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mFileListView:Lcom/metamoji/ui/dialog/WebDavListView;

    new-instance p3, Lcom/metamoji/ui/dialog/WebDavSelectDoc$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/WebDavSelectDoc$2;-><init>(Lcom/metamoji/ui/dialog/WebDavSelectDoc;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/dialog/WebDavListView;->setFileSelectedListener(Lcom/metamoji/ui/dialog/WebDavListView$IOnFileSelected;)V

    .line 144
    sget p2, Lcom/metamoji/noteanytime/R$id;->makeFolderLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_2

    .line 145
    iget p3, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->mType:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/16 p3, 0x8

    .line 146
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    :cond_2
    sget p2, Lcom/metamoji/noteanytime/R$id;->makeFolderBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    if-eqz p2, :cond_3

    .line 151
    new-instance p3, Lcom/metamoji/ui/dialog/WebDavSelectDoc$3;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/WebDavSelectDoc$3;-><init>(Lcom/metamoji/ui/dialog/WebDavSelectDoc;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 163
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onDestroyView()V

    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 0

    .line 168
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 95
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    sget-object v0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
