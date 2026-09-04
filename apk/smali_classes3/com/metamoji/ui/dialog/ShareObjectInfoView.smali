.class public Lcom/metamoji/ui/dialog/ShareObjectInfoView;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ShareObjectInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/ShareObjectInfoView$BookAdapter;,
        Lcom/metamoji/ui/dialog/ShareObjectInfoView$PartsComparator;,
        Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;
    }
.end annotation


# static fields
.field static final DATE_PATTERN:Ljava/lang/String; = "yyyy/MM/dd HH:mm"

.field static adapter:Lcom/metamoji/ui/dialog/ShareObjectInfoView$BookAdapter;


# instance fields
.field listView:Landroid/widget/ListView;

.field names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field times:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smconvertDate2String(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->convertDate2String(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->names:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->times:Ljava/util/List;

    return-void
.end method

.method static CompareDouble(DD)I
    .locals 1

    cmpl-double v0, p0, p2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpg-double p0, p0, p2

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static CompareString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    return v0

    :cond_0
    return v1

    .line 167
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_2

    return v1

    :cond_2
    if-gez p0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    return v0
.end method

.method private static convertDate2String(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 184
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static showSelectObjectInfo(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtDocument;)V
    .locals 10

    .line 192
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 208
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 211
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-virtual {p1, v3}, Lcom/metamoji/nt/NtUnitController;->collectSelectedAuthorInfos(Ljava/util/List;)V

    .line 218
    invoke-virtual {p2}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 219
    const-string p1, "MMJNsShareSettings"

    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ns/NsCollaboSettings;

    .line 220
    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboSettings;->getNickNamesMap()Ljava/util/Map;

    move-result-object p1

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, p1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    move-object v6, v5

    .line 227
    :goto_1
    new-instance v2, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;

    move-object v9, p0

    move-object v8, p2

    invoke-direct/range {v2 .. v9}, Lcom/metamoji/ui/dialog/ShareObjectInfoView$1;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/metamoji/nt/NtDocument;Landroidx/fragment/app/FragmentActivity;)V

    .line 344
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/nt/NtAuthorInfo;

    .line 347
    invoke-virtual {p2}, Lcom/metamoji/nt/NtAuthorInfo;->getDcUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/metamoji/nt/NtAuthorInfo;->getCompanyId()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/metamoji/dvm/DvmUtil;->makeUserKeyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 348
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 349
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 354
    :cond_3
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ui/dialog/ShareObjectInfoView$2;

    invoke-direct {p2, p0, v2}, Lcom/metamoji/ui/dialog/ShareObjectInfoView$2;-><init>(Ljava/util/List;Lcom/metamoji/ns/task/INsGetNickNamesMapFromServerAfterAction;)V

    invoke-virtual {p1, p2, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method


# virtual methods
.method protected addInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->names:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->times:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 47
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_shareobjectinfoview:I

    iput v0, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->mViewId:I

    .line 48
    sget v0, Lcom/metamoji/noteanytime/R$string;->CONTEXT_SHARE_OBJECT_INFO_VIEW:I

    iput v0, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->mTitleId:I

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->mDone:Z

    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->mClose:Z

    .line 51
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->mCancel:Z

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 55
    new-instance p2, Lcom/metamoji/ui/dialog/ShareObjectInfoView$BookAdapter;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/metamoji/ui/dialog/ShareObjectInfoView$BookAdapter;-><init>(Lcom/metamoji/ui/dialog/ShareObjectInfoView;Lcom/metamoji/ui/dialog/ShareObjectInfoView-IA;)V

    sput-object p2, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->adapter:Lcom/metamoji/ui/dialog/ShareObjectInfoView$BookAdapter;

    .line 56
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_shareobjectinfo_list_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->listView:Landroid/widget/ListView;

    if-eqz p2, :cond_0

    .line 58
    sget-object p3, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->adapter:Lcom/metamoji/ui/dialog/ShareObjectInfoView$BookAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
