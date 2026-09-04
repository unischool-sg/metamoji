.class public final Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;
.super Ljava/lang/Object;
.source "CompatBackKeyDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0003J$\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0013J\u001c\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0013J\u0006\u0010\u0014\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;",
        "",
        "onBackInvokedDispatcherPriority",
        "",
        "<init>",
        "(I)V",
        "onBackInvokedCallback",
        "Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;",
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
        "Companion",
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


# static fields
.field public static final Companion:Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher$Companion;

.field private static ENABLE_INVOKED_DISPATCHER:Z


# instance fields
.field private onBackInvokedCallback:Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;

.field private onBackInvokedDispatcherPriority:I

.field private onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;


# direct methods
.method public static synthetic $r8$lambda$0UlRJmmP7KuaRXJ6EI27ug0qMHc(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;->register$lambda$0$0(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;->Companion:Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;->onBackInvokedDispatcherPriority:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$getENABLE_INVOKED_DISPATCHER$cp()Z
    .locals 1

    .line 12
    sget-boolean v0, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;->ENABLE_INVOKED_DISPATCHER:Z

    return v0
.end method

.method public static final synthetic access$setENABLE_INVOKED_DISPATCHER$cp(Z)V
    .locals 0

    .line 12
    sput-boolean p0, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;->ENABLE_INVOKED_DISPATCHER:Z

    return-void
.end method

.method private static final register$lambda$0$0(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 46
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 47
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final register(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)V
    .locals 4
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
    sget-boolean v0, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;->ENABLE_INVOKED_DISPATCHER:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 44
    new-instance v0, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;

    invoke-direct {v0}, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;-><init>()V

    .line 45
    iget v1, p0, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;->onBackInvokedDispatcherPriority:I

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v3, p3}, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1, v2, p2, v3}, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;->register(ILandroid/app/Activity;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)V

    .line 44
    iput-object v0, p0, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;->onBackInvokedCallback:Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;

    .line 52
    :cond_0
    new-instance v0, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher$register$2;

    invoke-direct {v0, p3}, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher$register$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 62
    check-cast v0, Landroidx/activity/OnBackPressedCallback;

    iput-object v0, p0, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 63
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

    .line 72
    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, p1, v0, p2}, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;->register(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final setInvokedDispatcherPriority(I)Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;
    .locals 0

    .line 31
    iput p1, p0, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;->onBackInvokedDispatcherPriority:I

    return-object p0
.end method

.method public final unregister()V
    .locals 2

    .line 80
    iget-object v0, p0, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;->onBackInvokedCallback:Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;->unregister()V

    :cond_0
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;->onBackInvokedCallback:Lio/github/toyota32k/utils/android/AutoDisposalOnBackInvokedDispatcher;

    .line 82
    iget-object v1, p0, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->remove()V

    .line 83
    :cond_1
    iput-object v0, p0, Lio/github/toyota32k/utils/android/CompatBackKeyDispatcher;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    return-void
.end method
