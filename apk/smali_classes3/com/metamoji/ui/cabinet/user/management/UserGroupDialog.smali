.class public Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "UserGroupDialog.java"

# interfaces
.implements Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;


# static fields
.field private static _instance:Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;


# instance fields
.field _adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

.field _this:Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;

.field m_alreadyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_callback:Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;

.field m_mapGroup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    .line 48
    sput-object p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_instance:Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    .line 52
    sget v0, Lcom/metamoji/noteanytime/R$string;->UserManagement_Insert_History_Title:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->mTitleId:I

    .line 53
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->m_callback:Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;

    .line 54
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->m_alreadyList:Ljava/util/ArrayList;

    .line 55
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->m_mapGroup:Ljava/util/Map;

    return-void
.end method

.method private buildAdapter()V
    .locals 6

    .line 94
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->clear()V

    .line 99
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->m_mapGroup:Ljava/util/Map;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 102
    :cond_1
    const-string/jumbo v1, "usermgr_grouptitle"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    new-instance v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    invoke-direct {v1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;-><init>()V

    .line 106
    sget-object v2, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;->GROUP:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->initAsTitle(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;)V

    .line 107
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->add(Ljava/lang/Object;)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->m_mapGroup:Ljava/util/Map;

    const-string/jumbo v3, "usermgr_addresslist"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 113
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 114
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->m_alreadyList:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    .line 115
    new-instance v5, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    invoke-direct {v5}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;-><init>()V

    .line 116
    invoke-virtual {v5, v3, v4}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->initAsAddress(Ljava/lang/String;Z)V

    if-eqz v4, :cond_2

    .line 118
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    :cond_3
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->addAll(Ljava/util/Collection;)V

    .line 124
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;
    .locals 1

    .line 40
    sget-object v0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_instance:Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;-><init>()V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_instance:Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;

    .line 43
    :cond_0
    sget-object v0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_instance:Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;

    return-object v0
.end method


# virtual methods
.method public OnManagementItemAddAll()V
    .locals 7

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 155
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-virtual {v4, v3}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    .line 156
    iget-object v5, v4, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_type:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    sget-object v6, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->ADDRESS:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    if-ne v5, v6, :cond_0

    iget-boolean v5, v4, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_isAlreadyAdded:Z

    if-nez v5, :cond_0

    .line 157
    iget-object v4, v4, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 161
    sget v0, Lcom/metamoji/noteanytime/R$string;->UserManagement_Already_All_Messagee:I

    invoke-static {v0, v2, v3}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->m_callback:Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;

    invoke-interface {v1, v0, v3}, Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;->OnDone_UserManagementCallBack(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 164
    invoke-super {p0, v3}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public OnManagementItemAddItem(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public OnManagementItemAddItemNotFiltering(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public OnManagementItemOpenGroup(I)V
    .locals 0

    return-void
.end method

.method public OnManagementItemRemoveAll()V
    .locals 0

    return-void
.end method

.method public OnManagementItemRemoveItemNotFiltering(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 66
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_usergroup:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->mViewId:I

    .line 67
    iput-object p0, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_this:Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;

    .line 69
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz p1, :cond_0

    return-object v0

    .line 76
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->addressList:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    const/4 v1, 0x1

    .line 77
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 79
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    if-nez v1, :cond_1

    .line 80
    new-instance v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;-><init>(Landroid/content/Context;Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    .line 81
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->buildAdapter()V

    goto :goto_0

    .line 84
    :cond_1
    new-instance v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-direct {v1, v2, p0, v3}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;-><init>(Landroid/content/Context;Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    .line 61
    sput-object p1, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_instance:Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;

    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 5

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 139
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    .line 140
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->isCheckedAddress()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    iget-object v3, v3, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->m_callback:Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;->OnDone_UserManagementCallBack(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 145
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
