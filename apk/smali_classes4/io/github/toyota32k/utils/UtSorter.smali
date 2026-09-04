.class public final Lio/github/toyota32k/utils/UtSorter;
.super Ljava/lang/Object;
.source "UtSorter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/utils/UtSorter$ActionOnDuplicate;,
        Lio/github/toyota32k/utils/UtSorter$Companion;,
        Lio/github/toyota32k/utils/UtSorter$Position;,
        Lio/github/toyota32k/utils/UtSorter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 $*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0003\"#$B5\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0008j\u0008\u0012\u0004\u0012\u00028\u0000`\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0013\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0017J\u001b\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0019\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u001aJ\u0013\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001bJ\u0014\u0010\u001c\u001a\u00020\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001fJ\u0013\u0010 \u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0017J\u0014\u0010 \u001a\u00020!2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001fR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR!\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0008j\u0008\u0012\u0004\u0012\u00028\u0000`\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lio/github/toyota32k/utils/UtSorter;",
        "T",
        "",
        "list",
        "",
        "actionOnDuplicate",
        "Lio/github/toyota32k/utils/UtSorter$ActionOnDuplicate;",
        "comparator",
        "Ljava/util/Comparator;",
        "Lkotlin/Comparator;",
        "<init>",
        "(Ljava/util/List;Lio/github/toyota32k/utils/UtSorter$ActionOnDuplicate;Ljava/util/Comparator;)V",
        "getList",
        "()Ljava/util/List;",
        "getActionOnDuplicate",
        "()Lio/github/toyota32k/utils/UtSorter$ActionOnDuplicate;",
        "getComparator",
        "()Ljava/util/Comparator;",
        "pos",
        "Lio/github/toyota32k/utils/UtSorter$Position;",
        "find",
        "",
        "element",
        "(Ljava/lang/Object;)I",
        "findPosition",
        "position",
        "(Ljava/lang/Object;Lio/github/toyota32k/utils/UtSorter$Position;)I",
        "(Ljava/lang/Object;)Lio/github/toyota32k/utils/UtSorter$Position;",
        "replace",
        "",
        "elements",
        "",
        "add",
        "",
        "ActionOnDuplicate",
        "Position",
        "Companion",
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


# static fields
.field public static final Companion:Lio/github/toyota32k/utils/UtSorter$Companion;


# instance fields
.field private final actionOnDuplicate:Lio/github/toyota32k/utils/UtSorter$ActionOnDuplicate;

.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pos:Lio/github/toyota32k/utils/UtSorter$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/toyota32k/utils/UtSorter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/utils/UtSorter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/utils/UtSorter;->Companion:Lio/github/toyota32k/utils/UtSorter$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lio/github/toyota32k/utils/UtSorter$ActionOnDuplicate;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lio/github/toyota32k/utils/UtSorter$ActionOnDuplicate;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionOnDuplicate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/UtSorter;->list:Ljava/util/List;

    iput-object p2, p0, Lio/github/toyota32k/utils/UtSorter;->actionOnDuplicate:Lio/github/toyota32k/utils/UtSorter$ActionOnDuplicate;

    iput-object p3, p0, Lio/github/toyota32k/utils/UtSorter;->comparator:Ljava/util/Comparator;

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 14
    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 18
    :cond_0
    new-instance p1, Lio/github/toyota32k/utils/UtSorter$Position;

    invoke-direct {p1}, Lio/github/toyota32k/utils/UtSorter$Position;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/UtSorter;->pos:Lio/github/toyota32k/utils/UtSorter$Position;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    sget-object v0, Lio/github/toyota32k/utils/UtSorter;->Companion:Lio/github/toyota32k/utils/UtSorter$Companion;

    iget-object v1, p0, Lio/github/toyota32k/utils/UtSorter;->list:Ljava/util/List;

    iget-object v2, p0, Lio/github/toyota32k/utils/UtSorter;->comparator:Ljava/util/Comparator;

    iget-object v3, p0, Lio/github/toyota32k/utils/UtSorter;->pos:Lio/github/toyota32k/utils/UtSorter$Position;

    invoke-virtual {v0, v1, v2, p1, v3}, Lio/github/toyota32k/utils/UtSorter$Companion;->find(Ljava/util/List;Ljava/util/Comparator;Ljava/lang/Object;Lio/github/toyota32k/utils/UtSorter$Position;)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 46
    iget-object v0, p0, Lio/github/toyota32k/utils/UtSorter;->actionOnDuplicate:Lio/github/toyota32k/utils/UtSorter$ActionOnDuplicate;

    sget-object v2, Lio/github/toyota32k/utils/UtSorter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtSorter$ActionOnDuplicate;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lio/github/toyota32k/utils/UtSorter;->list:Ljava/util/List;

    iget-object v1, p0, Lio/github/toyota32k/utils/UtSorter;->pos:Lio/github/toyota32k/utils/UtSorter$Position;

    invoke-virtual {v1}, Lio/github/toyota32k/utils/UtSorter$Position;->getHit()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object p1, p0, Lio/github/toyota32k/utils/UtSorter;->pos:Lio/github/toyota32k/utils/UtSorter$Position;

    invoke-virtual {p1}, Lio/github/toyota32k/utils/UtSorter$Position;->getHit()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    const/4 p1, -0x1

    return p1

    .line 56
    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lio/github/toyota32k/utils/UtSorter;->pos:Lio/github/toyota32k/utils/UtSorter$Position;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtSorter$Position;->getNext()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    iget-object v2, p0, Lio/github/toyota32k/utils/UtSorter;->list:Ljava/util/List;

    if-gez v0, :cond_3

    .line 57
    :try_start_2
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p1, p0, Lio/github/toyota32k/utils/UtSorter;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    goto :goto_1

    .line 60
    :cond_3
    iget-object v0, p0, Lio/github/toyota32k/utils/UtSorter;->pos:Lio/github/toyota32k/utils/UtSorter$Position;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtSorter$Position;->getNext()I

    move-result v0

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 61
    iget-object p1, p0, Lio/github/toyota32k/utils/UtSorter;->pos:Lio/github/toyota32k/utils/UtSorter$Position;

    invoke-virtual {p1}, Lio/github/toyota32k/utils/UtSorter$Position;->getNext()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    :goto_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final add(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lio/github/toyota32k/utils/UtSorter;->add(Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final find(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    sget-object v0, Lio/github/toyota32k/utils/UtSorter;->Companion:Lio/github/toyota32k/utils/UtSorter$Companion;

    iget-object v1, p0, Lio/github/toyota32k/utils/UtSorter;->list:Ljava/util/List;

    iget-object v2, p0, Lio/github/toyota32k/utils/UtSorter;->comparator:Ljava/util/Comparator;

    iget-object v3, p0, Lio/github/toyota32k/utils/UtSorter;->pos:Lio/github/toyota32k/utils/UtSorter$Position;

    invoke-virtual {v0, v1, v2, p1, v3}, Lio/github/toyota32k/utils/UtSorter$Companion;->find(Ljava/util/List;Ljava/util/Comparator;Ljava/lang/Object;Lio/github/toyota32k/utils/UtSorter$Position;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final findPosition(Ljava/lang/Object;Lio/github/toyota32k/utils/UtSorter$Position;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/github/toyota32k/utils/UtSorter$Position;",
            ")I"
        }
    .end annotation

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    sget-object v0, Lio/github/toyota32k/utils/UtSorter;->Companion:Lio/github/toyota32k/utils/UtSorter$Companion;

    iget-object v1, p0, Lio/github/toyota32k/utils/UtSorter;->list:Ljava/util/List;

    iget-object v2, p0, Lio/github/toyota32k/utils/UtSorter;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2, p1, p2}, Lio/github/toyota32k/utils/UtSorter$Companion;->find(Ljava/util/List;Ljava/util/Comparator;Ljava/lang/Object;Lio/github/toyota32k/utils/UtSorter$Position;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final findPosition(Ljava/lang/Object;)Lio/github/toyota32k/utils/UtSorter$Position;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/github/toyota32k/utils/UtSorter$Position;"
        }
    .end annotation

    .line 32
    new-instance v0, Lio/github/toyota32k/utils/UtSorter$Position;

    invoke-direct {v0}, Lio/github/toyota32k/utils/UtSorter$Position;-><init>()V

    .line 33
    invoke-virtual {p0, p1, v0}, Lio/github/toyota32k/utils/UtSorter;->findPosition(Ljava/lang/Object;Lio/github/toyota32k/utils/UtSorter$Position;)I

    return-object v0
.end method

.method public final getActionOnDuplicate()Lio/github/toyota32k/utils/UtSorter$ActionOnDuplicate;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/github/toyota32k/utils/UtSorter;->actionOnDuplicate:Lio/github/toyota32k/utils/UtSorter$ActionOnDuplicate;

    return-object v0
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lio/github/toyota32k/utils/UtSorter;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lio/github/toyota32k/utils/UtSorter;->list:Ljava/util/List;

    return-object v0
.end method

.method public final replace(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lio/github/toyota32k/utils/UtSorter;->comparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 39
    iget-object v0, p0, Lio/github/toyota32k/utils/UtSorter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    iget-object v0, p0, Lio/github/toyota32k/utils/UtSorter;->list:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
