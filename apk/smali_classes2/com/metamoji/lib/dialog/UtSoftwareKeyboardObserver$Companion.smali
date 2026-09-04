.class public final Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver$Companion;
.super Ljava/lang/Object;
.source "UtSoftwareKeyboardObserver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver$Companion;",
        "",
        "<init>",
        "()V",
        "byGlobalLayout",
        "Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "byWindowInsets",
        "rootView",
        "Landroid/view/View;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final byGlobalLayout(Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentActivity;)V

    .line 85
    new-instance p1, Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;

    check-cast v0, Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;

    invoke-direct {p1, v0}, Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;-><init>(Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;)V

    return-object p1
.end method

.method public final byWindowInsets(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/lib/dialog/WindowInsetsSoftwareKeyboardObserver;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V

    .line 89
    new-instance p1, Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;

    check-cast v0, Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;

    invoke-direct {p1, v0}, Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;-><init>(Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;)V

    return-object p1
.end method
