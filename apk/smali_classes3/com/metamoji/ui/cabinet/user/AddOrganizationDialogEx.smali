.class public final Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "AddOrganizationDialogEx.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 (2\u00020\u0001:\u0001(B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u001c\u001a\u00020\u001dH\u0002J\u0012\u0010\u001e\u001a\u00020\u00152\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0012\u0010!\u001a\u00020\u001d2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0008\u0010$\u001a\u00020\u001dH\u0002J\u0012\u0010%\u001a\u00020\u001d2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0010\u0010&\u001a\u00020\u001d2\u0006\u0010\'\u001a\u00020 H\u0016R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R$\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b8B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b8B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;",
        "Lcom/metamoji/ui/dialog/UiDialog;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;",
        "getViewModel",
        "()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "v",
        "",
        "organizationID",
        "getOrganizationID",
        "()Ljava/lang/String;",
        "setOrganizationID",
        "(Ljava/lang/String;)V",
        "serverURL",
        "getServerURL",
        "setServerURL",
        "dlg",
        "Landroid/app/Dialog;",
        "_txtOrganizationID",
        "Landroid/widget/EditText;",
        "_btnServerURL",
        "Lcom/metamoji/ui/common/UiButton;",
        "_lblServerURL",
        "Lcom/metamoji/ui/common/UiTextView;",
        "initControls",
        "",
        "onCreateDialog",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDone",
        "view",
        "Landroid/view/View;",
        "addOrganization",
        "onCancel",
        "onSaveInstanceState",
        "outState",
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
.field private static final CHAR_SLASH:Ljava/lang/String; = "/"

.field public static final Companion:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$Companion;

.field private static final tagName:Ljava/lang/String;


# instance fields
.field private _btnServerURL:Lcom/metamoji/ui/common/UiButton;

.field private _lblServerURL:Lcom/metamoji/ui/common/UiTextView;

.field private _txtOrganizationID:Landroid/widget/EditText;

.field private dlg:Landroid/app/Dialog;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->Companion:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$Companion;

    .line 355
    const-class v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->tagName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    .line 151
    new-instance v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getServerURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)Ljava/lang/String;
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getServerURL()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTagName$cp()Ljava/lang/String;
    .locals 1

    .line 149
    sget-object v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$get_lblServerURL$p(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)Lcom/metamoji/ui/common/UiTextView;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->_lblServerURL:Lcom/metamoji/ui/common/UiTextView;

    return-object p0
.end method

.method public static final synthetic access$setServerURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;Ljava/lang/String;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->setServerURL(Ljava/lang/String;)V

    return-void
.end method

.method private final addOrganization()V
    .locals 6

    .line 307
    sget-object v0, Lcom/metamoji/ui/cabinet/user/OrganizationItem;->Companion:Lcom/metamoji/ui/cabinet/user/OrganizationItem$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/OrganizationItem$Companion;->loadFromUserDefaults()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 308
    new-instance v1, Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getOrganizationID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getServerURL()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v2, v4, v3}, Lcom/metamoji/ui/cabinet/user/OrganizationItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 313
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget v5, Lcom/metamoji/noteanytime/R$string;->ForBiz_Add_Organization_Msg_Same_Id_And_Url:I

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmUtils;->modalYesNoDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 315
    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_0

    return-void

    .line 322
    :cond_0
    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 324
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    :goto_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static final addOrganization$lambda$6(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)V
    .locals 2

    .line 329
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;->Added:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 330
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getCloseMe()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final getOrganizationID()Ljava/lang/String;
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getOrganizationId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private final getServerURL()Ljava/lang/String;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private final initControls()V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->dlg:Landroid/app/Dialog;

    const/4 v1, 0x0

    const-string v2, "dlg"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget v3, Lcom/metamoji/noteanytime/R$id;->add_organization_txt_id:I

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "findViewById(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->_txtOrganizationID:Landroid/widget/EditText;

    .line 179
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->dlg:Landroid/app/Dialog;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    sget v4, Lcom/metamoji/noteanytime/R$id;->add_organization_btn_url:I

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->_btnServerURL:Lcom/metamoji/ui/common/UiButton;

    .line 180
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->dlg:Landroid/app/Dialog;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->add_organization_lbl_url:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/ui/common/UiTextView;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->_lblServerURL:Lcom/metamoji/ui/common/UiTextView;

    return-void
.end method

.method static final onCreateDialog$lambda$1(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    .line 202
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v0, 0x42

    if-eq p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0xa0

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 203
    :cond_1
    :goto_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->onDone(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method static final onCreateDialog$lambda$3(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;Ljava/lang/Boolean;)V
    .locals 2

    const/4 v0, 0x1

    .line 250
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getCloseMe()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 253
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getCheckingParams()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 254
    sget-object v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;->reset(Landroidx/fragment/app/FragmentActivity;)V

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->dismiss()V

    :cond_1
    return-void
.end method

.method static final onCreateDialog$lambda$5(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;Ljava/lang/Boolean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getCheckingParams()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 262
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 264
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)V

    invoke-virtual {p1, v0, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :cond_0
    return-void
.end method

.method static final onCreateDialog$lambda$5$lambda$4(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)V
    .locals 1

    .line 265
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->addOrganization()V

    .line 266
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->setBusy(Z)V

    return-void
.end method

.method public static final openDialog(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->Companion:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$Companion;->openDialog(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    return-void
.end method

.method public static final openDialog(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->Companion:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$Companion;->openDialog(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)V

    return-void
.end method

.method private final setOrganizationID(Ljava/lang/String;)V
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->setOrganizationId(Ljava/lang/String;)V

    return-void
.end method

.method private final setServerURL(Ljava/lang/String;)V
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->setServerUrl(Ljava/lang/String;)V

    return-void
.end method

.method static final viewModel_delegate$lambda$0(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;
    .locals 2

    .line 152
    sget-object v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "requireActivity(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;->get(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    return-object v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 1

    .line 338
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getBusy()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;->Cancelled:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 342
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getCloseMe()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 190
    sget v0, Lcom/metamoji/noteanytime/R$layout;->cabinet_dialog_add_organization:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->mViewId:I

    .line 191
    sget v0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Add_Organization_Title:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->mTitleId:I

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->mDone:Z

    .line 193
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->mCancel:Z

    const/4 v1, 0x0

    .line 194
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->mClose:Z

    .line 195
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->mModal:Z

    .line 196
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "onCreateDialog(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->dlg:Landroid/app/Dialog;

    .line 197
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->initControls()V

    .line 200
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->_txtOrganizationID:Landroid/widget/EditText;

    const-string v0, "_txtOrganizationID"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getOrganizationID()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->_txtOrganizationID:Landroid/widget/EditText;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    new-instance v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 211
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getServerURL()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 214
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->_lblServerURL:Lcom/metamoji/ui/common/UiTextView;

    .line 211
    const-string v2, "_lblServerURL"

    if-lez p1, :cond_3

    if-nez v0, :cond_2

    .line 212
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getServerURL()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 214
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/metamoji/noteanytime/R$string;->ForBiz_Add_Organization_Url_Comment:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->_btnServerURL:Lcom/metamoji/ui/common/UiButton;

    if-nez p1, :cond_5

    const-string p1, "_btnServerURL"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_5
    new-instance v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$onCreateDialog$2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$onCreateDialog$2;-><init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getCloseMe()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)V

    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 259
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getCheckingParams()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)V

    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 272
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->dlg:Landroid/app/Dialog;

    const-string v0, "dlg"

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->restoreInstanceStateIfAvailable(Landroid/app/Dialog;)Z

    .line 273
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->dlg:Landroid/app/Dialog;

    if-nez p1, :cond_7

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    return-object v1

    :cond_7
    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 4

    .line 283
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getBusy()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->_txtOrganizationID:Landroid/widget/EditText;

    const-string v0, "_txtOrganizationID"

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "getDefault(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "toUpperCase(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 294
    sget p1, Lcom/metamoji/noteanytime/R$string;->ForBiz_Add_Organization_Msg_No_Id:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 295
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->_txtOrganizationID:Landroid/widget/EditText;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 298
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->setOrganizationId(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->getViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->checkParams()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 351
    const-string v0, "reconstructdialogflag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
