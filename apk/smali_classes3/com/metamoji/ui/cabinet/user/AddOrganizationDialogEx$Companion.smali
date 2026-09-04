.class public final Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$Companion;
.super Ljava/lang/Object;
.source "AddOrganizationDialogEx.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\rH\u0007R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$Companion;",
        "",
        "<init>",
        "()V",
        "tagName",
        "",
        "getTagName",
        "()Ljava/lang/String;",
        "openDialog",
        "",
        "activity",
        "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;",
        "dialog",
        "Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;",
        "CHAR_SLASH",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTagName()Ljava/lang/String;
    .locals 1

    .line 355
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->access$getTagName$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final openDialog(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    sget-object v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;

    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;->create(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/metamoji/ui/cabinet/user/AddOrganizationObserver;

    move-object v3, p1

    check-cast v3, Lcom/metamoji/ui/cabinet/user/IAddOrganizationListener;

    invoke-direct {v2, p1, v3}, Lcom/metamoji/ui/cabinet/user/AddOrganizationObserver;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Lcom/metamoji/ui/cabinet/user/IAddOrganizationListener;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 361
    new-instance p1, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;

    invoke-direct {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;-><init>()V

    .line 362
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$Companion;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method public final openDialog(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 368
    :cond_1
    sget-object v1, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;->create(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_1
    return-void

    .line 369
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    new-instance v3, Lcom/metamoji/ui/cabinet/user/AddOrganizationObserver;

    check-cast p1, Lcom/metamoji/ui/cabinet/user/IAddOrganizationListener;

    invoke-direct {v3, v0, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationObserver;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Lcom/metamoji/ui/cabinet/user/IAddOrganizationListener;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 370
    new-instance p1, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;

    invoke-direct {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;-><init>()V

    .line 371
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$Companion;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->safeShow(Ljava/lang/String;)V

    return-void
.end method
