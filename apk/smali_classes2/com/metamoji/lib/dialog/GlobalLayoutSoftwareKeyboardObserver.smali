.class public final Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;
.super Lcom/metamoji/lib/dialog/BaseSoftwareKeyboardObserver;
.source "UtSoftwareKeyboardObserver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;",
        "Lcom/metamoji/lib/dialog/BaseSoftwareKeyboardObserver;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentActivity;)V",
        "decorView",
        "Landroid/view/View;",
        "handler",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "getHandler",
        "()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "setHandler",
        "(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$Companion;

.field public static final THRESHOLD:F = 0.1f


# instance fields
.field private final decorView:Landroid/view/View;

.field private handler:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;->Companion:Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/metamoji/lib/dialog/BaseSoftwareKeyboardObserver;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    .line 42
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;->decorView:Landroid/view/View;

    .line 43
    new-instance p2, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$handler$1;

    invoke-direct {p2, p0}, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$handler$1;-><init>(Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;)V

    check-cast p2, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;->handler:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;->handler:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;->getDisposer()Lcom/metamoji/lib/utils/LifecycleDisposer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/metamoji/lib/utils/IDisposable;

    new-instance v0, Lcom/metamoji/lib/utils/GenericDisposable;

    new-instance v1, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;)V

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/GenericDisposable;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/LifecycleDisposer;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    return-void

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "decorView not found"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static final _init_$lambda$0(Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;)Lkotlin/Unit;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;->decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;->handler:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$getDecorView$p(Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;)Landroid/view/View;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;->decorView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final getHandler()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;->handler:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method public final setHandler(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;->handler:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method
