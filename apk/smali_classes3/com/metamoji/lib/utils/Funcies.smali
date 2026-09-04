.class public abstract Lcom/metamoji/lib/utils/Funcies;
.super Ljava/lang/Object;
.source "Funcies.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/IFuncy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/Funcies$NamedFunc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/metamoji/lib/utils/IFuncy<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u0001!B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001e\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002J\u000e\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0003J%\u0010\u0016\u001a\u00020\u00032\u0016\u0010\u0017\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00140\u0018\"\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0002\u0010\u0019J\u0012\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0014H\u0016J7\u0010\u001d\u001a\u00020\u00032\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001b0\u001f2\u0016\u0010\u0017\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00140\u0018\"\u0004\u0018\u00010\u0014\u00a2\u0006\u0002\u0010 R*\u0010\u0006\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00080\u0007j\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0008`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\""
    }
    d2 = {
        "Lcom/metamoji/lib/utils/Funcies;",
        "R",
        "Lcom/metamoji/lib/utils/IFuncy;",
        "",
        "<init>",
        "()V",
        "mArray",
        "Ljava/util/ArrayList;",
        "Lcom/metamoji/lib/utils/Funcies$NamedFunc;",
        "Lkotlin/collections/ArrayList;",
        "size",
        "",
        "getSize",
        "()I",
        "add",
        "name",
        "",
        "funcy",
        "remove",
        "f",
        "",
        "clear",
        "invoke_",
        "args",
        "",
        "([Ljava/lang/Object;)V",
        "compare",
        "",
        "other",
        "invokeWithPredicate_",
        "predicate",
        "Lkotlin/Function1;",
        "(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V",
        "NamedFunc",
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
.field private final mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/lib/utils/Funcies$NamedFunc<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/lib/utils/Funcies;->mArray:Ljava/util/ArrayList;

    return-void
.end method

.method static final remove$lambda$0(Ljava/lang/Object;Lcom/metamoji/lib/utils/Funcies$NamedFunc;)Z
    .locals 1

    const-string v0, "nf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1}, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static final remove$lambda$1(Ljava/lang/Object;Lcom/metamoji/lib/utils/Funcies$NamedFunc;)Z
    .locals 1

    const-string v0, "nf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1}, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->getFuncy()Lcom/metamoji/lib/utils/IFuncy;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/metamoji/lib/utils/IFuncy;->compare(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final add(Ljava/lang/String;Lcom/metamoji/lib/utils/IFuncy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/lib/utils/IFuncy<",
            "TR;>;)V"
        }
    .end annotation

    const-string v0, "funcy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/metamoji/lib/utils/Funcies;->mArray:Ljava/util/ArrayList;

    new-instance v1, Lcom/metamoji/lib/utils/Funcies$NamedFunc;

    invoke-direct {v1, p1, p2}, Lcom/metamoji/lib/utils/Funcies$NamedFunc;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/IFuncy;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clear()V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/metamoji/lib/utils/Funcies;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public compare(Ljava/lang/Object;)Z
    .locals 1

    .line 346
    instance-of v0, p1, Lcom/metamoji/lib/utils/Funcies;

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getSize()I
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/metamoji/lib/utils/Funcies;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final varargs invokeWithPredicate_(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TR;",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/metamoji/lib/utils/Funcies;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/metamoji/lib/utils/Funcies$NamedFunc;

    .line 351
    invoke-virtual {v1}, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->getFuncy()Lcom/metamoji/lib/utils/IFuncy;

    move-result-object v1

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/metamoji/lib/utils/IFuncy;->invoke_([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return-void
.end method

.method public bridge synthetic invoke_([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 314
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/Funcies;->invoke_([Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public varargs invoke_([Ljava/lang/Object;)V
    .locals 3

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/metamoji/lib/utils/Funcies;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/metamoji/lib/utils/Funcies$NamedFunc;

    .line 341
    invoke-virtual {v1}, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->getFuncy()Lcom/metamoji/lib/utils/IFuncy;

    move-result-object v1

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/metamoji/lib/utils/IFuncy;->invoke_([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final remove(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    instance-of v0, p1, Ljava/lang/String;

    .line 331
    iget-object v1, p0, Lcom/metamoji/lib/utils/Funcies;->mArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 329
    check-cast v1, Ljava/util/List;

    new-instance v0, Lcom/metamoji/lib/utils/Funcies$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/metamoji/lib/utils/Funcies$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    return-void

    .line 331
    :cond_0
    check-cast v1, Ljava/util/List;

    new-instance v0, Lcom/metamoji/lib/utils/Funcies$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/metamoji/lib/utils/Funcies$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    return-void
.end method
