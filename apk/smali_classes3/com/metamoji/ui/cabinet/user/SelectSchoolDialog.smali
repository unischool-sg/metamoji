.class public final Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "SelectSchoolDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$Companion;,
        Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u000f2\u00020\u0001:\u0002\u000f\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;",
        "Lcom/metamoji/ui/dialog/UiDialog;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;",
        "adapter",
        "Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "",
        "outState",
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
.field public static final Companion:Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$Companion;


# instance fields
.field private adapter:Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;

.field private viewModel:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->Companion:Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    return-void
.end method

.method static final onCreateDialog$lambda$1$lambda$0(Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    if-ltz p3, :cond_3

    .line 82
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    const/4 p2, 0x0

    const-string/jumbo p4, "viewModel"

    if-nez p1, :cond_0

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->getList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-ge p3, p1, :cond_3

    .line 83
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    if-nez p1, :cond_1

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    invoke-virtual {p1, p3}, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->setSelected(I)V

    .line 84
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    if-nez p1, :cond_2

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p2, p1

    :goto_0
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object p2, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;->Selected:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->dismiss()V

    :cond_3
    return-void
.end method

.method static final onCreateDialog$lambda$2(Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    const/4 p2, 0x0

    const-string/jumbo p3, "viewModel"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;->Busy:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;

    if-ne p1, v0, :cond_2

    .line 92
    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    if-nez p0, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object p1, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;->Cancelled:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static final openDialog(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;",
            "Ljava/util/List<",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->Companion:Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$Companion;->openDialog(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 65
    sget v0, Lcom/metamoji/noteanytime/R$layout;->school_select_dialog:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->mViewId:I

    .line 66
    sget v0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Select_Organization_Title:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->mTitleId:I

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->mCancel:Z

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->mBack:Z

    .line 69
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->mDone:Z

    .line 70
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->mModal:Z

    .line 71
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "onCreateDialog(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    if-nez v1, :cond_1

    .line 75
    sget-object v1, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getSelectSchoolViewModel()Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string v0, "no view model on create dialog."

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_1
    :goto_0
    new-instance v1, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string/jumbo v2, "viewModel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_2
    invoke-direct {v1, v0, v2}, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;-><init>(Landroid/content/Context;Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;)V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->adapter:Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;

    .line 79
    sget v0, Lcom/metamoji/noteanytime/R$id;->school_list_view:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 80
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->adapter:Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;

    if-nez v1, :cond_3

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    check-cast v3, Landroid/widget/ListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    new-instance v1, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    :cond_4
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    const-string v0, "reconstructdialogflag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
