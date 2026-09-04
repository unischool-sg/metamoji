.class public final Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;
.super Ljava/lang/Object;
.source "TextBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextBinding.kt\ncom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,124:1\n1#2:125\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J.\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ.\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000f2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "Landroid/widget/EditText;",
        "data",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
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

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 97
    sget-object p4, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic create$default(Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 101
    sget-object p4, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/widget/EditText;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
            ")",
            "Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;

    invoke-direct {v0, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;-><init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;->connect(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;)V

    return-object v0
.end method

.method public final create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/widget/EditText;",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
            ")",
            "Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-static {p3, p1}, Lcom/metamoji/lib/utils/UtMutableStateFlowLiveDataKt;->asMutableLiveData(Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;

    move-result-object p1

    return-object p1
.end method
