.class public final Lcom/metamoji/lib/utils/binding/impl/AlphaBinding$Companion;
.super Ljava/lang/Object;
.source "AlphaBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/AlphaBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAlphaBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlphaBinding.kt\ncom/metamoji/lib/utils/binding/impl/AlphaBinding$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,31:1\n1#2:32\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/AlphaBinding$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/metamoji/lib/utils/binding/impl/AlphaBinding;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "Landroid/view/View;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "",
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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/AlphaBinding$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/AlphaBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/view/View;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/impl/AlphaBinding;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/AlphaBinding;

    invoke-direct {v0, p3}, Lcom/metamoji/lib/utils/binding/impl/AlphaBinding;-><init>(Landroidx/lifecycle/LiveData;)V

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/AlphaBinding;->connect(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V

    return-object v0
.end method
