.class public Lcom/metamoji/cm/SharedCloseableBase;
.super Ljava/lang/Object;
.source "SharedCloseable.kt"

# interfaces
.implements Lcom/metamoji/cm/ISharedResource;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016R\u0016\u0010\u0007\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/metamoji/cm/SharedCloseableBase;",
        "Lcom/metamoji/cm/ISharedResource;",
        "closeable",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/AutoCloseable;",
        "<init>",
        "(Ljava/lang/AutoCloseable;)V",
        "_closeable",
        "_counter",
        "",
        "addRef",
        "",
        "release",
        "getCloseable",
        "()Ljava/lang/AutoCloseable;",
        "isClosed",
        "",
        "()Z",
        "cm"
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
.field private _closeable:Ljava/lang/AutoCloseable;

.field private _counter:I


# direct methods
.method public constructor <init>(Ljava/lang/AutoCloseable;)V
    .locals 1

    const-string v0, "closeable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/metamoji/cm/SharedCloseableBase;->_closeable:Ljava/lang/AutoCloseable;

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/metamoji/cm/SharedCloseableBase;->_counter:I

    return-void
.end method


# virtual methods
.method public addRef()V
    .locals 1

    .line 14
    iget v0, p0, Lcom/metamoji/cm/SharedCloseableBase;->_counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/cm/SharedCloseableBase;->_counter:I

    return-void
.end method

.method public final getCloseable()Ljava/lang/AutoCloseable;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/metamoji/cm/SharedCloseableBase;->_closeable:Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isClosed()Z
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/cm/SharedCloseableBase;->_closeable:Ljava/lang/AutoCloseable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 1

    .line 18
    iget v0, p0, Lcom/metamoji/cm/SharedCloseableBase;->_counter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/metamoji/cm/SharedCloseableBase;->_counter:I

    if-nez v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/metamoji/cm/SharedCloseableBase;->_closeable:Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/metamoji/cm/SharedCloseableBase$$ExternalSyntheticThrowIAE2;->m(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/metamoji/cm/SharedCloseableBase;->_closeable:Ljava/lang/AutoCloseable;

    :cond_1
    return-void
.end method
