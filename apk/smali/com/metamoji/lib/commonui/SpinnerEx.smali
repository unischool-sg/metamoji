.class public final Lcom/metamoji/lib/commonui/SpinnerEx;
.super Landroidx/appcompat/widget/AppCompatSpinner;
.source "SpinnerEx.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/commonui/SpinnerEx$SavedState;,
        Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0002\u001a\u001bB\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\rH\u0002J\u0012\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0015\u001a\u00020\r2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010\u0017\u001a\u00020\rH\u0014J\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0010H\u0004R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/metamoji/lib/commonui/SpinnerEx;",
        "Landroidx/appcompat/widget/AppCompatSpinner;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyle",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "resetSelection",
        "",
        "setAdapter",
        "orig",
        "Landroid/widget/SpinnerAdapter;",
        "onSaveInstanceState",
        "Landroid/os/Parcelable;",
        "resetting",
        "",
        "onRestoreInstanceState",
        "state",
        "onAttachedToWindow",
        "newProxy",
        "obj",
        "SavedState",
        "SpinnerAdapterProxy",
        "commonui"
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
.field private resetting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final resetSelection()V
    .locals 8

    .line 37
    const-string v0, "getDeclaredMethod(...)"

    .line 38
    :try_start_0
    const-class v1, Landroid/widget/AdapterView;

    .line 39
    const-string v2, "setNextSelectedPositionInt"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 38
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, -0x1

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-class v1, Landroid/widget/AdapterView;

    .line 44
    const-string v4, "setSelectedPositionInt"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    .line 43
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Ljava/lang/RuntimeException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final newProxy(Landroid/widget/SpinnerAdapter;)Landroid/widget/SpinnerAdapter;
    .locals 4

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/widget/SpinnerAdapter;

    aput-object v3, v1, v2

    .line 115
    new-instance v2, Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/lib/commonui/SpinnerEx$SpinnerAdapterProxy;-><init>(Lcom/metamoji/lib/commonui/SpinnerEx;Landroid/widget/SpinnerAdapter;)V

    check-cast v2, Ljava/lang/reflect/InvocationHandler;

    .line 113
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.SpinnerAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/SpinnerAdapter;

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 102
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->onAttachedToWindow()V

    .line 103
    iget-boolean v0, p0, Lcom/metamoji/lib/commonui/SpinnerEx;->resetting:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/metamoji/lib/commonui/SpinnerEx;->resetSelection()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/metamoji/lib/commonui/SpinnerEx;->resetting:Z

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 88
    instance-of v0, p1, Lcom/metamoji/lib/commonui/SpinnerEx$SavedState;

    if-eqz v0, :cond_1

    .line 89
    check-cast p1, Lcom/metamoji/lib/commonui/SpinnerEx$SavedState;

    invoke-virtual {p1}, Lcom/metamoji/lib/commonui/SpinnerEx$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 90
    invoke-virtual {p1}, Lcom/metamoji/lib/commonui/SpinnerEx$SavedState;->getSelectedIndex()I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/metamoji/lib/commonui/SpinnerEx;->resetting:Z

    :cond_0
    return-void

    .line 94
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 72
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/metamoji/lib/commonui/SpinnerEx$SavedState;

    invoke-virtual {p0}, Lcom/metamoji/lib/commonui/SpinnerEx;->getSelectedItemPosition()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/metamoji/lib/commonui/SpinnerEx$SavedState;-><init>(Landroid/os/Parcelable;I)V

    check-cast v1, Landroid/os/Parcelable;

    return-object v1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 26
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/commonui/SpinnerEx;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 59
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/commonui/SpinnerEx;->newProxy(Landroid/widget/SpinnerAdapter;)Landroid/widget/SpinnerAdapter;

    move-result-object p1

    .line 62
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 63
    invoke-direct {p0}, Lcom/metamoji/lib/commonui/SpinnerEx;->resetSelection()V

    return-void
.end method
