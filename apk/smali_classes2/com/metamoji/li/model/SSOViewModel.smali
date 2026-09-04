.class public final Lcom/metamoji/li/model/SSOViewModel;
.super Ljava/lang/Object;
.source "SSOViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/model/SSOViewModel$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001aJ\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u001aR\u001c\u0010\u0006\u001a\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00030\u00030\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f8B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/metamoji/li/model/SSOViewModel;",
        "",
        "rootModel",
        "Lcom/metamoji/li/model/LoginViewModel;",
        "<init>",
        "(Lcom/metamoji/li/model/LoginViewModel;)V",
        "rootModelRef",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "getRootModel",
        "()Lcom/metamoji/li/model/LoginViewModel;",
        "activeSsoTypeString",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "v",
        "Lcom/metamoji/ui/cabinet/user/SsoType;",
        "activeSsoType",
        "getActiveSsoType",
        "()Lcom/metamoji/ui/cabinet/user/SsoType;",
        "setActiveSsoType",
        "(Lcom/metamoji/ui/cabinet/user/SsoType;)V",
        "cooperationCode",
        "startSsoRequest",
        "",
        "ssoType",
        "activity",
        "Lcom/metamoji/li/LoginActivity;",
        "acceptSsoResult",
        "",
        "uri",
        "Landroid/net/Uri;",
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


# instance fields
.field private final activeSsoTypeString:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cooperationCode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rootModelRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/li/model/LoginViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/li/model/LoginViewModel;)V
    .locals 2

    const-string v0, "rootModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/li/model/SSOViewModel;->rootModelRef:Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginViewModel;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v0

    const-string v1, "activeSsoType"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/li/model/SSOViewModel;->activeSsoTypeString:Landroidx/lifecycle/MutableLiveData;

    .line 23
    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginViewModel;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p1

    const-string v0, "cooperationCode"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/model/SSOViewModel;->cooperationCode:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private final getActiveSsoType()Lcom/metamoji/ui/cabinet/user/SsoType;
    .locals 1

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/li/model/SSOViewModel;->activeSsoTypeString:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/SsoType;->valueOf(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/SsoType;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getRootModel()Lcom/metamoji/li/model/LoginViewModel;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/li/model/SSOViewModel;->rootModelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/li/model/LoginViewModel;

    return-object v0
.end method

.method private final setActiveSsoType(Lcom/metamoji/ui/cabinet/user/SsoType;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/metamoji/li/model/SSOViewModel;->activeSsoTypeString:Landroidx/lifecycle/MutableLiveData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SsoType;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final acceptSsoResult(Landroid/net/Uri;Lcom/metamoji/li/LoginActivity;)Z
    .locals 11

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/metamoji/li/LoginActivity;->Companion:Lcom/metamoji/li/LoginActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/LoginActivity$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lcom/metamoji/li/model/SSOViewModel;->getActiveSsoType()Lcom/metamoji/ui/cabinet/user/SsoType;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/li/model/SSOViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mmjsso"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 45
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/li/model/SSOViewModel;->cooperationCode:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->parseSsoResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 47
    :cond_2
    sget-object p2, Lcom/metamoji/li/LoginActivity;->Companion:Lcom/metamoji/li/LoginActivity$Companion;

    invoke-virtual {p2}, Lcom/metamoji/li/LoginActivity$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "SSO Login ("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/metamoji/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 48
    new-instance p2, Lcom/metamoji/li/driver/SSODriver;

    invoke-direct {p2, v0, p1}, Lcom/metamoji/li/driver/SSODriver;-><init>(Lcom/metamoji/ui/cabinet/user/SsoType;Ljava/lang/String;)V

    check-cast p2, Lcom/metamoji/li/driver/LoginDriver;

    invoke-virtual {v2, p2}, Lcom/metamoji/li/model/LoginViewModel;->executeLogin(Lcom/metamoji/li/driver/LoginDriver;)V

    goto :goto_2

    .line 50
    :cond_3
    :goto_0
    sget-object p1, Lcom/metamoji/li/model/SSOViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SsoType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v3, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 52
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_GOOGLE_ID_LOGIN_ERROR:I

    goto :goto_1

    .line 50
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 51
    :cond_5
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_MICROSOFT_ACCOUNT_LOGIN_ERROR:I

    .line 54
    :goto_1
    sget-object v4, Lcom/metamoji/lib/dialog/UtMessageBox;->Companion:Lcom/metamoji/lib/dialog/UtMessageBox$Companion;

    invoke-virtual {p2, p1}, Lcom/metamoji/li/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lcom/metamoji/lib/dialog/UtMessageBox$Companion;->createForConfirm$default(Lcom/metamoji/lib/dialog/UtMessageBox$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p1

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    const-string v0, "sso_primary_error_message"

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/lib/dialog/UtMessageBox;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    :cond_6
    :goto_2
    const/4 p1, 0x0

    .line 57
    invoke-direct {p0, p1}, Lcom/metamoji/li/model/SSOViewModel;->setActiveSsoType(Lcom/metamoji/ui/cabinet/user/SsoType;)V

    .line 58
    iget-object p2, p0, Lcom/metamoji/li/model/SSOViewModel;->cooperationCode:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return v3
.end method

.method public final startSsoRequest(Lcom/metamoji/ui/cabinet/user/SsoType;Lcom/metamoji/li/LoginActivity;)V
    .locals 2

    const-string v0, "ssoType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/metamoji/li/model/SSOViewModel;->setActiveSsoType(Lcom/metamoji/ui/cabinet/user/SsoType;)V

    .line 32
    iget-object v0, p0, Lcom/metamoji/li/model/SSOViewModel;->cooperationCode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/metamoji/li/model/SSOViewModel;->cooperationCode:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->getSsoRequestURL(Lcom/metamoji/ui/cabinet/user/SsoType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    check-cast p2, Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
