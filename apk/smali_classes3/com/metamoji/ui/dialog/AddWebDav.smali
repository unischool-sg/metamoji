.class public Lcom/metamoji/ui/dialog/AddWebDav;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "AddWebDav.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/AddWebDav$AddWebDavParam;,
        Lcom/metamoji/ui/dialog/AddWebDav$IAddWebDavDialogAfterAction;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "AddWebDav"


# instance fields
.field _param:Lcom/metamoji/ui/dialog/AddWebDav$AddWebDavParam;

.field _this:Lcom/metamoji/ui/dialog/AddWebDav;

.field afterAction:Lcom/metamoji/ui/dialog/AddWebDav$IAddWebDavDialogAfterAction;

.field m_address:Landroid/widget/EditText;

.field m_password:Landroid/widget/EditText;

.field m_userName:Landroid/widget/EditText;


# direct methods
.method static bridge synthetic -$$Nest$mtryConnectAndClose(Lcom/metamoji/ui/dialog/AddWebDav;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/AddWebDav;->tryConnectAndClose(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 50
    new-instance v0, Lcom/metamoji/ui/dialog/AddWebDav$AddWebDavParam;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/AddWebDav$AddWebDavParam;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/AddWebDav;->_param:Lcom/metamoji/ui/dialog/AddWebDav$AddWebDavParam;

    return-void
.end method

.method static synthetic access$001(Lcom/metamoji/ui/dialog/AddWebDav;Landroid/view/View;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method private isInputCheck()Z
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/metamoji/ui/dialog/AddWebDav;->m_address:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 232
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/AddWebDav;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->WebDAV_Msg_Address_Not_Input:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private tryConnectAndClose(Landroid/view/View;)V
    .locals 6

    .line 242
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/AddWebDav;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Network_Error:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return-void

    .line 248
    :cond_0
    new-instance v0, Lcom/metamoji/ex/webdav/WebDAVInfo;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/AddWebDav;->m_address:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/dialog/AddWebDav;->m_userName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ui/dialog/AddWebDav;->m_password:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/metamoji/ex/webdav/WebDAVInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v1, Lcom/metamoji/cm/mutable/MutableBoolean;

    invoke-direct {v1}, Lcom/metamoji/cm/mutable/MutableBoolean;-><init>()V

    .line 250
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 251
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ui/dialog/AddWebDav$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/metamoji/ui/dialog/AddWebDav$5;-><init>(Lcom/metamoji/ui/dialog/AddWebDav;Lcom/metamoji/cm/mutable/MutableBoolean;Lcom/metamoji/ex/webdav/WebDAVInfo;)V

    new-instance v5, Lcom/metamoji/ui/dialog/AddWebDav$6;

    invoke-direct {v5, p0, v1, v0, p1}, Lcom/metamoji/ui/dialog/AddWebDav$6;-><init>(Lcom/metamoji/ui/dialog/AddWebDav;Lcom/metamoji/cm/mutable/MutableBoolean;Lcom/metamoji/ex/webdav/WebDAVInfo;Landroid/view/View;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-eqz p3, :cond_0

    .line 110
    sget-object v0, Lcom/metamoji/ui/dialog/AddWebDav;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/dialog/AddWebDav$AddWebDavParam;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/AddWebDav;->_param:Lcom/metamoji/ui/dialog/AddWebDav$AddWebDavParam;

    .line 113
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_add_webdav:I

    iput v0, p0, Lcom/metamoji/ui/dialog/AddWebDav;->mViewId:I

    .line 114
    sget v0, Lcom/metamoji/noteanytime/R$string;->WebDAV_Add_Server:I

    iput v0, p0, Lcom/metamoji/ui/dialog/AddWebDav;->mTitleId:I

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/AddWebDav;->mDone:Z

    .line 116
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/AddWebDav;->mCancel:Z

    const/4 v1, 0x0

    .line 117
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/AddWebDav;->mBack:Z

    .line 118
    iput-object p0, p0, Lcom/metamoji/ui/dialog/AddWebDav;->_this:Lcom/metamoji/ui/dialog/AddWebDav;

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 125
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->AddWebDav_Edit_Address:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/AddWebDav;->m_address:Landroid/widget/EditText;

    if-eqz p2, :cond_2

    .line 127
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 128
    iget-object p2, p0, Lcom/metamoji/ui/dialog/AddWebDav;->m_address:Landroid/widget/EditText;

    new-instance p3, Lcom/metamoji/ui/dialog/AddWebDav$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/AddWebDav$1;-><init>(Lcom/metamoji/ui/dialog/AddWebDav;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    :cond_2
    sget p2, Lcom/metamoji/noteanytime/R$id;->AddWebDav_Edit_UserName:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/AddWebDav;->m_userName:Landroid/widget/EditText;

    if-eqz p2, :cond_3

    .line 142
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 143
    iget-object p2, p0, Lcom/metamoji/ui/dialog/AddWebDav;->m_userName:Landroid/widget/EditText;

    new-instance p3, Lcom/metamoji/ui/dialog/AddWebDav$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/AddWebDav$2;-><init>(Lcom/metamoji/ui/dialog/AddWebDav;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    :cond_3
    sget p2, Lcom/metamoji/noteanytime/R$id;->AddWebDav_Edit_Password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/AddWebDav;->m_password:Landroid/widget/EditText;

    if-eqz p2, :cond_4

    const/16 p3, 0x81

    .line 157
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 159
    iget-object p2, p0, Lcom/metamoji/ui/dialog/AddWebDav;->m_password:Landroid/widget/EditText;

    new-instance p3, Lcom/metamoji/ui/dialog/AddWebDav$3;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/AddWebDav$3;-><init>(Lcom/metamoji/ui/dialog/AddWebDav;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_4
    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 3

    .line 175
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/AddWebDav;->isInputCheck()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-static {}, Lcom/metamoji/ex/webdav/WebDAVManager;->getWebDAVInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 181
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ex/webdav/WebDAVInfo;

    .line 183
    invoke-virtual {v1}, Lcom/metamoji/ex/webdav/WebDAVInfo;->getRoot()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/dialog/AddWebDav;->m_address:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/AddWebDav;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->WEBDAV_MSG_ADDRESS_ALREADY_EXISTS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/dialog/AddWebDav$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/metamoji/ui/dialog/AddWebDav$4;-><init>(Lcom/metamoji/ui/dialog/AddWebDav;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    return-void

    .line 224
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/AddWebDav;->tryConnectAndClose(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 102
    sget-object v0, Lcom/metamoji/ui/dialog/AddWebDav;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    sget-object v0, Lcom/metamoji/ui/dialog/AddWebDav;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/AddWebDav;->_param:Lcom/metamoji/ui/dialog/AddWebDav$AddWebDavParam;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
