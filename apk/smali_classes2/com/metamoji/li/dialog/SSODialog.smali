.class public final Lcom/metamoji/li/dialog/SSODialog;
.super Lcom/metamoji/lib/dialog/UtDialog;
.source "SSODialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/dialog/SSODialog$Companion;,
        Lcom/metamoji/li/dialog/SSODialog$LoginClient;,
        Lcom/metamoji/li/dialog/SSODialog$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSSODialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SSODialog.kt\ncom/metamoji/li/dialog/SSODialog\n+ 2 UtDialogArgumentDelegate.kt\ncom/metamoji/lib/dialog/UtBundleDelegate\n*L\n1#1,104:1\n174#2,3:105\n*S KotlinDebug\n*F\n+ 1 SSODialog.kt\ncom/metamoji/li/dialog/SSODialog\n*L\n25#1:105,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 (2\u00020\u0001:\u0002()B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u001a\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020%H\u0015J\u0010\u0010&\u001a\u00020\u001d2\u0006\u0010\'\u001a\u00020#H\u0016R+\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0015\u001a\u000c\u0012\u0004\u0012\u00020\u00170\u0016R\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0010\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006*"
    }
    d2 = {
        "Lcom/metamoji/li/dialog/SSODialog;",
        "Lcom/metamoji/lib/dialog/UtDialog;",
        "<init>",
        "()V",
        "<set-?>",
        "Lcom/metamoji/ui/cabinet/user/SsoType;",
        "ssoType",
        "getSsoType",
        "()Lcom/metamoji/ui/cabinet/user/SsoType;",
        "setSsoType",
        "(Lcom/metamoji/ui/cabinet/user/SsoType;)V",
        "ssoType$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "primaryErrorMessage",
        "",
        "getPrimaryErrorMessage",
        "()Ljava/lang/String;",
        "webView",
        "Landroid/webkit/WebView;",
        "dialogHostManager",
        "Lcom/metamoji/lib/dialog/UtDialogHostManager;",
        "ssoErrorMessageReceptor",
        "Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;",
        "Lcom/metamoji/lib/dialog/UtMessageBox;",
        "mailAddress",
        "getMailAddress",
        "setMailAddress",
        "(Ljava/lang/String;)V",
        "onLoginResult",
        "",
        "uri",
        "Landroid/net/Uri;",
        "createBodyView",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "inflater",
        "Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;",
        "onSaveInstanceState",
        "outState",
        "Companion",
        "LoginClient",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/metamoji/li/dialog/SSODialog$Companion;

.field public static final SSO_FAIL:Ljava/lang/String; = "oidcfail"

.field public static final SSO_SCHEME:Ljava/lang/String; = "mmjsso"

.field public static final SSO_SUCCESS:Ljava/lang/String; = "oidcsuccess"


# instance fields
.field private final dialogHostManager:Lcom/metamoji/lib/dialog/UtDialogHostManager;

.field private mailAddress:Ljava/lang/String;

.field private final ssoErrorMessageReceptor:Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor<",
            "Lcom/metamoji/lib/dialog/UtMessageBox;",
            ">;"
        }
    .end annotation
.end field

.field private final ssoType$delegate:Lkotlin/properties/ReadWriteProperty;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "ssoType"

    const-string v3, "getSsoType()Lcom/metamoji/ui/cabinet/user/SsoType;"

    const-class v4, Lcom/metamoji/li/dialog/SSODialog;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/metamoji/li/dialog/SSODialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/metamoji/li/dialog/SSODialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/dialog/SSODialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/dialog/SSODialog;->Companion:Lcom/metamoji/li/dialog/SSODialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 17
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SSODialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/cabinet/user/SsoType;->SSO_TYPE_GOOGLE:Lcom/metamoji/ui/cabinet/user/SsoType;

    check-cast v1, Ljava/lang/Enum;

    .line 105
    new-instance v2, Lcom/metamoji/lib/dialog/UtBundleDelegate$GenericDelegate;

    const-class v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KClassifier;

    .line 106
    new-instance v4, Lcom/metamoji/li/dialog/SSODialog$special$$inlined$enum$1;

    invoke-direct {v4, v1}, Lcom/metamoji/li/dialog/SSODialog$special$$inlined$enum$1;-><init>(Ljava/lang/Enum;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 107
    sget-object v1, Lcom/metamoji/li/dialog/SSODialog$special$$inlined$enum$2;->INSTANCE:Lcom/metamoji/li/dialog/SSODialog$special$$inlined$enum$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 105
    invoke-direct {v2, v0, v3, v4, v1}, Lcom/metamoji/lib/dialog/UtBundleDelegate$GenericDelegate;-><init>(Lcom/metamoji/lib/dialog/UtBundleDelegate;Lkotlin/reflect/KClassifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lkotlin/properties/ReadWriteProperty;

    .line 25
    iput-object v2, p0, Lcom/metamoji/li/dialog/SSODialog;->ssoType$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 34
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/SSODialog;->setWidthOption(Lcom/metamoji/lib/dialog/UtDialog$WidthOption;)V

    .line 35
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/SSODialog;->setHeightOption(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/SSODialog;->setCancellable(Z)V

    .line 37
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->CANCEL:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/SSODialog;->setLeftButton(Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;)V

    .line 41
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogHostManager;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/UtDialogHostManager;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/dialog/SSODialog;->dialogHostManager:Lcom/metamoji/lib/dialog/UtDialogHostManager;

    .line 42
    new-instance v1, Lcom/metamoji/li/dialog/SSODialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/metamoji/li/dialog/SSODialog$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/li/dialog/SSODialog;)V

    const-string v2, "ssoErrorMessageReceptor"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/lib/dialog/UtDialogHostManager;->register(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/li/dialog/SSODialog;->ssoErrorMessageReceptor:Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;

    return-void
.end method

.method public static final synthetic access$onLoginResult(Lcom/metamoji/li/dialog/SSODialog;Landroid/net/Uri;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/metamoji/li/dialog/SSODialog;->onLoginResult(Landroid/net/Uri;)V

    return-void
.end method

.method private final onLoginResult(Landroid/net/Uri;)V
    .locals 2

    .line 49
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oidcsuccess"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const-string v0, "getPathSegments(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/li/dialog/SSODialog;->mailAddress:Ljava/lang/String;

    .line 51
    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    move-object p1, p0

    check-cast p1, Lcom/metamoji/lib/dialog/IUtDialog;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/metamoji/lib/dialog/IUtDialog;->complete$default(Lcom/metamoji/lib/dialog/IUtDialog;Lcom/metamoji/lib/dialog/IUtDialog$Status;ILjava/lang/Object;)V

    .line 55
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/li/dialog/SSODialog;->ssoErrorMessageReceptor:Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;

    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    new-instance v1, Lcom/metamoji/li/dialog/SSODialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/li/dialog/SSODialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/li/dialog/SSODialog;)V

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->showDialog(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static final onLoginResult$lambda$1(Lcom/metamoji/li/dialog/SSODialog;Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;)Lcom/metamoji/lib/dialog/UtMessageBox;
    .locals 8

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v1, Lcom/metamoji/lib/dialog/UtMessageBox;->Companion:Lcom/metamoji/lib/dialog/UtMessageBox$Companion;

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SSODialog;->getPrimaryErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/metamoji/lib/dialog/UtMessageBox$Companion;->createForConfirm$default(Lcom/metamoji/lib/dialog/UtMessageBox$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p0

    return-object p0
.end method

.method static final ssoErrorMessageReceptor$lambda$0(Lcom/metamoji/li/dialog/SSODialog;Lcom/metamoji/lib/dialog/UtDialogHostManager$ISubmission;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SSODialog;->cancel()V

    .line 44
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method protected createBodyView(Landroid/os/Bundle;Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;)Landroid/view/View;
    .locals 4

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_sso:I

    invoke-interface {p2, v0}, Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;->inflate(I)Landroid/view/View;

    move-result-object p2

    .line 78
    sget v0, Lcom/metamoji/noteanytime/R$id;->web_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/metamoji/li/dialog/SSODialog;->webView:Landroid/webkit/WebView;

    .line 79
    const-string v1, "webView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    new-instance v3, Lcom/metamoji/li/dialog/SSODialog$LoginClient;

    invoke-direct {v3, p0}, Lcom/metamoji/li/dialog/SSODialog$LoginClient;-><init>(Lcom/metamoji/li/dialog/SSODialog;)V

    check-cast v3, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 80
    iget-object v0, p0, Lcom/metamoji/li/dialog/SSODialog;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v3, "getSettings(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 81
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 82
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 83
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 84
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    if-eqz p1, :cond_3

    .line 87
    iget-object v0, p0, Lcom/metamoji/li/dialog/SSODialog;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 89
    :cond_3
    iget-object p1, p0, Lcom/metamoji/li/dialog/SSODialog;->webView:Landroid/webkit/WebView;

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_4
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_6

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return-object p2

    .line 90
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SSODialog;->getSsoType()Lcom/metamoji/ui/cabinet/user/SsoType;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->getSsoRequestURL(Lcom/metamoji/ui/cabinet/user/SsoType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/metamoji/li/dialog/SSODialog;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v2, v0

    :goto_1
    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-object p2
.end method

.method public final getMailAddress()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/metamoji/li/dialog/SSODialog;->mailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrimaryErrorMessage()Ljava/lang/String;
    .locals 3

    .line 28
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SSODialog;->getSsoType()Lcom/metamoji/ui/cabinet/user/SsoType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/li/dialog/SSODialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SsoType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "getString(...)"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 30
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_MICROSOFT_ACCOUNT_LOGIN_ERROR:I

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/SSODialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 29
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_GOOGLE_ID_LOGIN_ERROR:I

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/SSODialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSsoType()Lcom/metamoji/ui/cabinet/user/SsoType;
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/metamoji/li/dialog/SSODialog;->ssoType$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/li/dialog/SSODialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/ui/cabinet/user/SsoType;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/metamoji/li/dialog/SSODialog;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const-string v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 102
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/UtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setMailAddress(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/metamoji/li/dialog/SSODialog;->mailAddress:Ljava/lang/String;

    return-void
.end method

.method public final setSsoType(Lcom/metamoji/ui/cabinet/user/SsoType;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/metamoji/li/dialog/SSODialog;->ssoType$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/li/dialog/SSODialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
