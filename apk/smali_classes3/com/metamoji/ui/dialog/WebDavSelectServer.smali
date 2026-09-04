.class public Lcom/metamoji/ui/dialog/WebDavSelectServer;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "WebDavSelectServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;,
        Lcom/metamoji/ui/dialog/WebDavSelectServer$IOnServerSelected;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field mSelectServer:Lcom/metamoji/ex/webdav/WebDAVInfo;

.field m_deleteBtn:Lcom/metamoji/ui/common/UiButton;

.field m_deleteItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ex/webdav/WebDAVInfo;",
            ">;"
        }
    .end annotation
.end field

.field m_serverListDataAdapter:Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;


# direct methods
.method static bridge synthetic -$$Nest$mhandleAddServerButtonTap(Lcom/metamoji/ui/dialog/WebDavSelectServer;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/WebDavSelectServer;->handleAddServerButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDeleteButtonTap(Lcom/metamoji/ui/dialog/WebDavSelectServer;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/WebDavSelectServer;->handleDeleteButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMemberListViewSelectionChanged(Lcom/metamoji/ui/dialog/WebDavSelectServer;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/WebDavSelectServer;->handleMemberListViewSelectionChanged()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 35
    const-string v0, "WebDavSelectServer"

    iput-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->TAG:Ljava/lang/String;

    .line 128
    sget v0, Lcom/metamoji/noteanytime/R$string;->WebDAV_Server_List:I

    iput v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->mTitleId:I

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->m_deleteItemArray:Ljava/util/ArrayList;

    return-void
.end method

.method private handleAddServerButtonTap()V
    .locals 2

    .line 238
    new-instance v0, Lcom/metamoji/ui/dialog/AddWebDav;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/AddWebDav;-><init>()V

    .line 239
    new-instance v1, Lcom/metamoji/ui/dialog/WebDavSelectServer$4;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/WebDavSelectServer$4;-><init>(Lcom/metamoji/ui/dialog/WebDavSelectServer;)V

    iput-object v1, v0, Lcom/metamoji/ui/dialog/AddWebDav;->afterAction:Lcom/metamoji/ui/dialog/AddWebDav$IAddWebDavDialogAfterAction;

    .line 245
    const-string v1, "AddWevDav"

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/AddWebDav;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method private handleDeleteButtonTap()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->m_deleteItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ex/webdav/WebDAVInfo;

    .line 228
    invoke-virtual {v1}, Lcom/metamoji/ex/webdav/WebDAVInfo;->getRoot()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/ex/webdav/WebDAVManager;->removeWebDAVInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/WebDavSelectServer;->refreshMemberList()V

    return-void
.end method

.method private handleMemberListViewSelectionChanged()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->m_deleteBtn:Lcom/metamoji/ui/common/UiButton;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->m_deleteItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getSelectServer()Lcom/metamoji/ex/webdav/WebDAVInfo;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->mSelectServer:Lcom/metamoji/ex/webdav/WebDAVInfo;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->mDone:Z

    .line 139
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->mClose:Z

    const/4 v1, 0x1

    .line 140
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->mCancel:Z

    .line 141
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->mBack:Z

    .line 143
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_webdav_select_server:I

    iput v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->mViewId:I

    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 166
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->webdav_addServerBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    .line 167
    new-instance p3, Lcom/metamoji/ui/dialog/WebDavSelectServer$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/WebDavSelectServer$1;-><init>(Lcom/metamoji/ui/dialog/WebDavSelectServer;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    sget p2, Lcom/metamoji/noteanytime/R$id;->webdav_deleteServerBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->m_deleteBtn:Lcom/metamoji/ui/common/UiButton;

    .line 174
    new-instance p3, Lcom/metamoji/ui/dialog/WebDavSelectServer$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/WebDavSelectServer$2;-><init>(Lcom/metamoji/ui/dialog/WebDavSelectServer;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    sget p2, Lcom/metamoji/noteanytime/R$id;->webdav_serverList:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 181
    iget-object p3, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->m_serverListDataAdapter:Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;

    if-nez p3, :cond_1

    .line 182
    new-instance p3, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/WebDavSelectServer;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;-><init>(Lcom/metamoji/ui/dialog/WebDavSelectServer;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->m_serverListDataAdapter:Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;

    .line 184
    :cond_1
    iget-object p3, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->m_serverListDataAdapter:Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;

    new-instance v0, Lcom/metamoji/ui/dialog/WebDavSelectServer$3;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/WebDavSelectServer$3;-><init>(Lcom/metamoji/ui/dialog/WebDavSelectServer;)V

    invoke-virtual {p3, v0}, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;->setServerSelectedListener(Lcom/metamoji/ui/dialog/WebDavSelectServer$IOnServerSelected;)V

    .line 193
    iget-object p3, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->m_serverListDataAdapter:Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/WebDavSelectServer;->refreshMemberList()V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 250
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 251
    sget-object v0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method refreshMemberList()V
    .locals 2

    .line 206
    invoke-static {}, Lcom/metamoji/ex/webdav/WebDAVManager;->getWebDAVInfos()Ljava/util/List;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->m_serverListDataAdapter:Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;->clear()V

    .line 208
    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->m_serverListDataAdapter:Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;->addAll(Ljava/util/Collection;)V

    .line 209
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->m_serverListDataAdapter:Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;->notifyDataSetChanged()V

    return-void
.end method
