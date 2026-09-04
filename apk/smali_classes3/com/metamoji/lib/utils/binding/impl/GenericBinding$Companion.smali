.class public final Lcom/metamoji/lib/utils/binding/impl/GenericBinding$Companion;
.super Ljava/lang/Object;
.source "GenericBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/GenericBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGenericBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GenericBinding.kt\ncom/metamoji/lib/utils/binding/impl/GenericBinding$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,36:1\n1#2:37\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003Ja\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00070\u0005\"\u0008\u0008\u0002\u0010\u0006*\u00020\u0008\"\u0004\u0008\u0003\u0010\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u0002H\u00062\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\r2\u001a\u0010\u000e\u001a\u0016\u0012\u0004\u0012\u0002H\u0006\u0012\u0006\u0012\u0004\u0018\u0001H\u0007\u0012\u0004\u0012\u00020\u00100\u000f\u00a2\u0006\u0002\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/GenericBinding$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/metamoji/lib/utils/binding/impl/GenericBinding;",
        "V",
        "T",
        "Landroid/view/View;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "action",
        "Lkotlin/Function2;",
        "",
        "(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/binding/impl/GenericBinding;",
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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/GenericBinding$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/binding/impl/GenericBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "TV;",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TV;-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/impl/GenericBinding<",
            "TV;TT;>;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/GenericBinding;

    invoke-direct {v0, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/GenericBinding;-><init>(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/GenericBinding;->connect(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V

    return-object v0
.end method
