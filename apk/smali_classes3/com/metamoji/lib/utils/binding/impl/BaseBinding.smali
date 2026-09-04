.class public abstract Lcom/metamoji/lib/utils/binding/impl/BaseBinding;
.super Ljava/lang/Object;
.source "BaseBinding.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/binding/IBinding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/BaseBinding$Companion;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000 %*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001%B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0017\u0010!\u001a\u00020\u001e2\u0008\u0010\"\u001a\u0004\u0018\u00018\u0000H$\u00a2\u0006\u0002\u0010#J\u0008\u0010$\u001a\u00020\u001eH\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0018\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006&"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/BaseBinding;",
        "T",
        "Lcom/metamoji/lib/utils/binding/IBinding;",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "<init>",
        "(Lcom/metamoji/lib/utils/binding/BindingMode;)V",
        "getMode",
        "()Lcom/metamoji/lib/utils/binding/BindingMode;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "getData",
        "()Landroidx/lifecycle/LiveData;",
        "mutableData",
        "Landroidx/lifecycle/MutableLiveData;",
        "getMutableData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "view",
        "Landroid/view/View;",
        "getView",
        "()Landroid/view/View;",
        "setView",
        "(Landroid/view/View;)V",
        "observed",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "getObserved",
        "()Lcom/metamoji/lib/utils/IDisposable;",
        "setObserved",
        "(Lcom/metamoji/lib/utils/IDisposable;)V",
        "connect",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onDataChanged",
        "v",
        "(Ljava/lang/Object;)V",
        "dispose",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/BaseBinding$Companion;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final mode:Lcom/metamoji/lib/utils/binding/BindingMode;

.field private observed:Lcom/metamoji/lib/utils/IDisposable;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/BaseBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/BaseBinding$Companion;

    .line 57
    new-instance v2, Lcom/metamoji/lib/utils/UtLog;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const-string v3, "Binding"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/lib/utils/binding/BindingMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->mode:Lcom/metamoji/lib/utils/binding/BindingMode;

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 31
    sget-object v0, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method


# virtual methods
.method public connect(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->setView(Landroid/view/View;)V

    .line 41
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p2

    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWayToSource:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq p2, v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->getData()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/BaseBinding$connect$1;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding$connect$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, p1, v0}, Lcom/metamoji/lib/utils/DisposableObserverKt;->disposableObserve(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposableEx;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/IDisposable;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->observed:Lcom/metamoji/lib/utils/IDisposable;

    .line 44
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->getData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->onDataChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->setView(Landroid/view/View;)V

    .line 52
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->observed:Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    .line 53
    :cond_0
    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->observed:Lcom/metamoji/lib/utils/IDisposable;

    return-void
.end method

.method public abstract getData()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getMode()Lcom/metamoji/lib/utils/binding/BindingMode;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->mode:Lcom/metamoji/lib/utils/binding/BindingMode;

    return-object v0
.end method

.method public getMutableData()Landroidx/lifecycle/MutableLiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "TT;>;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->getData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    instance-of v1, v0, Landroidx/lifecycle/MutableLiveData;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getObserved()Lcom/metamoji/lib/utils/IDisposable;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->observed:Lcom/metamoji/lib/utils/IDisposable;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->view:Landroid/view/View;

    return-object v0
.end method

.method protected abstract onDataChanged(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected final setObserved(Lcom/metamoji/lib/utils/IDisposable;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->observed:Lcom/metamoji/lib/utils/IDisposable;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->view:Landroid/view/View;

    return-void
.end method
