.class public Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ScMonitorInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;,
        Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;
    }
.end annotation


# instance fields
.field private m_doItUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_helpUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_layerName:Ljava/lang/String;

.field private m_listDataAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;

.field m_listView:Landroid/widget/ListView;

.field private m_notYetUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_offlineUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 1

    .line 191
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->setHideParentDialog(Z)V

    .line 195
    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_layerName:Ljava/lang/String;

    .line 196
    new-instance p2, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;

    invoke-direct {p2, p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 209
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_school_monitor_info:I

    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->mViewId:I

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->mDone:Z

    .line 211
    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->mCancel:Z

    .line 212
    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->mModal:Z

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->mClose:Z

    .line 214
    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->mCentering:Z

    .line 216
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 218
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 220
    sget p3, Lcom/metamoji/noteanytime/R$string;->School_MonitorInfoDlg_Title:I

    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p3

    .line 221
    const-string v0, "%@"

    const-string v1, "%s"

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 222
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_layerName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->listView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_listView:Landroid/widget/ListView;

    .line 226
    iget-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public setHelpUserList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;->clear()V

    .line 240
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_helpUserList:Ljava/util/List;

    .line 241
    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_doItUserList:Ljava/util/List;

    .line 242
    iput-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_notYetUserList:Ljava/util/List;

    .line 243
    iput-object p4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_offlineUserList:Ljava/util/List;

    .line 245
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_MonitorInfoDlg_UserNum:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    .line 249
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;

    sget v1, Lcom/metamoji/noteanytime/R$string;->School_UserPersonalStatus_Help:I

    .line 250
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 251
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "sectionHelp"

    invoke-direct {v0, p0, v4, v1, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;->add(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 255
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;

    const-string v3, "userHelp"

    invoke-direct {v1, p0, v3, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 262
    :cond_1
    new-instance p1, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;

    sget v0, Lcom/metamoji/noteanytime/R$string;->School_UserPersonalStatus_NotYet:I

    .line 263
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_2

    .line 264
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    const-string v3, "sectionNotYet"

    invoke-direct {p1, p0, v3, v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;Ljava/lang/String;Ljava/lang/String;I)V

    .line 265
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;->add(Ljava/lang/Object;)V

    if-eqz p3, :cond_3

    .line 268
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 269
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;

    const-string v1, "userNotYet"

    invoke-direct {v0, p0, v1, p3}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;

    invoke-virtual {p3, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3

    .line 275
    :cond_3
    new-instance p1, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;

    sget p3, Lcom/metamoji/noteanytime/R$string;->School_UserPersonalStatus_DoIt:I

    .line 276
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_4

    .line 277
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :cond_4
    const-string v0, "sectionDoIt"

    invoke-direct {p1, p0, v0, p3, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;Ljava/lang/String;Ljava/lang/String;I)V

    .line 278
    iget-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;

    invoke-virtual {p3, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;->add(Ljava/lang/Object;)V

    if-eqz p2, :cond_5

    .line 281
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 282
    new-instance p3, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;

    const-string v0, "userDoIt"

    invoke-direct {p3, p0, v0, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    if-eqz p4, :cond_6

    .line 288
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 289
    new-instance p1, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;

    sget p2, Lcom/metamoji/noteanytime/R$string;->School_UserList_Section_Offline:I

    .line 290
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p2

    .line 291
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    const-string v0, "sectionOffline"

    invoke-direct {p1, p0, v0, p2, p3}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;Ljava/lang/String;Ljava/lang/String;I)V

    .line 292
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;

    invoke-virtual {p2, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;->add(Ljava/lang/Object;)V

    .line 294
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 295
    new-instance p3, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;

    const-string p4, "userOffline"

    invoke-direct {p3, p0, p4, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_5

    .line 301
    :cond_6
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListAdapter;->notifyDataSetChanged()V

    return-void
.end method
