.class public final Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher;
.super Ljava/lang/Object;
.source "AutoDisposalOnBackInvokedDispatcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J,\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008J$\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00112\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008J\u0006\u0010\u0012\u001a\u00020\tR\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher;",
        "",
        "<init>",
        "()V",
        "activityRef",
        "Lcom/metamoji/lib/utils/LifecycleReference;",
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
        "utils"
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
.field private activityRef:Lcom/metamoji/lib/utils/LifecycleReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/LifecycleReference<",
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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final register$lambda$0(Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher;Landroid/app/Activity;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher;->unregister()V

    .line 27
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final register$lambda$1(Landroid/app/Activity;Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher$register$invoker$1;)Lkotlin/Unit;
    .locals 0

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    check-cast p1, Landroid/window/OnBackInvokedCallback;

    invoke-interface {p0, p1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 36
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

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    return-void

    .line 25
    :cond_0
    new-instance v0, Lcom/metamoji/lib/utils/LifecycleReference;

    new-instance v1, Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher;)V

    invoke-direct {v0, p2, p3, v1}, Lcom/metamoji/lib/utils/LifecycleReference;-><init>(Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher;->activityRef:Lcom/metamoji/lib/utils/LifecycleReference;

    .line 28
    new-instance p3, Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher$register$invoker$1;

    invoke-direct {p3, p4}, Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher$register$invoker$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 33
    invoke-virtual {p2}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p4

    move-object v0, p3

    check-cast v0, Landroid/window/OnBackInvokedCallback;

    invoke-interface {p4, p1, v0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 34
    new-instance p1, Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2, p3}, Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher$register$invoker$1;)V

    iput-object p1, p0, Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher;->disposer:Lkotlin/jvm/functions/Function0;

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

    .line 43
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher;->register(ILandroid/app/Activity;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final unregister()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher;->disposer:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher;->disposer:Lkotlin/jvm/functions/Function0;

    .line 53
    iget-object v0, p0, Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher;->activityRef:Lcom/metamoji/lib/utils/LifecycleReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/LifecycleReference;->reset()V

    :cond_1
    return-void
.end method
