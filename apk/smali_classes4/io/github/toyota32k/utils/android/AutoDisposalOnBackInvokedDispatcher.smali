.class public final Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;
.super Ljava/lang/Object;
.source "AutoDisposalOnBackInvokedDispatcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J,\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008J$\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00112\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008J\u0006\u0010\u0012\u001a\u00020\tR\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;",
        "",
        "<init>",
        "()V",
        "activityRef",
        "Lio/github/toyota32k/utils/lifecycle/LifecycleReference;",
        "Landroid/app/Activity;",
        "disposer",
        "Lkotlin/Function0;",
        "",
        "register",
        "priority",
        "",
        "activity",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "callback",
        "Landroidx/activity/ComponentActivity;",
        "unregister",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private activityRef:Lio/github/toyota32k/utils/lifecycle/LifecycleReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/github/toyota32k/utils/lifecycle/LifecycleReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private disposer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final register$lambda$0(Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;Landroid/app/Activity;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;->unregister()V

    .line 28
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final register$lambda$1(Landroid/app/Activity;Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$register$invoker$1;)Lkotlin/Unit;
    .locals 0

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    check-cast p1, Landroid/window/OnBackInvokedCallback;

    invoke-interface {p0, p1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 37
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final register(ILandroid/app/Activity;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/Activity;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance v0, Lio/github/toyota32k/utils/lifecycle/LifecycleReference;

    new-instance v1, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$$ExternalSyntheticLambda0;-><init>(Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;)V

    invoke-direct {v0, p2, p3, v1}, Lio/github/toyota32k/utils/lifecycle/LifecycleReference;-><init>(Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;->activityRef:Lio/github/toyota32k/utils/lifecycle/LifecycleReference;

    .line 29
    new-instance p3, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$register$invoker$1;

    invoke-direct {p3, p4}, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$register$invoker$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 34
    invoke-virtual {p2}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p4

    move-object v0, p3

    check-cast v0, Landroid/window/OnBackInvokedCallback;

    invoke-interface {p4, p1, v0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 35
    new-instance p1, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2, p3}, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher$register$invoker$1;)V

    iput-object p1, p0, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;->disposer:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final register(ILandroidx/activity/ComponentActivity;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/activity/ComponentActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, p1, v0, p2, p3}, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;->register(ILandroid/app/Activity;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final unregister()V
    .locals 1

    .line 52
    iget-object v0, p0, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;->disposer:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;->disposer:Lkotlin/jvm/functions/Function0;

    .line 54
    iget-object v0, p0, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;->activityRef:Lio/github/toyota32k/utils/lifecycle/LifecycleReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/github/toyota32k/utils/lifecycle/LifecycleReference;->reset()V

    :cond_1
    return-void
.end method
