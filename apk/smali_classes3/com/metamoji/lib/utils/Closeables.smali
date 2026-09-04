.class public final Lcom/metamoji/lib/utils/Closeables;
.super Ljava/lang/Object;
.source "LiveDataExt.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/metamoji/lib/utils/IDisposable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLiveDataExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiveDataExt.kt\ncom/metamoji/lib/utils/Closeables\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,247:1\n1915#2,2:248\n*S KotlinDebug\n*F\n+ 1 LiveDataExt.kt\ncom/metamoji/lib/utils/Closeables\n*L\n175#1:248,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0013\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0086\u0002J\u0013\u0010\n\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0086\u0002J\u0008\u0010\u000b\u001a\u00020\u0008H\u0016J\u0008\u0010\u000c\u001a\u00020\u0008H\u0016R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/Closeables;",
        "Ljava/io/Closeable;",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "<init>",
        "()V",
        "list",
        "",
        "plusAssign",
        "",
        "c",
        "minusAssign",
        "close",
        "dispose",
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
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/metamoji/lib/utils/Closeables;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/metamoji/lib/utils/Closeables;->list:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 248
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    .line 176
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/Closeables;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 0

    .line 182
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/Closeables;->close()V

    return-void
.end method

.method public final minusAssign(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/metamoji/lib/utils/Closeables;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    :cond_0
    return-void
.end method

.method public final plusAssign(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/metamoji/lib/utils/Closeables;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
