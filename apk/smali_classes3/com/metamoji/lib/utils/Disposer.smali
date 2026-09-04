.class public Lcom/metamoji/lib/utils/Disposer;
.super Ljava/lang/Object;
.source "Disposer.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/IDisposableEx;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Disposer.kt\ncom/metamoji/lib/utils/Disposer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n1915#2,2:67\n*S KotlinDebug\n*F\n+ 1 Disposer.kt\ncom/metamoji/lib/utils/Disposer\n*L\n45#1:67,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0002J\u0011\u0010\u000c\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u001f\u0010\u0017\u001a\u00020\u00002\u0012\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000b0\u0018\"\u00020\u000b\u00a2\u0006\u0002\u0010\u0019J#\u0010\u001a\u001a\u00020\u00002\u0016\u0010\r\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u000b0\u0018\"\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u0019J\u0006\u0010!\u001a\u00020\u0016J\u0006\u0010\"\u001a\u00020\u0016R\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000eX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/Disposer;",
        "Lcom/metamoji/lib/utils/IDisposableEx;",
        "<init>",
        "()V",
        "value",
        "",
        "disposed",
        "getDisposed",
        "()Z",
        "plus",
        "disposable",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "minus",
        "disposables",
        "",
        "getDisposables",
        "()Ljava/util/List;",
        "count",
        "",
        "getCount",
        "()I",
        "dispose",
        "",
        "register",
        "",
        "([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;",
        "unregister",
        "clientData",
        "",
        "getClientData",
        "()Ljava/lang/Object;",
        "setClientData",
        "(Ljava/lang/Object;)V",
        "reset",
        "clean",
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
.field private clientData:Ljava/lang/Object;

.field private final disposables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/lib/utils/IDisposable;",
            ">;"
        }
    .end annotation
.end field

.field private disposed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/metamoji/lib/utils/Disposer;->disposables:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final clean()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/metamoji/lib/utils/Disposer;->disposables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 58
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/metamoji/lib/utils/IDisposableEx;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/metamoji/lib/utils/IDisposableEx;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    goto :goto_0

    .line 60
    :cond_2
    invoke-interface {v1}, Lcom/metamoji/lib/utils/IDisposableEx;->getDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/metamoji/lib/utils/Disposer;->disposed:Z

    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/Disposer;->reset()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/metamoji/lib/utils/Disposer;->disposed:Z

    :cond_0
    return-void
.end method

.method public final getClientData()Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/lib/utils/Disposer;->clientData:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/metamoji/lib/utils/Disposer;->disposables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getDisposables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/lib/utils/IDisposable;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/metamoji/lib/utils/Disposer;->disposables:Ljava/util/List;

    return-object v0
.end method

.method public final getDisposed()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/metamoji/lib/utils/Disposer;->disposed:Z

    return v0
.end method

.method public minus(Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;
    .locals 2

    const-string v0, "disposable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 11
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/Disposer;->unregister([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;
    .locals 2

    const-string v0, "disposable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/Disposer;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    move-result-object p1

    return-object p1
.end method

.method public final varargs register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;
    .locals 4

    const-string v0, "disposables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/metamoji/lib/utils/Disposer;->disposed:Z

    .line 26
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 27
    iget-object v3, p0, Lcom/metamoji/lib/utils/Disposer;->disposables:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final reset()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/metamoji/lib/utils/Disposer;->disposables:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 67
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lib/utils/IDisposable;

    .line 45
    invoke-interface {v1}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/Disposer;->disposables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/metamoji/lib/utils/Disposer;->disposed:Z

    .line 51
    iget-object v0, p0, Lcom/metamoji/lib/utils/Disposer;->clientData:Ljava/lang/Object;

    instance-of v1, v0, Lcom/metamoji/lib/utils/IDisposable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/metamoji/lib/utils/IDisposable;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 52
    :cond_2
    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    .line 53
    iput-object v2, p0, Lcom/metamoji/lib/utils/Disposer;->clientData:Ljava/lang/Object;

    return-void
.end method

.method public final setClientData(Ljava/lang/Object;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/metamoji/lib/utils/Disposer;->clientData:Ljava/lang/Object;

    return-void
.end method

.method public final varargs unregister([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;
    .locals 4

    const-string v0, "disposables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 34
    iget-object v3, p0, Lcom/metamoji/lib/utils/Disposer;->disposables:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    iget-object v3, p0, Lcom/metamoji/lib/utils/Disposer;->disposables:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    invoke-interface {v2}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
