.class public final Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;
.super Ljava/lang/Object;
.source "ChCompositeTransformer.kt"

# interfaces
.implements Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChCompositeTransformer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChCompositeTransformer.kt\ncom/metamoji/ch/internal/transformer/ChCompositeTransformer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,18:1\n1803#2,3:19\n1803#2,3:22\n*S KotlinDebug\n*F\n+ 1 ChCompositeTransformer.kt\ncom/metamoji/ch/internal/transformer/ChCompositeTransformer\n*L\n11#1:19,3\n15#1:22,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;",
        "Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;",
        "transformers",
        "",
        "<init>",
        "(Ljava/util/List;)V",
        "point",
        "Lcom/metamoji/ch/ChPoint;",
        "rect",
        "Lcom/metamoji/ch/ChRect;",
        "chart"
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
.field private final transformers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "transformers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->transformers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;
    .locals 2

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->transformers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    .line 11
    invoke-interface {v1, p1}, Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public rect(Lcom/metamoji/ch/ChRect;)Lcom/metamoji/ch/ChRect;
    .locals 2

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->transformers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    .line 15
    invoke-interface {v1, p1}, Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;->rect(Lcom/metamoji/ch/ChRect;)Lcom/metamoji/ch/ChRect;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method
