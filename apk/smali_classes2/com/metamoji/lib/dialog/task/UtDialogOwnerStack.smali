.class public final Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;
.super Ljava/lang/Object;
.source "UtDialogOwnerStack.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtDialogOwnerStack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtDialogOwnerStack.kt\ncom/metamoji/lib/dialog/task/UtDialogOwnerStack\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,72:1\n1#2:73\n56#3:74\n59#3:78\n56#3:79\n59#3:83\n56#3:84\n59#3:88\n46#4:75\n51#4:77\n46#4:80\n51#4:82\n46#4:85\n51#4:87\n105#5:76\n105#5:81\n105#5:86\n*S KotlinDebug\n*F\n+ 1 UtDialogOwnerStack.kt\ncom/metamoji/lib/dialog/task/UtDialogOwnerStack\n*L\n50#1:74\n50#1:78\n54#1:79\n54#1:83\n61#1:84\n61#1:88\n50#1:75\n50#1:77\n54#1:80\n54#1:82\n61#1:85\n61#1:87\n50#1:76\n54#1:81\n61#1:86\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u001cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u000e\u0010\u000e\u001a\u0008\u0018\u00010\u0006R\u00020\u0000H\u0003J\u000e\u0010\u000f\u001a\u00020\u000cH\u0096@\u00a2\u0006\u0002\u0010\u0010J\u001a\u0010\u0011\u001a\u00020\u000c2\n\u0010\u0012\u001a\u0006\u0012\u0002\u0008\u00030\u0013H\u0096@\u00a2\u0006\u0002\u0010\u0014J\"\u0010\u0015\u001a\u00020\u000c2\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u0017H\u0096@\u00a2\u0006\u0002\u0010\u001aJ\n\u0010\u001b\u001a\u0004\u0018\u00010\u000cH\u0017R\u0018\u0010\u0004\u001a\u000c\u0012\u0008\u0012\u00060\u0006R\u00020\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0018\u00010\u0006R\u00020\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;",
        "Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;",
        "<init>",
        "()V",
        "list",
        "",
        "Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;",
        "ownerFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "register",
        "",
        "owner",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;",
        "unregister",
        "latest",
        "getOwner",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getOwnerOf",
        "clazz",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getOwnerBy",
        "filter",
        "Lkotlin/Function1;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getOwnerOrNull",
        "UtOwner",
        "dialog"
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
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;",
            ">;"
        }
    .end annotation
.end field

.field private final ownerFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->list:Ljava/util/List;

    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->ownerFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method public static final synthetic access$getList$p(Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;)Ljava/util/List;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->list:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getOwnerFlow$p(Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->ownerFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$latest(Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;)Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->latest()Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;

    move-result-object p0

    return-object p0
.end method

.method private final latest()Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;
    .locals 2

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->list:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;

    .line 41
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;->getAsDialogOwner()Lcom/metamoji/lib/dialog/UtDialogOwner;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v0

    .line 44
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;->dispose()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getOwner(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->ownerFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 76
    new-instance v1, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$getOwner$$inlined$mapNotNull$1;

    invoke-direct {v1, v0}, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$getOwner$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 50
    invoke-static {v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOwnerBy(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->ownerFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 86
    new-instance v1, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$getOwnerBy$$inlined$mapNotNull$1;

    invoke-direct {v1, v0, p1}, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$getOwnerBy$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 64
    invoke-static {v1, p2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOwnerOf(Ljava/lang/Class;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->ownerFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 81
    new-instance v1, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$getOwnerOf$$inlined$mapNotNull$1;

    invoke-direct {v1, v0, p1}, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$getOwnerOf$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Class;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 57
    invoke-static {v1, p2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOwnerOrNull()Lcom/metamoji/lib/dialog/UtDialogOwner;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->ownerFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;->getAsDialogOwner()Lcom/metamoji/lib/dialog/UtDialogOwner;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final register(Lcom/metamoji/lib/dialog/UtDialogOwner;)V
    .locals 5

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;-><init>(Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;Landroidx/lifecycle/LifecycleOwner;)V

    .line 26
    iget-object v1, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->list:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;

    invoke-virtual {v3}, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 27
    iget-object p1, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->list:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->ownerFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final unregister(Lcom/metamoji/lib/dialog/UtDialogOwner;)V
    .locals 4

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->list:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack$UtOwner;->dispose()V

    :cond_2
    return-void
.end method
