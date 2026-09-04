.class public final Lio/github/toyota32k/media/lib/misc/RingBuffer;
.super Ljava/lang/Object;
.source "RingBuffer.kt"


# annotations
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
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u001c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0013\u0010\u0018\u001a\u00028\u00002\u0006\u0010\u0019\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001eJ\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00028\u00000 R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0007R\u0011\u0010\u000b\u001a\u00028\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0013j\u0008\u0012\u0004\u0012\u00028\u0000`\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0016\u001a\u00028\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\r\u00a8\u0006!"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/misc/RingBuffer;",
        "T",
        "",
        "capacity",
        "",
        "(I)V",
        "getCapacity",
        "()I",
        "<set-?>",
        "count",
        "getCount",
        "head",
        "getHead",
        "()Ljava/lang/Object;",
        "iterable",
        "",
        "getIterable",
        "()Ljava/lang/Iterable;",
        "list",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "pos",
        "tail",
        "getTail",
        "get",
        "i",
        "(I)Ljava/lang/Object;",
        "put",
        "",
        "v",
        "(Ljava/lang/Object;)V",
        "toList",
        "",
        "libMedia_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final capacity:I

.field private count:I

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private pos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->capacity:I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 26
    iget v0, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->count:I

    if-le v0, p1, :cond_2

    .line 27
    iget v1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->capacity:I

    if-ge v0, v1, :cond_0

    .line 28
    iget-object v0, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 30
    :cond_0
    iget v1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->pos:I

    add-int v2, v1, p1

    if-ge v2, v0, :cond_1

    add-int/2addr v1, p1

    goto :goto_0

    :cond_1
    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    .line 35
    :goto_0
    iget-object p1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 26
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "out of range at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->count:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCapacity()I
    .locals 1

    .line 5
    iget v0, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->capacity:I

    return v0
.end method

.method public final getCount()I
    .locals 1

    .line 8
    iget v0, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->count:I

    return v0
.end method

.method public final getHead()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lio/github/toyota32k/media/lib/misc/RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getIterable()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 40
    new-instance v0, Lio/github/toyota32k/media/lib/misc/RingBuffer$special$$inlined$Iterable$1;

    invoke-direct {v0, p0}, Lio/github/toyota32k/media/lib/misc/RingBuffer$special$$inlined$Iterable$1;-><init>(Lio/github/toyota32k/media/lib/misc/RingBuffer;)V

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public final getTail()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 52
    iget v0, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->count:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lio/github/toyota32k/media/lib/misc/RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 12
    iget v0, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->count:I

    iget v1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->capacity:I

    .line 17
    iget-object v2, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->list:Ljava/util/ArrayList;

    if-ge v0, v1, :cond_0

    .line 13
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget p1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->count:I

    .line 15
    iget p1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->pos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->pos:I

    goto :goto_0

    .line 17
    :cond_0
    iget v0, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->pos:I

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget p1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->pos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->pos:I

    .line 20
    :goto_0
    iget p1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->pos:I

    iget v0, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->capacity:I

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer;->pos:I

    :cond_1
    return-void
.end method

.method public final toList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/misc/RingBuffer;->getIterable()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
