.class final Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NtProxyAuthDriver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtProxyAuthDriver;->showProxyAuthDialog(Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.metamoji.nt.NtProxyAuthDriver$showProxyAuthDialog$2$1"
    f = "NtProxyAuthDriver.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $cont:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $initialCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
            ">;",
            "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;->$cont:Lkotlin/coroutines/Continuation;

    iput-object p2, p0, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;->$initialCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;

    iget-object v0, p0, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;->$cont:Lkotlin/coroutines/Continuation;

    iget-object v1, p0, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;->$initialCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    invoke-direct {p1, v0, v1, p2}, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 34
    iget v0, p0, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;->$cont:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 38
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 42
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_PROXY_AUTH_PICKER_CAPTION:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 44
    new-instance v2, Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {v2}, Lcom/metamoji/cm/mutable/Mutable;-><init>()V

    .line 45
    new-instance v3, Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {v3}, Lcom/metamoji/cm/mutable/Mutable;-><init>()V

    .line 46
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 47
    new-instance v5, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$listener$1;

    invoke-direct {v5, v4, v2, v3}, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$listener$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/cm/mutable/Mutable;Lcom/metamoji/cm/mutable/Mutable;)V

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    .line 52
    sget v6, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {v1, v6, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 53
    sget v6, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {v1, v6, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 54
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const-string v5, "create(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v5, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$1;

    iget-object v6, p0, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;->$cont:Lkotlin/coroutines/Continuation;

    invoke-direct {v5, v6, v4}, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v5, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 60
    check-cast p1, Landroid/content/Context;

    sget v4, Lcom/metamoji/noteanytime/R$layout;->dialog_login_basic:I

    invoke-static {p1, v4, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 61
    sget v0, Lcom/metamoji/noteanytime/R$id;->username:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type com.metamoji.ui.common.UiEditText"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v2, v0}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    .line 62
    sget v0, Lcom/metamoji/noteanytime/R$id;->password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v3, v0}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v2}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v2}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiEditText;

    new-instance v4, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$2;

    invoke-direct {v4, v3}, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$2;-><init>(Lcom/metamoji/cm/mutable/Mutable;)V

    check-cast v4, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v4}, Lcom/metamoji/ui/common/UiEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 75
    iget-object v0, p0, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1;->$initialCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v2}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiEditText;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_1
    invoke-virtual {v3}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v3}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiEditText;

    new-instance v2, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$4;

    invoke-direct {v2, v1}, Lcom/metamoji/nt/NtProxyAuthDriver$showProxyAuthDialog$2$1$4;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    check-cast v2, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 89
    :cond_2
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 90
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 91
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 94
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 95
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 v0, -0x2

    .line 96
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 97
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 98
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 99
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 34
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
