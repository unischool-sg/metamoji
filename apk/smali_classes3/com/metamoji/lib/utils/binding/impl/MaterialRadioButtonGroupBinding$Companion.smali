.class public final Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding$Companion;
.super Ljava/lang/Object;
.source "MaterialRadioButtonGroupBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaterialRadioButtonGroupBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialRadioButtonGroupBinding.kt\ncom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n1#2:73\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JH\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\u0008\u0001\u0010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;",
        "T",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "Lcom/google/android/material/button/MaterialButtonToggleGroup;",
        "data",
        "Landroidx/lifecycle/MutableLiveData;",
        "idResolver",
        "Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
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

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 56
    sget-object p5, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup;",
            "Landroidx/lifecycle/MutableLiveData<",
            "TT;>;",
            "Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver<",
            "TT;>;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
            ")",
            "Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idResolver"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;

    invoke-direct {v0, p3, p5}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;-><init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V

    invoke-virtual {v0, p1, p2, p4}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;->connect(Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;)V

    return-object v0
.end method
