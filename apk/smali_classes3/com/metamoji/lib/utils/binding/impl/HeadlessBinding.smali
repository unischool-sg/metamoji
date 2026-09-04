.class public Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;
.super Ljava/lang/Object;
.source "HeadlessBinding.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/binding/IBinding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/metamoji/lib/utils/binding/IBinding;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u001c*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\u001cB/\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0018\u0008\u0002\u0010\u0005\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001e\u0010\u0013\u001a\u00020\u00072\u0016\u0010\u0005\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006J\u0008\u0010\u0018\u001a\u00020\u0007H\u0016J\u000e\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001bR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u000e\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0014\u001a\u00020\u0015X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;",
        "T",
        "Lcom/metamoji/lib/utils/binding/IBinding;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "callback",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V",
        "getData",
        "()Landroidx/lifecycle/LiveData;",
        "observed",
        "Lcom/metamoji/lib/utils/Disposer;",
        "onValueChanged",
        "getOnValueChanged",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnValueChanged",
        "(Lkotlin/jvm/functions/Function1;)V",
        "setCallback",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "getMode",
        "()Lcom/metamoji/lib/utils/binding/BindingMode;",
        "dispose",
        "connect",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding$Companion;


# instance fields
.field private final data:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mode:Lcom/metamoji/lib/utils/binding/BindingMode;

.field private final observed:Lcom/metamoji/lib/utils/Disposer;

.field private onValueChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;->data:Landroidx/lifecycle/LiveData;

    .line 16
    new-instance p1, Lcom/metamoji/lib/utils/Disposer;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/Disposer;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;->observed:Lcom/metamoji/lib/utils/Disposer;

    .line 17
    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;->onValueChanged:Lkotlin/jvm/functions/Function1;

    .line 23
    sget-object p1, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;->mode:Lcom/metamoji/lib/utils/binding/BindingMode;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;-><init>(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static final connect$lambda$0(Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;->onValueChanged:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final connect(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;->observed:Lcom/metamoji/lib/utils/Disposer;

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;->data:Landroidx/lifecycle/LiveData;

    new-instance v2, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;)V

    invoke-static {v1, p1, v2}, Lcom/metamoji/lib/utils/DisposableObserverKt;->disposableObserve(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposableEx;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/IDisposable;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/Disposer;->plus(Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;->observed:Lcom/metamoji/lib/utils/Disposer;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/Disposer;->dispose()V

    return-void
.end method

.method public final getData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;->data:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getMode()Lcom/metamoji/lib/utils/binding/BindingMode;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;->mode:Lcom/metamoji/lib/utils/binding/BindingMode;

    return-object v0
.end method

.method protected final getOnValueChanged()Lkotlin/jvm/functions/Function1;
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

    .line 17
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;->onValueChanged:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final setCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;->onValueChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method protected final setOnValueChanged(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/HeadlessBinding;->onValueChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method
