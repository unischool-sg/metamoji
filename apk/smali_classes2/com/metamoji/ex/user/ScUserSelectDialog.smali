.class public Lcom/metamoji/ex/user/ScUserSelectDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ScUserSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;
    }
.end annotation


# static fields
.field public static final SC_DICKEY_GROUP_NAME:Ljava/lang/String; = "group"

.field public static final SC_DICKEY_USER_ISTEACHER:Ljava/lang/String; = "isTeacher"

.field public static final SC_DICKEY_USER_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final SC_DICKEY_USER_USERID:Ljava/lang/String; = "userId"


# instance fields
.field public afterAction:Lcom/metamoji/ex/user/IScUserSelectDialogAfterAction;

.field m_doneBtn:Landroid/view/View;

.field m_indicator:Landroid/view/View;

.field m_listAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_selectAllBtn:Lcom/metamoji/ui/common/UiButton;

.field m_selectAllClearBtn:Lcom/metamoji/ui/common/UiButton;

.field public selectedUserDicList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public userDicList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 143
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->selectedUserDicList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 154
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method createUserDic(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Lcom/metamoji/ex/user/ScUserSelectDialog$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/metamoji/ex/user/ScUserSelectDialog$3;-><init>(Lcom/metamoji/ex/user/ScUserSelectDialog;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method getSelectedUserIds()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 243
    iget-object v1, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->selectedUserDicList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 244
    const-string v3, "userId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 246
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method handleSelectAllButtonTap()V
    .locals 1

    const/4 v0, 0x1

    .line 336
    invoke-virtual {p0, v0}, Lcom/metamoji/ex/user/ScUserSelectDialog;->selectAllButtonTapInner(Z)V

    return-void
.end method

.method handleSelectAllClearButtonTap()V
    .locals 1

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, v0}, Lcom/metamoji/ex/user/ScUserSelectDialog;->selectAllButtonTapInner(Z)V

    return-void
.end method

.method isSelectedUserDic(Ljava/util/HashSet;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 253
    const-string v0, "userId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ex/user/ScUserSelectDialog;->isSelectedUserId(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method isSelectedUserDic(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/metamoji/ex/user/ScUserSelectDialog;->getSelectedUserIds()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ex/user/ScUserSelectDialog;->isSelectedUserDic(Ljava/util/HashSet;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method isSelectedUserId(Ljava/util/HashSet;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 258
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p0, v0}, Lcom/metamoji/ex/user/ScUserSelectDialog;->setModal(Z)V

    .line 162
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_school_user_select:I

    iput v0, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->mViewId:I

    .line 163
    sget v0, Lcom/metamoji/noteanytime/R$string;->DcUserSelectDlg_Title:I

    iput v0, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->mTitleId:I

    .line 165
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_0

    return-object p1

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ex/user/ScUserSelectDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 176
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_right_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->m_doneBtn:Landroid/view/View;

    .line 179
    sget p2, Lcom/metamoji/noteanytime/R$id;->listView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 180
    iget-object p3, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    if-nez p3, :cond_1

    .line 181
    new-instance p3, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ex/user/ScUserSelectDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;-><init>(Lcom/metamoji/ex/user/ScUserSelectDialog;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    .line 183
    :cond_1
    iget-object p3, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    sget p2, Lcom/metamoji/noteanytime/R$id;->indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->m_indicator:Landroid/view/View;

    .line 189
    sget p2, Lcom/metamoji/noteanytime/R$id;->selectAllBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->m_selectAllBtn:Lcom/metamoji/ui/common/UiButton;

    .line 190
    new-instance p3, Lcom/metamoji/ex/user/ScUserSelectDialog$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ex/user/ScUserSelectDialog$1;-><init>(Lcom/metamoji/ex/user/ScUserSelectDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    sget p2, Lcom/metamoji/noteanytime/R$id;->selectAllClearBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->m_selectAllClearBtn:Lcom/metamoji/ui/common/UiButton;

    .line 197
    new-instance p3, Lcom/metamoji/ex/user/ScUserSelectDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ex/user/ScUserSelectDialog$2;-><init>(Lcom/metamoji/ex/user/ScUserSelectDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-virtual {p0}, Lcom/metamoji/ex/user/ScUserSelectDialog;->updateUserList()V

    .line 208
    invoke-virtual {p0}, Lcom/metamoji/ex/user/ScUserSelectDialog;->updateDoneBtnVisible()V

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcom/metamoji/ex/user/ScUserSelectDialog;->dismiss()V

    .line 389
    iget-object p1, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->afterAction:Lcom/metamoji/ex/user/IScUserSelectDialogAfterAction;

    if-eqz p1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->selectedUserDicList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/metamoji/ex/user/IScUserSelectDialogAfterAction;->action(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 218
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method selectAllButtonTapInner(Z)V
    .locals 7

    .line 353
    invoke-virtual {p0}, Lcom/metamoji/ex/user/ScUserSelectDialog;->getSelectedUserIds()Ljava/util/HashSet;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 354
    :goto_0
    iget-object v3, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 355
    iget-object v3, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 356
    const-string v4, "userId"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p0, v0, v4}, Lcom/metamoji/ex/user/ScUserSelectDialog;->isSelectedUserId(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 360
    iget-object v2, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->selectedUserDicList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 365
    :cond_0
    invoke-virtual {p0, v0, v4}, Lcom/metamoji/ex/user/ScUserSelectDialog;->isSelectedUserId(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 366
    iget-object v2, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->selectedUserDicList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 367
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_1
    move v2, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 373
    iget-object p1, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 377
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ex/user/ScUserSelectDialog;->updateDoneBtnVisible()V

    .line 380
    invoke-virtual {p0}, Lcom/metamoji/ex/user/ScUserSelectDialog;->updateSelectButtonEnable()V

    return-void
.end method

.method updateDispUserDicList()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->userDicList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 283
    iget-object v0, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->userDicList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 286
    iget-object v2, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ex/user/ScUserSelectDialog;->updateSelectButtonEnable()V

    return-void
.end method

.method updateDoneBtnVisible()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->m_doneBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->selectedUserDicList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method updateSelectButtonEnable()V
    .locals 6

    .line 312
    invoke-virtual {p0}, Lcom/metamoji/ex/user/ScUserSelectDialog;->getSelectedUserIds()Ljava/util/HashSet;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 313
    :goto_0
    iget-object v4, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 314
    iget-object v4, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 315
    const-string v5, "userId"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 316
    invoke-virtual {p0, v0, v4}, Lcom/metamoji/ex/user/ScUserSelectDialog;->isSelectedUserId(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v2, v5

    goto :goto_1

    :cond_0
    move v3, v5

    :goto_1
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->m_selectAllBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 329
    iget-object v0, p0, Lcom/metamoji/ex/user/ScUserSelectDialog;->m_selectAllClearBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void
.end method

.method updateUserList()V
    .locals 0

    .line 269
    invoke-virtual {p0}, Lcom/metamoji/ex/user/ScUserSelectDialog;->updateDispUserDicList()V

    return-void
.end method
