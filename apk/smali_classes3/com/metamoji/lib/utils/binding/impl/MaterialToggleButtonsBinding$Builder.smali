.class public final Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;
.super Ljava/lang/Object;
.source "MaterialToggleButtonsBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001c\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "target",
        "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;)V",
        "getOwner",
        "()Landroidx/lifecycle/LifecycleOwner;",
        "getTarget",
        "()Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;",
        "bind",
        "button",
        "Landroid/view/View;",
        "data",
        "Landroidx/lifecycle/MutableLiveData;",
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


# instance fields
.field private final owner:Landroidx/lifecycle/LifecycleOwner;

.field private final target:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;->owner:Landroidx/lifecycle/LifecycleOwner;

    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;->target:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;

    return-void
.end method


# virtual methods
.method public final bind(Landroid/view/View;Landroidx/lifecycle/MutableLiveData;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;"
        }
    .end annotation

    const-string v0, "button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;->target:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;->owner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->add(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/MutableLiveData;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;

    return-object p0
.end method

.method public final getOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;->owner:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public final getTarget()Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;->target:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;

    return-object v0
.end method
