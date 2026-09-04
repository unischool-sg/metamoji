.class public final Lcom/metamoji/cm/SharedReference;
.super Ljava/lang/Object;
.source "SharedCloseable.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/AutoCloseable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\u0018\u0000*\u000c\u0008\u0000\u0010\u0001*\u00060\u0002j\u0002`\u00032\u00020\u0004B!\u0008\u0017\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nB\u0011\u0008\u0016\u0012\u0006\u0010\u000b\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\t\u0010\u000cJ\u000b\u0010\u0011\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0012J\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/cm/SharedReference;",
        "T",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/AutoCloseable;",
        "Ljava/io/Closeable;",
        "shared",
        "Lcom/metamoji/cm/SharedCloseable;",
        "addref",
        "",
        "<init>",
        "(Lcom/metamoji/cm/SharedCloseable;Z)V",
        "data",
        "(Ljava/lang/AutoCloseable;)V",
        "_ref",
        "ref",
        "getRef",
        "()Lcom/metamoji/cm/SharedCloseable;",
        "get",
        "()Ljava/lang/AutoCloseable;",
        "newRef",
        "close",
        "",
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
.field private _ref:Lcom/metamoji/cm/SharedCloseable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/SharedCloseable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/cm/SharedCloseable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/SharedCloseable<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "shared"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/metamoji/cm/SharedReference;-><init>(Lcom/metamoji/cm/SharedCloseable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cm/SharedCloseable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/SharedCloseable<",
            "TT;>;Z)V"
        }
    .end annotation

    const-string v0, "shared"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/metamoji/cm/SharedReference;->_ref:Lcom/metamoji/cm/SharedCloseable;

    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/metamoji/cm/SharedCloseable;->addRef()V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/metamoji/cm/SharedCloseable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 46
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/cm/SharedReference;-><init>(Lcom/metamoji/cm/SharedCloseable;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/AutoCloseable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/metamoji/cm/SharedCloseable;

    invoke-direct {v0, p1}, Lcom/metamoji/cm/SharedCloseable;-><init>(Ljava/lang/AutoCloseable;)V

    iput-object v0, p0, Lcom/metamoji/cm/SharedReference;->_ref:Lcom/metamoji/cm/SharedCloseable;

    return-void
.end method

.method private final getRef()Lcom/metamoji/cm/SharedCloseable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/cm/SharedCloseable<",
            "TT;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/metamoji/cm/SharedReference;->_ref:Lcom/metamoji/cm/SharedCloseable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/metamoji/cm/SharedReference;->_ref:Lcom/metamoji/cm/SharedCloseable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/cm/SharedCloseable;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/metamoji/cm/SharedReference;->_ref:Lcom/metamoji/cm/SharedCloseable;

    return-void
.end method

.method public final get()Ljava/lang/AutoCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/metamoji/cm/SharedReference;->getRef()Lcom/metamoji/cm/SharedCloseable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/SharedCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object v0

    return-object v0
.end method

.method public final newRef()Lcom/metamoji/cm/SharedReference;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/cm/SharedReference<",
            "TT;>;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/metamoji/cm/SharedReference;

    invoke-direct {p0}, Lcom/metamoji/cm/SharedReference;->getRef()Lcom/metamoji/cm/SharedCloseable;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/metamoji/cm/SharedReference;-><init>(Lcom/metamoji/cm/SharedCloseable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
