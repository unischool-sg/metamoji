.class public final Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$Companion;
.super Ljava/lang/Object;
.source "SelectOrganizationDialogEx.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u0007R\u001a\u0010\u0004\u001a\u00020\u00058FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$Companion;",
        "",
        "<init>",
        "()V",
        "tagName",
        "",
        "getTagName$annotations",
        "getTagName",
        "()Ljava/lang/String;",
        "openDialog",
        "",
        "activity",
        "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;",
        "currentId",
        "currentUrl",
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

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getTagName$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getTagName()Ljava/lang/String;
    .locals 2

    .line 150
    const-class v0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final openDialog(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getSelectOrganizationViewModel()Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 161
    :cond_0
    new-instance v1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    new-instance v2, Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    const-string v3, ""

    if-nez p2, :cond_1

    move-object p2, v3

    :cond_1
    if-nez p3, :cond_2

    move-object p3, v3

    :cond_2
    invoke-direct {v2, p2, v3, p3}, Lcom/metamoji/ui/cabinet/user/OrganizationItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;-><init>(Lcom/metamoji/ui/cabinet/user/OrganizationItem;)V

    .line 162
    invoke-virtual {v1, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->registerObserver(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    .line 161
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->setSelectOrganizationViewModel(Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;)V

    .line 164
    new-instance p1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;

    invoke-direct {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;-><init>()V

    .line 165
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$Companion;->getTagName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->safeShow(Ljava/lang/String;)V

    return-void
.end method
