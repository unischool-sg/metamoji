.class public final Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "LoginPageViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;,
        Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \"2\u00020\u0001:\u0002\"#B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "selectSchoolViewModel",
        "Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;",
        "getSelectSchoolViewModel",
        "()Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;",
        "setSelectSchoolViewModel",
        "(Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;)V",
        "loginDriver",
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;",
        "getLoginDriver",
        "()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;",
        "setLoginDriver",
        "(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;)V",
        "simpleLoginDataCache",
        "Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;",
        "getSimpleLoginDataCache",
        "()Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;",
        "setSimpleLoginDataCache",
        "(Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;)V",
        "selectOrganizationViewModel",
        "Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;",
        "getSelectOrganizationViewModel",
        "()Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;",
        "setSelectOrganizationViewModel",
        "(Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;)V",
        "addOrganizationViewModel",
        "Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;",
        "getAddOrganizationViewModel",
        "()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;",
        "setAddOrganizationViewModel",
        "(Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;)V",
        "Companion",
        "Error",
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
.field public static final Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;


# instance fields
.field private addOrganizationViewModel:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

.field private loginDriver:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

.field private selectOrganizationViewModel:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

.field private selectSchoolViewModel:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

.field private simpleLoginDataCache:Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method

.method public static final instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final isQRCodeForbidden(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->isQRCodeForbidden(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Z

    move-result p0

    return p0
.end method

.method public static final registerObserversIfNeed(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->registerObserversIfNeed(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    return-void
.end method


# virtual methods
.method public final getAddOrganizationViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->addOrganizationViewModel:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    return-object v0
.end method

.method public final getLoginDriver()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->loginDriver:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    return-object v0
.end method

.method public final getSelectOrganizationViewModel()Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->selectOrganizationViewModel:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    return-object v0
.end method

.method public final getSelectSchoolViewModel()Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->selectSchoolViewModel:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    return-object v0
.end method

.method public final getSimpleLoginDataCache()Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->simpleLoginDataCache:Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;

    return-object v0
.end method

.method public final setAddOrganizationViewModel(Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->addOrganizationViewModel:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    return-void
.end method

.method public final setLoginDriver(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->loginDriver:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    return-void
.end method

.method public final setSelectOrganizationViewModel(Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->selectOrganizationViewModel:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    return-void
.end method

.method public final setSelectSchoolViewModel(Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->selectSchoolViewModel:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    return-void
.end method

.method public final setSimpleLoginDataCache(Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->simpleLoginDataCache:Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;

    return-void
.end method
