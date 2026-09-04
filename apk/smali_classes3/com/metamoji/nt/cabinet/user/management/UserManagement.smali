.class public final Lcom/metamoji/nt/cabinet/user/management/UserManagement;
.super Ljava/lang/Object;
.source "UserManagement.java"


# static fields
.field public static final DICKEY_ADDRESSLIST:Ljava/lang/String; = "usermgr_addresslist"

.field public static final DICKEY_GROUPTITLE:Ljava/lang/String; = "usermgr_grouptitle"

.field public static final HISTORY_MAX:I = 0x32


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allRemoveUserManagementHistory()V
    .locals 2

    .line 143
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 144
    const-string v1, "UserManagementHistory"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    return-void
.end method

.method public static getUserManagementHistory()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 154
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 157
    const-string v1, "UserManagementHistory"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static isMailaddress(Ljava/lang/String;)Z
    .locals 1

    .line 169
    const-string v0, "(?:[a-z0-9!#$%\\&\'*+/=?\\^_`{|}~-]+(?:\\.[a-z0-9!#$%\\&\'*+/=?\\^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 178
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addUserManagementHistory(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 86
    const-string/jumbo v2, "usermgr_grouptitle"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo p1, "usermgr_addresslist"

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    .line 93
    const-string v2, "UserManagementHistory"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 95
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v3, :cond_2

    .line 97
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 99
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 100
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v4, :cond_1

    invoke-interface {v7, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 101
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x32

    if-lt v5, v6, :cond_0

    .line 108
    :cond_2
    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public openUserManagement(Landroidx/fragment/app/FragmentManager;Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;ILjava/util/ArrayList;ILcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;",
            ")V"
        }
    .end annotation

    .line 58
    const-string v0, "UserManagementDialig"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 63
    :cond_0
    new-instance v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;-><init>(Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;ILjava/util/ArrayList;ILcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;)V

    .line 65
    new-instance p1, Lcom/metamoji/nt/cabinet/user/management/UserManagement$1;

    invoke-direct {p1, p0}, Lcom/metamoji/nt/cabinet/user/management/UserManagement$1;-><init>(Lcom/metamoji/nt/cabinet/user/management/UserManagement;)V

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 72
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method public removeUserManagementHistory(Ljava/lang/String;)V
    .locals 5

    .line 119
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 122
    const-string v1, "UserManagementHistory"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 129
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 130
    const-string/jumbo v4, "usermgr_grouptitle"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
