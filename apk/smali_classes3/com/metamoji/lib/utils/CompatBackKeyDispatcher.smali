.class public final Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;
.super Ljava/lang/Object;
.source "CompatBackKeyDispatcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0003J$\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0013J\u001c\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0013J\u0006\u0010\u0014\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;",
        "",
        "onBackInvokedDispatcherPriority",
        "",
        "<init>",
        "(I)V",
        "onBackInvokedCallback",
        "Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher;",
        "onBackPressedCallback",
        "Landroidx/activity/OnBackPressedCallback;",
        "setInvokedDispatcherPriority",
        "priority",
        "register",
        "",
        "activity",
        "Landroidx/activity/ComponentActivity;",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "callback",
        "Lkotlin/Function0;",
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
.field private onBackInvokedCallback:Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher;

.field private onBackInvokedDispatcherPriority:I

.field private onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;->onBackInvokedDispatcherPriority:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final register(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/ComponentActivity;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher$register$1;

    invoke-direct {v0, p3}, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher$register$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 52
    check-cast v0, Landroidx/activity/OnBackPressedCallback;

    iput-object v0, p0, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 53
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method public final register(Landroidx/activity/ComponentActivity;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/ComponentActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, p1, v0, p2}, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;->register(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final setInvokedDispatcherPriority(I)Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;
    .locals 0

    .line 21
    iput p1, p0, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;->onBackInvokedDispatcherPriority:I

    return-object p0
.end method

.method public final unregister()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;->onBackInvokedCallback:Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher;->unregister()V

    :cond_0
    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;->onBackInvokedCallback:Lcom/metamoji/lib/utils/AutoDisposalOnBackInvokedDispatcher;

    .line 72
    iget-object v1, p0, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->remove()V

    .line 73
    :cond_1
    iput-object v0, p0, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    return-void
.end method
