.class public Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UserManagementListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;",
        ">;"
    }
.end annotation


# instance fields
.field private _callback:Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;

.field private _isFiltering:Z

.field private _layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static bridge synthetic -$$Nest$fget_callback(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->_callback:Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_isFiltering(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->_isFiltering:Z

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 45
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->_callback:Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;

    .line 46
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->_isFiltering:Z

    .line 47
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->_layoutInflater:Landroid/view/LayoutInflater;

    if-eqz p3, :cond_0

    .line 51
    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->getCount()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_0

    .line 53
    invoke-virtual {p3, v0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 235
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    if-nez p2, :cond_0

    .line 239
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->dialog_usermanagement_listitem:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 240
    new-instance p3, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;-><init>(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;Landroid/view/View;)V

    .line 241
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

    .line 246
    :goto_0
    invoke-virtual {p3, p1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->bindView(Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;)V

    return-object p2
.end method

.method public setFilteing(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->_isFiltering:Z

    return-void
.end method
