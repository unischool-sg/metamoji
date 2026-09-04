.class public final Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;
.super Lcom/metamoji/lib/dialog/BaseSoftwareKeyboardObserver;
.source "UtSoftwareKeyboardObserver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;",
        "Lcom/metamoji/lib/dialog/BaseSoftwareKeyboardObserver;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "rootView",
        "Landroid/view/View;",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V",
        "getRootView",
        "()Landroid/view/View;",
        "decorView",
        "dialog"
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
.field private final decorView:Landroid/view/View;

.field private final rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/metamoji/lib/dialog/BaseSoftwareKeyboardObserver;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p2, p0, Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;->rootView:Landroid/view/View;

    .line 70
    invoke-static {p2}, Lcom/metamoji/lib/utils/ViewExtKt;->activity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    move-object p1, p2

    :cond_1
    iput-object p1, p0, Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;->decorView:Landroid/view/View;

    .line 71
    new-instance p1, Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;)V

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;->getDisposer()Lcom/metamoji/lib/utils/LifecycleDisposer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/metamoji/lib/utils/IDisposable;

    new-instance v0, Lcom/metamoji/lib/utils/GenericDisposable;

    new-instance v1, Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;)V

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/GenericDisposable;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/LifecycleDisposer;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    return-void
.end method

.method static final _init_$lambda$0(Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "insets"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    const-string v0, "getInsets(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;->getCallback()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;->decorView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method static final _init_$lambda$1(Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;)Lkotlin/Unit;
    .locals 1

    .line 77
    iget-object p0, p0, Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;->rootView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getRootView()Landroid/view/View;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;->rootView:Landroid/view/View;

    return-object v0
.end method
