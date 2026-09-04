.class public Lcom/metamoji/lib/utils/binding/impl/GenericBinding;
.super Lcom/metamoji/lib/utils/binding/impl/BaseBinding;
.source "GenericBinding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/GenericBinding$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/lib/utils/binding/impl/BaseBinding<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u0000 \u0013*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0004\u0008\u0001\u0010\u00032\u0008\u0012\u0004\u0012\u0002H\u00030\u0004:\u0001\u0013B1\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u001a\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u0010\u001a\u00020\t2\u0008\u0010\u0011\u001a\u0004\u0018\u00018\u0001H\u0014\u00a2\u0006\u0002\u0010\u0012R\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR%\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/GenericBinding;",
        "V",
        "Landroid/view/View;",
        "T",
        "Lcom/metamoji/lib/utils/binding/impl/BaseBinding;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "action",
        "Lkotlin/Function2;",
        "",
        "<init>",
        "(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)V",
        "getData",
        "()Landroidx/lifecycle/LiveData;",
        "getAction",
        "()Lkotlin/jvm/functions/Function2;",
        "onDataChanged",
        "v",
        "(Ljava/lang/Object;)V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/GenericBinding$Companion;


# instance fields
.field private final action:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TV;TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/GenericBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/GenericBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/GenericBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/GenericBinding$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TV;-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    invoke-direct {p0, v0}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;-><init>(Lcom/metamoji/lib/utils/binding/BindingMode;)V

    .line 12
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/GenericBinding;->data:Landroidx/lifecycle/LiveData;

    .line 13
    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/GenericBinding;->action:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final getAction()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "TV;TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/GenericBinding;->action:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public getData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/GenericBinding;->data:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected onDataChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/GenericBinding;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/GenericBinding;->action:Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
