.class public Lcom/metamoji/ui/dialog/WebDavListView;
.super Landroid/widget/ListView;
.source "WebDavListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/WebDavListView$IOnFileSelected;,
        Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;,
        Lcom/metamoji/ui/dialog/WebDavListView$ContentType;,
        Lcom/metamoji/ui/dialog/WebDavListView$Type;,
        Lcom/metamoji/ui/dialog/WebDavListView$FileInfoArrayAdapter;
    }
.end annotation


# instance fields
.field private _url:Ljava/lang/String;

.field private _wevdavinfo:Lcom/metamoji/ex/webdav/WebDAVInfo;

.field private mBaseDir:Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

.field private mExt:[Ljava/lang/String;

.field private mSelectListener:Lcom/metamoji/ui/dialog/WebDavListView$IOnFileSelected;

.field private mType:I


# direct methods
.method static bridge synthetic -$$Nest$fget_url(Lcom/metamoji/ui/dialog/WebDavListView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/WebDavListView;->_url:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_wevdavinfo(Lcom/metamoji/ui/dialog/WebDavListView;)Lcom/metamoji/ex/webdav/WebDAVInfo;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/WebDavListView;->_wevdavinfo:Lcom/metamoji/ex/webdav/WebDAVInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectListener(Lcom/metamoji/ui/dialog/WebDavListView;)Lcom/metamoji/ui/dialog/WebDavListView$IOnFileSelected;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/WebDavListView;->mSelectListener:Lcom/metamoji/ui/dialog/WebDavListView$IOnFileSelected;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfolderPath(Lcom/metamoji/ui/dialog/WebDavListView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/WebDavListView;->folderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->mSelectListener:Lcom/metamoji/ui/dialog/WebDavListView$IOnFileSelected;

    .line 68
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->mBaseDir:Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

    .line 69
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->_wevdavinfo:Lcom/metamoji/ex/webdav/WebDAVInfo;

    .line 70
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->_url:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->mExt:[Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/WebDavListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/dialog/WebDavListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->mSelectListener:Lcom/metamoji/ui/dialog/WebDavListView$IOnFileSelected;

    .line 68
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->mBaseDir:Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

    .line 69
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->_wevdavinfo:Lcom/metamoji/ex/webdav/WebDAVInfo;

    .line 70
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->_url:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->mExt:[Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/WebDavListView;->init()V

    return-void
.end method

.method private folderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 302
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/WebDavListView;->setScrollingCacheEnabled(Z)V

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/WebDavListView;->setItemsCanFocus(Z)V

    .line 80
    new-instance v0, Lcom/metamoji/ui/dialog/WebDavListView$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/WebDavListView$1;-><init>(Lcom/metamoji/ui/dialog/WebDavListView;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/WebDavListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private updateList()V
    .locals 3

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->_url:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->_wevdavinfo:Lcom/metamoji/ex/webdav/WebDAVInfo;

    invoke-virtual {v1}, Lcom/metamoji/ex/webdav/WebDAVInfo;->getRoot()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->_url:Ljava/lang/String;

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->_url:Ljava/lang/String;

    new-instance v2, Lcom/metamoji/ui/dialog/WebDavListView$2;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/dialog/WebDavListView$2;-><init>(Lcom/metamoji/ui/dialog/WebDavListView;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/ui/dialog/WebDavListView;->setList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getFileAt(I)Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;
    .locals 0

    .line 294
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/WebDavListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

    return-object p1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavListView;->_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedFile()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDirectoryEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFileEnabled()Z
    .locals 2

    .line 155
    iget v0, p0, Lcom/metamoji/ui/dialog/WebDavListView;->mType:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isListTarget(Ljava/lang/String;)Z
    .locals 6

    .line 264
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavListView;->mExt:[Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 267
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 268
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavListView;->mExt:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 269
    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public setBaseDir(Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->mBaseDir:Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

    .line 116
    invoke-static {p1}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->-$$Nest$fgetmUrl(Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->_url:Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/WebDavListView;->updateList()V

    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 6

    .line 121
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/WebDavListView;->folderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->_url:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/WebDavListView;->_url:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->_url:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/metamoji/ui/dialog/WebDavListView$ContentType;->Folder:Lcom/metamoji/ui/dialog/WebDavListView$ContentType;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;-><init>(Lcom/metamoji/ui/dialog/WebDavListView;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/dialog/WebDavListView$ContentType;Z)V

    iput-object v0, v1, Lcom/metamoji/ui/dialog/WebDavListView;->mBaseDir:Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

    .line 123
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/WebDavListView;->updateList()V

    return-void
.end method

.method public setExt([Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->mExt:[Ljava/lang/String;

    return-void
.end method

.method public setFileSelectedListener(Lcom/metamoji/ui/dialog/WebDavListView$IOnFileSelected;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->mSelectListener:Lcom/metamoji/ui/dialog/WebDavListView$IOnFileSelected;

    return-void
.end method

.method setList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 193
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 194
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/dialog/WebDavListView$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/metamoji/ui/dialog/WebDavListView$3;-><init>(Lcom/metamoji/ui/dialog/WebDavListView;Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance p1, Lcom/metamoji/ui/dialog/WebDavListView$4;

    invoke-direct {p1, p0, p3}, Lcom/metamoji/ui/dialog/WebDavListView$4;-><init>(Lcom/metamoji/ui/dialog/WebDavListView;Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    invoke-virtual {v0, v1, p2, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->mType:I

    return-void
.end method

.method public setWevDavInfo(Lcom/metamoji/ex/webdav/WebDAVInfo;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView;->_wevdavinfo:Lcom/metamoji/ex/webdav/WebDAVInfo;

    return-void
.end method
