.class public final Lio/github/toyota32k/media/lib/misc/CoroutineExtKt;
.super Ljava/lang/Object;
.source "CoroutineExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "check",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "libMedia_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final check(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "cancelled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
