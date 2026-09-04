.class public Lio/github/toyota32k/utils/lifecycle/LifecycleReference;
.super Ljava/lang/Object;
.source "LifecycleReference.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLifecycleReference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LifecycleReference.kt\nio/github/toyota32k/utils/lifecycle/LifecycleReference\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n1#2:19\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B1\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0016\u0008\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0006\u0010\u0013\u001a\u00020\u0008R\u001f\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR$\u0010\r\u001a\u0004\u0018\u00018\u00002\u0008\u0010\r\u001a\u0004\u0018\u00018\u0000@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lio/github/toyota32k/utils/lifecycle/LifecycleReference;",
        "T",
        "",
        "v",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onDestroyed",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V",
        "getOnDestroyed",
        "()Lkotlin/jvm/functions/Function1;",
        "value",
        "getValue",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "holder",
        "Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;",
        "reset",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final holder:Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;

.field private final onDestroyed:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleReference;->onDestroyed:Lkotlin/jvm/functions/Function1;

    .line 6
    iput-object p1, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleReference;->value:Ljava/lang/Object;

    .line 8
    new-instance p1, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;

    new-instance p3, Lio/github/toyota32k/utils/lifecycle/LifecycleReference$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lio/github/toyota32k/utils/lifecycle/LifecycleReference$$ExternalSyntheticLambda0;-><init>(Lio/github/toyota32k/utils/lifecycle/LifecycleReference;)V

    invoke-direct {p1, p2, p3}, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;-><init>(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleReference;->holder:Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/github/toyota32k/utils/lifecycle/LifecycleReference;-><init>(Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static final holder$lambda$0(Lio/github/toyota32k/utils/lifecycle/LifecycleReference;)Lkotlin/Unit;
    .locals 2

    .line 9
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleReference;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleReference;->onDestroyed:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleReference;->value:Ljava/lang/Object;

    .line 11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getOnDestroyed()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleReference;->onDestroyed:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleReference;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final reset()V
    .locals 1

    .line 13
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleReference;->holder:Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->dispose()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleReference;->value:Ljava/lang/Object;

    return-void
.end method
