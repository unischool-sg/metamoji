.class public final Lio/github/toyota32k/utils/lifecycle/Listeners;
.super Ljava/lang/Object;
.source "Listeners.kt"

# interfaces
.implements Lio/github/toyota32k/utils/IDisposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/utils/lifecycle/Listeners$IListener;,
        Lio/github/toyota32k/utils/lifecycle/Listeners$IndependentInvoker;,
        Lio/github/toyota32k/utils/lifecycle/Listeners$OwneredInvoker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/github/toyota32k/utils/IDisposable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListeners.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Listeners.kt\nio/github/toyota32k/utils/lifecycle/Listeners\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,182:1\n1915#2,2:183\n1915#2,2:185\n*S KotlinDebug\n*F\n+ 1 Listeners.kt\nio/github/toyota32k/utils/lifecycle/Listeners\n*L\n137#1:183,2\n146#1:185,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0003 !\"B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u0010\u001a\u00020\u0011H\u0017J$\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00110\u0016H\u0007J\u001e\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0018H\u0007J\u001c\u0010\u0019\u001a\u00020\u00022\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00110\u0016H\u0007J\u0016\u0010\u0019\u001a\u00020\u00022\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0018H\u0007J\u0010\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u0002H\u0007J\u0008\u0010\u001c\u001a\u00020\u0011H\u0007J\u0015\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00028\u0000H\u0007\u00a2\u0006\u0002\u0010\u001fR\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00070\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006#"
    }
    d2 = {
        "Lio/github/toyota32k/utils/lifecycle/Listeners;",
        "T",
        "Lio/github/toyota32k/utils/IDisposable;",
        "<init>",
        "()V",
        "functions",
        "",
        "Lio/github/toyota32k/utils/lifecycle/ListenerKey;",
        "tobeDeleted",
        "",
        "busy",
        "",
        "count",
        "",
        "getCount",
        "()I",
        "dispose",
        "",
        "add",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "fn",
        "Lkotlin/Function1;",
        "listener",
        "Lio/github/toyota32k/utils/lifecycle/Listeners$IListener;",
        "addForever",
        "remove",
        "key",
        "clear",
        "invoke",
        "v",
        "(Ljava/lang/Object;)V",
        "IListener",
        "IndependentInvoker",
        "OwneredInvoker",
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
.field private busy:Z

.field private final functions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/toyota32k/utils/lifecycle/ListenerKey<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final tobeDeleted:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/github/toyota32k/utils/lifecycle/ListenerKey<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->functions:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->tobeDeleted:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getBusy$p(Lio/github/toyota32k/utils/lifecycle/Listeners;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->busy:Z

    return p0
.end method

.method public static final synthetic access$getFunctions$p(Lio/github/toyota32k/utils/lifecycle/Listeners;)Ljava/util/List;
    .locals 0

    .line 14
    iget-object p0, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->functions:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getTobeDeleted$p(Lio/github/toyota32k/utils/lifecycle/Listeners;)Ljava/util/Set;
    .locals 0

    .line 14
    iget-object p0, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->tobeDeleted:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final add(Landroidx/lifecycle/LifecycleOwner;Lio/github/toyota32k/utils/lifecycle/Listeners$IListener;)Lio/github/toyota32k/utils/IDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lio/github/toyota32k/utils/lifecycle/Listeners$IListener<",
            "TT;>;)",
            "Lio/github/toyota32k/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lio/github/toyota32k/utils/lifecycle/Listeners$add$2;

    invoke-direct {v0, p2}, Lio/github/toyota32k/utils/lifecycle/Listeners$add$2;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/IDisposable;

    move-result-object p1

    return-object p1
.end method

.method public final add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/IDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/github/toyota32k/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lio/github/toyota32k/utils/lifecycle/Listeners$OwneredInvoker;

    invoke-direct {v0, p0, p1, p2}, Lio/github/toyota32k/utils/lifecycle/Listeners$OwneredInvoker;-><init>(Lio/github/toyota32k/utils/lifecycle/Listeners;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 93
    iget-object p1, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->functions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    check-cast v0, Lio/github/toyota32k/utils/IDisposable;

    return-object v0
.end method

.method public final addForever(Lio/github/toyota32k/utils/lifecycle/Listeners$IListener;)Lio/github/toyota32k/utils/IDisposable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/toyota32k/utils/lifecycle/Listeners$IListener<",
            "TT;>;)",
            "Lio/github/toyota32k/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lio/github/toyota32k/utils/lifecycle/Listeners$IndependentInvoker;

    new-instance v1, Lio/github/toyota32k/utils/lifecycle/Listeners$addForever$2;

    invoke-direct {v1, p1}, Lio/github/toyota32k/utils/lifecycle/Listeners$addForever$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p0, v1}, Lio/github/toyota32k/utils/lifecycle/Listeners$IndependentInvoker;-><init>(Lio/github/toyota32k/utils/lifecycle/Listeners;Lkotlin/jvm/functions/Function1;)V

    .line 112
    iget-object p1, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->functions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    check-cast v0, Lio/github/toyota32k/utils/IDisposable;

    return-object v0
.end method

.method public final addForever(Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/IDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/github/toyota32k/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lio/github/toyota32k/utils/lifecycle/Listeners$IndependentInvoker;

    invoke-direct {v0, p0, p1}, Lio/github/toyota32k/utils/lifecycle/Listeners$IndependentInvoker;-><init>(Lio/github/toyota32k/utils/lifecycle/Listeners;Lkotlin/jvm/functions/Function1;)V

    .line 105
    iget-object p1, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->functions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    check-cast v0, Lio/github/toyota32k/utils/IDisposable;

    return-object v0
.end method

.method public final clear()V
    .locals 2

    .line 123
    iget-boolean v0, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->busy:Z

    if-nez v0, :cond_1

    .line 124
    :goto_0
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->functions:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->functions:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/toyota32k/utils/lifecycle/ListenerKey;

    invoke-interface {v0}, Lio/github/toyota32k/utils/lifecycle/ListenerKey;->dispose()V

    goto :goto_0

    :cond_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->tobeDeleted:Ljava/util/Set;

    iget-object v1, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->functions:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public dispose()V
    .locals 0

    .line 26
    invoke-virtual {p0}, Lio/github/toyota32k/utils/lifecycle/Listeners;->clear()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 22
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->functions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->busy:Z

    .line 137
    :try_start_0
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->functions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 183
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/toyota32k/utils/lifecycle/ListenerKey;

    .line 138
    invoke-interface {v1, p1}, Lio/github/toyota32k/utils/lifecycle/ListenerKey;->invoke(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 141
    sget-object v0, Lio/github/toyota32k/utils/UtLib;->INSTANCE:Lio/github/toyota32k/utils/UtLib;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLib;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lio/github/toyota32k/logger/UtLog;->stackTrace$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 143
    iput-boolean p1, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->busy:Z

    .line 145
    iget-object p1, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->tobeDeleted:Ljava/util/Set;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 146
    iget-object p1, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->tobeDeleted:Ljava/util/Set;

    check-cast p1, Ljava/lang/Iterable;

    .line 185
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/toyota32k/utils/lifecycle/ListenerKey;

    .line 147
    invoke-interface {v0}, Lio/github/toyota32k/utils/lifecycle/ListenerKey;->dispose()V

    goto :goto_1

    .line 149
    :cond_1
    iget-object p1, p0, Lio/github/toyota32k/utils/lifecycle/Listeners;->tobeDeleted:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_2
    return-void
.end method

.method public final remove(Lio/github/toyota32k/utils/IDisposable;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-interface {p1}, Lio/github/toyota32k/utils/IDisposable;->dispose()V

    return-void
.end method
