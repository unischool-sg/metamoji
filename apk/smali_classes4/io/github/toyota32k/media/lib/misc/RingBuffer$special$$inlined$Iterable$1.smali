.class public final Lio/github/toyota32k/media/lib/misc/RingBuffer$special$$inlined$Iterable$1;
.super Ljava/lang/Object;
.source "Iterables.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/toyota32k/media/lib/misc/RingBuffer;->getIterable()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIterables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iterables.kt\nkotlin/collections/CollectionsKt__IterablesKt$Iterable$1\n+ 2 RingBuffer.kt\nio/github/toyota32k/media/lib/misc/RingBuffer\n*L\n1#1,70:1\n41#2:71\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0010\u001c\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/collections/CollectionsKt__IterablesKt$Iterable$1",
        "",
        "iterator",
        "",
        "kotlin-stdlib"
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
.field final synthetic this$0:Lio/github/toyota32k/media/lib/misc/RingBuffer;


# direct methods
.method public constructor <init>(Lio/github/toyota32k/media/lib/misc/RingBuffer;)V
    .locals 0

    iput-object p1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer$special$$inlined$Iterable$1;->this$0:Lio/github/toyota32k/media/lib/misc/RingBuffer;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 71
    new-instance v0, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;

    iget-object v1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer$special$$inlined$Iterable$1;->this$0:Lio/github/toyota32k/media/lib/misc/RingBuffer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;-><init>(Lio/github/toyota32k/media/lib/misc/RingBuffer;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->iterator(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
