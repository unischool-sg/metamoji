.class public final Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBindingKt;
.super Ljava/lang/Object;
.source "MaterialToggleButtonsBinding.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a=\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000c\u001a5\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "materialToggleButtonsBinding",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "Lcom/google/android/material/button/MaterialButtonToggleGroup;",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "fnBindViews",
        "Lkotlin/Function1;",
        "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "utils"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final materialToggleButtonsBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fnBindViews"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 142
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final materialToggleButtonsBinding(Lcom/metamoji/lib/utils/binding/Binder;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fnBindViews"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 144
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic materialToggleButtonsBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 141
    sget-object p3, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBindingKt;->materialToggleButtonsBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic materialToggleButtonsBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 143
    sget-object p2, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBindingKt;->materialToggleButtonsBinding(Lcom/metamoji/lib/utils/binding/Binder;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method
