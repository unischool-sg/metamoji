.class public final Lcom/metamoji/li/view/panel/LoginSimpleFragment;
.super Landroidx/fragment/app/Fragment;
.source "LoginSimpleFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/view/panel/LoginSimpleFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 &2\u00020\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J$\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\u0019\u001a\u00020\u0005H\u0016J\u0008\u0010\u001a\u001a\u00020\u0005H\u0016J\u0010\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0007H\u0016J\u0012\u0010\u001d\u001a\u00020\u00052\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0014H\u0002J\u0012\u0010\u001f\u001a\u00020\u00052\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0002J\u0012\u0010$\u001a\u00020\u00052\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0014H\u0002J\u0012\u0010%\u001a\u00020\u00052\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0014H\u0002R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/metamoji/li/view/panel/LoginSimpleFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "binder",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "viewModel",
        "Lcom/metamoji/li/model/LoginViewModel;",
        "getViewModel",
        "()Lcom/metamoji/li/model/LoginViewModel;",
        "setViewModel",
        "(Lcom/metamoji/li/model/LoginViewModel;)V",
        "classSelectButton",
        "Landroid/widget/Button;",
        "idNumberSelectButton",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroy",
        "onStart",
        "onSaveInstanceState",
        "outState",
        "onLogin",
        "view",
        "onCoLoginIdChanged",
        "coid",
        "",
        "listPopup",
        "Landroid/widget/ListPopupWindow;",
        "onSelectClass",
        "onSelectIdNumber",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/li/view/panel/LoginSimpleFragment$Companion;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final binder:Lcom/metamoji/lib/utils/binding/Binder;

.field private classSelectButton:Landroid/widget/Button;

.field private idNumberSelectButton:Landroid/widget/Button;

.field private listPopup:Landroid/widget/ListPopupWindow;

.field public viewModel:Lcom/metamoji/li/model/LoginViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/li/view/panel/LoginSimpleFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/view/panel/LoginSimpleFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->Companion:Lcom/metamoji/li/view/panel/LoginSimpleFragment$Companion;

    .line 159
    sget-object v0, Lcom/metamoji/li/LoginActivity;->Companion:Lcom/metamoji/li/LoginActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/LoginActivity$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 37
    new-instance v0, Lcom/metamoji/lib/utils/binding/Binder;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/Binder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 31
    sget-object v0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$onCoLoginIdChanged(Lcom/metamoji/li/view/panel/LoginSimpleFragment;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->onCoLoginIdChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$onLogin(Lcom/metamoji/li/view/panel/LoginSimpleFragment;Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->onLogin(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$onSelectClass(Lcom/metamoji/li/view/panel/LoginSimpleFragment;Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->onSelectClass(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$onSelectIdNumber(Lcom/metamoji/li/view/panel/LoginSimpleFragment;Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->onSelectIdNumber(Landroid/view/View;)V

    return-void
.end method

.method private final onCoLoginIdChanged(Ljava/lang/String;)V
    .locals 0

    .line 105
    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->getViewModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/li/model/SimpleLoginViewModel;->loadClassList()V

    return-void
.end method

.method static final onCreateView$lambda$2(Lcom/metamoji/li/view/panel/LoginSimpleFragment;)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->getViewModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "requireActivity(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/li/model/LoginViewModel;->ensureCompany(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method private final onLogin(Landroid/view/View;)V
    .locals 2

    .line 100
    sget-object p1, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->getViewModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginParams;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->getViewModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object p1

    new-instance v0, Lcom/metamoji/li/driver/SimpleLoginDriver;

    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->getViewModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/li/driver/SimpleLoginDriver;-><init>(Lcom/metamoji/li/model/LoginParams;)V

    check-cast v0, Lcom/metamoji/li/driver/LoginDriver;

    invoke-virtual {p1, v0}, Lcom/metamoji/li/model/LoginViewModel;->executeLogin(Lcom/metamoji/li/driver/LoginDriver;)V

    return-void
.end method

.method private final onSelectClass(Landroid/view/View;)V
    .locals 5

    .line 111
    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->getViewModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getClassList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 112
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 116
    sget v3, Lcom/metamoji/noteanytime/R$layout;->textview_list_item:I

    .line 114
    invoke-direct {v2, v1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 118
    new-instance v0, Landroid/widget/ListPopupWindow;

    const/4 v3, 0x0

    sget v4, Lcom/metamoji/noteanytime/R$attr;->listPopupWindowStyle:I

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    move-object v1, v2

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 122
    new-instance p1, Lcom/metamoji/li/view/panel/LoginSimpleFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1, v2, p0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ArrayAdapter;Lcom/metamoji/li/view/panel/LoginSimpleFragment;)V

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 118
    iput-object v0, p0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->listPopup:Landroid/widget/ListPopupWindow;

    :cond_1
    :goto_0
    return-void
.end method

.method static final onSelectClass$lambda$4$lambda$3(Landroid/widget/ArrayAdapter;Lcom/metamoji/li/view/panel/LoginSimpleFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 123
    invoke-virtual {p0, p4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;

    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->getViewModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getCurrentSelectedClass()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 127
    :cond_0
    iget-object p0, p1, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->listPopup:Landroid/widget/ListPopupWindow;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_1
    const/4 p0, 0x0

    .line 128
    iput-object p0, p1, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->listPopup:Landroid/widget/ListPopupWindow;

    return-void
.end method

.method private final onSelectIdNumber(Landroid/view/View;)V
    .locals 5

    .line 135
    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->getViewModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getIdNumberList()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 136
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 140
    sget v3, Lcom/metamoji/noteanytime/R$layout;->textview_list_item:I

    .line 138
    invoke-direct {v2, v1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 142
    new-instance v0, Landroid/widget/ListPopupWindow;

    const/4 v3, 0x0

    sget v4, Lcom/metamoji/noteanytime/R$attr;->listPopupWindowStyle:I

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    move-object v1, v2

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 146
    new-instance p1, Lcom/metamoji/li/view/panel/LoginSimpleFragment$$ExternalSyntheticLambda1;

    invoke-direct {p1, v2, p0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment$$ExternalSyntheticLambda1;-><init>(Landroid/widget/ArrayAdapter;Lcom/metamoji/li/view/panel/LoginSimpleFragment;)V

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 142
    iput-object v0, p0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->listPopup:Landroid/widget/ListPopupWindow;

    :cond_1
    :goto_0
    return-void
.end method

.method static final onSelectIdNumber$lambda$6$lambda$5(Landroid/widget/ArrayAdapter;Lcom/metamoji/li/view/panel/LoginSimpleFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 147
    invoke-virtual {p0, p4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p1}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->getViewModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getCurrentIdNumber()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 151
    :cond_0
    iget-object p0, p1, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->listPopup:Landroid/widget/ListPopupWindow;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_1
    const/4 p0, 0x0

    .line 152
    iput-object p0, p1, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->listPopup:Landroid/widget/ListPopupWindow;

    return-void
.end method


# virtual methods
.method public final getViewModel()Lcom/metamoji/li/model/LoginViewModel;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget-object v0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->logger:Lcom/metamoji/lib/utils/UtLog;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "savedInstanceState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "inflater"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v2, Lcom/metamoji/li/view/panel/LoginNormalFragment;->Companion:Lcom/metamoji/li/view/panel/LoginNormalFragment$Companion;

    invoke-virtual {v2}, Lcom/metamoji/li/view/panel/LoginNormalFragment$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "savedInstanceState:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 47
    sget v2, Lcom/metamoji/noteanytime/R$layout;->fragment_login_simple:I

    move-object/from16 v5, p2

    invoke-virtual {v1, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 48
    sget v2, Lcom/metamoji/noteanytime/R$id;->login_page_text_class_name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v5, "findViewById(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->classSelectButton:Landroid/widget/Button;

    .line 49
    sget v2, Lcom/metamoji/noteanytime/R$id;->login_page_text_id_number:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->idNumberSelectButton:Landroid/widget/Button;

    .line 50
    sget-object v2, Lcom/metamoji/li/model/LoginViewModel;->Companion:Lcom/metamoji/li/model/LoginViewModel$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-string v7, "requireActivity(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/metamoji/li/model/LoginViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v2

    .line 51
    iget-object v6, v0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    const/16 v7, 0xf

    .line 52
    new-array v7, v7, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v8, Lcom/metamoji/lib/utils/binding/impl/TextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;

    move-object v10, v0

    check-cast v10, Landroidx/lifecycle/LifecycleOwner;

    sget v9, Lcom/metamoji/noteanytime/R$id;->co_login_id_formatted:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getCoLoginIdFormattedString()Landroidx/lifecycle/LiveData;

    move-result-object v11

    invoke-virtual {v8, v10, v9, v11}, Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/TextBinding;

    move-result-object v8

    aput-object v8, v7, v4

    .line 56
    sget-object v8, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;

    sget v9, Lcom/metamoji/noteanytime/R$id;->password:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getPassword()Landroidx/lifecycle/MutableLiveData;

    move-result-object v11

    sget-object v12, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    invoke-virtual {v8, v10, v9, v11, v12}, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;

    move-result-object v8

    aput-object v8, v7, v3

    .line 57
    sget-object v8, Lcom/metamoji/lib/utils/binding/impl/TextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;

    iget-object v9, v0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->classSelectButton:Landroid/widget/Button;

    const-string v17, "classSelectButton"

    const/16 v18, 0x0

    if-nez v9, :cond_1

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v9, v18

    :cond_1
    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getCurrentClassName()Landroidx/lifecycle/LiveData;

    move-result-object v11

    invoke-virtual {v8, v10, v9, v11}, Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/TextBinding;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 58
    sget-object v8, Lcom/metamoji/lib/utils/binding/impl/TextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;

    iget-object v11, v0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->idNumberSelectButton:Landroid/widget/Button;

    const-string v19, "idNumberSelectButton"

    if-nez v11, :cond_2

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v11, v18

    :cond_2
    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getCurrentIdNumber()Landroidx/lifecycle/MutableLiveData;

    move-result-object v12

    check-cast v12, Landroidx/lifecycle/LiveData;

    invoke-virtual {v8, v10, v11, v12}, Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/TextBinding;

    move-result-object v8

    const/4 v11, 0x3

    aput-object v8, v7, v11

    .line 60
    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getSelectCompanyCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v8

    sget v11, Lcom/metamoji/noteanytime/R$id;->login_page_button_setting:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectViewEx(Landroid/view/View;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v8

    const/4 v11, 0x4

    aput-object v8, v7, v11

    .line 61
    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getLoginCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v8

    sget v11, Lcom/metamoji/noteanytime/R$id;->simple_login_button:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/metamoji/li/view/panel/LoginSimpleFragment$onCreateView$view$1$1$1;

    invoke-direct {v12, v0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment$onCreateView$view$1$1$1;-><init>(Ljava/lang/Object;)V

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v8, v10, v11, v12}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v8

    const/4 v11, 0x5

    aput-object v8, v7, v11

    .line 62
    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getLoginCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v8

    sget v11, Lcom/metamoji/noteanytime/R$id;->password:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectViewEx(Landroid/view/View;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v8

    const/4 v11, 0x6

    aput-object v8, v7, v11

    .line 63
    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getSelectClassCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v8

    iget-object v11, v0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->classSelectButton:Landroid/widget/Button;

    if-nez v11, :cond_3

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v11, v18

    :cond_3
    check-cast v11, Landroid/view/View;

    new-instance v12, Lcom/metamoji/li/view/panel/LoginSimpleFragment$onCreateView$view$1$1$2;

    invoke-direct {v12, v0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment$onCreateView$view$1$1$2;-><init>(Ljava/lang/Object;)V

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v8, v10, v11, v12}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v8

    const/4 v11, 0x7

    aput-object v8, v7, v11

    .line 64
    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getSelectIdNumberCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v8

    iget-object v11, v0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->idNumberSelectButton:Landroid/widget/Button;

    if-nez v11, :cond_4

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v11, v18

    :cond_4
    check-cast v11, Landroid/view/View;

    new-instance v12, Lcom/metamoji/li/view/panel/LoginSimpleFragment$onCreateView$view$1$1$3;

    invoke-direct {v12, v0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment$onCreateView$view$1$1$3;-><init>(Ljava/lang/Object;)V

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v8, v10, v11, v12}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v8

    const/16 v11, 0x8

    aput-object v8, v7, v11

    move v8, v9

    .line 66
    sget-object v9, Lcom/metamoji/lib/utils/binding/impl/EnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;

    sget v11, Lcom/metamoji/noteanytime/R$id;->login_page_button_setting:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->isBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v12

    check-cast v12, Landroidx/lifecycle/LiveData;

    sget-object v13, Lcom/metamoji/lib/utils/binding/BoolConvert;->Inverse:Lcom/metamoji/lib/utils/binding/BoolConvert;

    const/16 v15, 0x10

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v16}, Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/EnableBinding;

    move-result-object v9

    const/16 v11, 0x9

    aput-object v9, v7, v11

    .line 68
    sget-object v9, Lcom/metamoji/lib/utils/binding/impl/EnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;

    iget-object v11, v0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->classSelectButton:Landroid/widget/Button;

    if-nez v11, :cond_5

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v11, v18

    :cond_5
    check-cast v11, Landroid/view/View;

    new-array v12, v8, [Landroidx/lifecycle/LiveData;

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->isBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v13

    aput-object v13, v12, v4

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/li/model/SimpleLoginViewModel;->isEmptyClasses()Landroidx/lifecycle/LiveData;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-static {v12}, Lcom/metamoji/lib/utils/LiveDataExtKt;->or([Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object v12

    sget-object v13, Lcom/metamoji/lib/utils/binding/BoolConvert;->Inverse:Lcom/metamoji/lib/utils/binding/BoolConvert;

    const/16 v15, 0x10

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v16}, Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/EnableBinding;

    move-result-object v9

    const/16 v11, 0xa

    aput-object v9, v7, v11

    .line 69
    sget-object v9, Lcom/metamoji/lib/utils/binding/impl/EnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;

    iget-object v11, v0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->idNumberSelectButton:Landroid/widget/Button;

    if-nez v11, :cond_6

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object/from16 v18, v11

    :goto_1
    move-object/from16 v11, v18

    check-cast v11, Landroid/view/View;

    new-array v8, v8, [Landroidx/lifecycle/LiveData;

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->isBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v12

    aput-object v12, v8, v4

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/li/model/SimpleLoginViewModel;->isEmptyIdNumbers()Landroidx/lifecycle/LiveData;

    move-result-object v4

    aput-object v4, v8, v3

    invoke-static {v8}, Lcom/metamoji/lib/utils/LiveDataExtKt;->or([Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object v12

    sget-object v13, Lcom/metamoji/lib/utils/binding/BoolConvert;->Inverse:Lcom/metamoji/lib/utils/binding/BoolConvert;

    const/16 v15, 0x10

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v16}, Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/EnableBinding;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v7, v4

    .line 70
    sget-object v9, Lcom/metamoji/lib/utils/binding/impl/EnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;

    sget v3, Lcom/metamoji/noteanytime/R$id;->password:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->isBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroidx/lifecycle/LiveData;

    sget-object v13, Lcom/metamoji/lib/utils/binding/BoolConvert;->Inverse:Lcom/metamoji/lib/utils/binding/BoolConvert;

    invoke-static/range {v9 .. v16}, Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/EnableBinding;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v7, v4

    .line 71
    sget-object v9, Lcom/metamoji/lib/utils/binding/impl/EnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;

    sget v3, Lcom/metamoji/noteanytime/R$id;->simple_login_button:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/li/model/SimpleLoginViewModel;->isLoginButtonEnabled()Landroidx/lifecycle/LiveData;

    move-result-object v12

    const/16 v15, 0x18

    const/4 v13, 0x0

    invoke-static/range {v9 .. v16}, Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/EnableBinding;

    move-result-object v3

    const/16 v4, 0xd

    aput-object v3, v7, v4

    .line 73
    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getCoLoginId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/LiveData;

    new-instance v4, Lcom/metamoji/li/view/panel/LoginSimpleFragment$onCreateView$view$1$1$4;

    invoke-direct {v4, v0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment$onCreateView$view$1$1$4;-><init>(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v10, v4}, Lcom/metamoji/lib/utils/DisposableObserverKt;->disposableObserve(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposableEx;

    move-result-object v3

    const/16 v4, 0xe

    aput-object v3, v7, v4

    .line 51
    invoke-virtual {v6, v7}, Lcom/metamoji/lib/utils/binding/Binder;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    .line 50
    invoke-virtual {v0, v2}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->setViewModel(Lcom/metamoji/li/model/LoginViewModel;)V

    .line 78
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/metamoji/li/view/panel/LoginSimpleFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/li/view/panel/LoginSimpleFragment;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 86
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/Binder;->reset()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->getViewModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/li/model/SimpleLoginViewModel;->pushCurrentInfo()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 90
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 91
    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->getViewModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getCurrentPanelIndex()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Lcom/metamoji/li/LoginPanelIndex;->IT_IS_NOT_SIMPLE_BUT_CALLED_SIMPLE:Lcom/metamoji/li/LoginPanelIndex;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setViewModel(Lcom/metamoji/li/model/LoginViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    return-void
.end method
