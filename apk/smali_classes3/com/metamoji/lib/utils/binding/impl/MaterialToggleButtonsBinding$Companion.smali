.class public final Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;
.super Ljava/lang/Object;
.source "MaterialToggleButtonsBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaterialToggleButtonsBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialToggleButtonsBinding.kt\ncom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,145:1\n1#2:146\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tJ9\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0012\u0010\u000c\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000e0\r\"\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ9\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011\u00a2\u0006\u0002\u0008\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;",
        "view",
        "Lcom/google/android/material/button/MaterialButtonToggleGroup;",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "buttons",
        "",
        "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;",
        "(Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;[Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;",
        "fnBindViews",
        "Lkotlin/Function1;",
        "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 133
    sget-object p3, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic create$default(Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;[Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 128
    sget-object p3, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;[Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic create$default(Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 125
    sget-object p2, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;->create(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fnBindViews"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;->create(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;

    move-result-object p2

    .line 135
    invoke-virtual {p2, p1, p4}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->addViewsByBuilder(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    return-object p2
.end method

.method public final varargs create(Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;[Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttons"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;->create(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;

    move-result-object p2

    .line 130
    array-length p3, p4

    invoke-static {p4, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;

    invoke-virtual {p2, p1, p3}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->add(Landroidx/lifecycle/LifecycleOwner;[Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;

    return-object p2
.end method

.method public final create(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;

    invoke-direct {v0, p2}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;-><init>(Lcom/metamoji/lib/utils/binding/BindingMode;)V

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->connect(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    return-object v0
.end method
