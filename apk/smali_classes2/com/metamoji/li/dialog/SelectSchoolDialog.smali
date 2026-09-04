.class public final Lcom/metamoji/li/dialog/SelectSchoolDialog;
.super Lcom/metamoji/lib/dialog/UtDialog;
.source "SelectSchoolDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/dialog/SelectSchoolDialog$Companion;,
        Lcom/metamoji/li/dialog/SelectSchoolDialog$SchoolListAdapter;,
        Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001c2\u00020\u0001:\u0003\u001b\u001c\u001dB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000fH\u0014J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u001a\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/metamoji/li/dialog/SelectSchoolDialog;",
        "Lcom/metamoji/lib/dialog/UtDialog;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;",
        "adapter",
        "Lcom/metamoji/li/dialog/SelectSchoolDialog$SchoolListAdapter;",
        "listView",
        "Landroid/widget/ListView;",
        "result",
        "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
        "getResult",
        "()Lcom/metamoji/cs/dc/user/CsLoginInfo;",
        "calcCustomContainerHeight",
        "",
        "currentBodyHeight",
        "currentContainerHeight",
        "maxContainerHeight",
        "preCreateBodyView",
        "",
        "createBodyView",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "inflater",
        "Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;",
        "SelectSchoolViewModel",
        "Companion",
        "SchoolListAdapter",
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
.field public static final Companion:Lcom/metamoji/li/dialog/SelectSchoolDialog$Companion;


# instance fields
.field private adapter:Lcom/metamoji/li/dialog/SelectSchoolDialog$SchoolListAdapter;

.field private listView:Landroid/widget/ListView;

.field private viewModel:Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/li/dialog/SelectSchoolDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/dialog/SelectSchoolDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/dialog/SelectSchoolDialog;->Companion:Lcom/metamoji/li/dialog/SelectSchoolDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;-><init>()V

    return-void
.end method

.method static final createBodyView$lambda$1$lambda$0(Lcom/metamoji/li/dialog/SelectSchoolDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog;->viewModel:Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;

    const-string p2, "viewModel"

    const/4 p4, 0x0

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p4

    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;->getSchoolList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-ltz p3, :cond_3

    .line 103
    move-object p5, p1

    check-cast p5, Ljava/util/Collection;

    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result p5

    if-ge p3, p5, :cond_3

    .line 104
    iget-object p5, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog;->viewModel:Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;

    if-nez p5, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p5, p4

    :cond_2
    invoke-virtual {p5}, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;->getSelectedSchool()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 105
    check-cast p0, Lcom/metamoji/lib/dialog/IUtDialog;

    const/4 p1, 0x1

    invoke-static {p0, p4, p1, p4}, Lcom/metamoji/lib/dialog/IUtDialog;->complete$default(Lcom/metamoji/lib/dialog/IUtDialog;Lcom/metamoji/lib/dialog/IUtDialog$Status;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected calcCustomContainerHeight(III)I
    .locals 4

    .line 72
    iget-object p2, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog;->listView:Landroid/widget/ListView;

    const/4 v0, 0x0

    const-string v1, "listView"

    if-nez p2, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    invoke-static {p2}, Lcom/metamoji/lib/utils/ViewExtKt;->calcFixedContentHeight(Landroid/widget/ListView;)I

    move-result p2

    .line 73
    iget-object v2, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog;->listView:Landroid/widget/ListView;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_1
    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    sub-int/2addr p1, v2

    sub-int v2, p3, p1

    if-ge p2, v2, :cond_4

    .line 75
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SelectSchoolDialog;->isPhone()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 79
    :cond_2
    iget-object p3, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog;->listView:Landroid/widget/ListView;

    if-nez p3, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, p3

    :goto_0
    check-cast v0, Landroid/view/View;

    invoke-static {v0, p2}, Lcom/metamoji/lib/utils/ViewExtKt;->setLayoutHeight(Landroid/view/View;I)V

    add-int/2addr p2, p1

    return p2

    .line 76
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog;->listView:Landroid/widget/ListView;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v0, p1

    :goto_2
    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lcom/metamoji/lib/utils/ViewExtKt;->setLayoutHeight(Landroid/view/View;I)V

    return p3
.end method

.method protected createBodyView(Landroid/os/Bundle;Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;)Landroid/view/View;
    .locals 3

    const-string p1, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SelectSchoolDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "requireActivity(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;->Companion:Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel$Companion;

    invoke-virtual {v0, p1}, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog;->viewModel:Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;

    .line 96
    new-instance v0, Lcom/metamoji/li/dialog/SelectSchoolDialog$SchoolListAdapter;

    check-cast p1, Landroid/content/Context;

    iget-object v1, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog;->viewModel:Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-direct {v0, p1, v1}, Lcom/metamoji/li/dialog/SelectSchoolDialog$SchoolListAdapter;-><init>(Landroid/content/Context;Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;)V

    iput-object v0, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog;->adapter:Lcom/metamoji/li/dialog/SelectSchoolDialog$SchoolListAdapter;

    .line 97
    sget p1, Lcom/metamoji/noteanytime/R$layout;->dialog_select_school:I

    invoke-interface {p2, p1}, Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;->inflate(I)Landroid/view/View;

    move-result-object p1

    .line 99
    sget p2, Lcom/metamoji/noteanytime/R$id;->school_list_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog;->listView:Landroid/widget/ListView;

    .line 100
    const-string v0, "listView"

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v2

    :cond_1
    iget-object v1, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog;->adapter:Lcom/metamoji/li/dialog/SelectSchoolDialog$SchoolListAdapter;

    if-nez v1, :cond_2

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object p2, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog;->listView:Landroid/widget/ListView;

    if-nez p2, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p2

    :goto_0
    new-instance p2, Lcom/metamoji/li/dialog/SelectSchoolDialog$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/metamoji/li/dialog/SelectSchoolDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/li/dialog/SelectSchoolDialog;)V

    invoke-virtual {v2, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method

.method public final getResult()Lcom/metamoji/cs/dc/user/CsLoginInfo;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog;->viewModel:Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;

    if-nez v0, :cond_0

    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;->getSelectedSchool()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/user/CsLoginInfo;

    return-object v0
.end method

.method public preCreateBodyView()V
    .locals 3

    .line 85
    sget v0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Select_Organization_Title:I

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/SelectSchoolDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/SelectSchoolDialog;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/SelectSchoolDialog;->setCancellable(Z)V

    .line 87
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->CANCEL:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/SelectSchoolDialog;->setLeftButton(Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;)V

    .line 88
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->DONE:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/SelectSchoolDialog;->setRightButton(Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;)V

    .line 89
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SelectSchoolDialog;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SelectSchoolDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$dimen;->dlg_common_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/metamoji/lib/utils/ViewExtKt;->px2dp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/SelectSchoolDialog;->setLimitWidth(I)V

    .line 90
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->CUSTOM:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/SelectSchoolDialog;->setHeightOption(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V

    return-void
.end method
