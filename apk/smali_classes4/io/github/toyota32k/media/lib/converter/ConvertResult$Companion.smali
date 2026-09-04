.class public final Lio/github/toyota32k/media/lib/converter/ConvertResult$Companion;
.super Ljava/lang/Object;
.source "ConvertResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/media/lib/converter/ConvertResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0003\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bR\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/converter/ConvertResult$Companion;",
        "",
        "()V",
        "cancelled",
        "Lio/github/toyota32k/media/lib/converter/ConvertResult;",
        "getCancelled",
        "()Lio/github/toyota32k/media/lib/converter/ConvertResult;",
        "succeeded",
        "getSucceeded",
        "error",
        "exception",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/toyota32k/media/lib/converter/ConvertResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/Throwable;)Lio/github/toyota32k/media/lib/converter/ConvertResult;
    .locals 3

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/converter/ConvertResult$Companion;->getCancelled()Lio/github/toyota32k/media/lib/converter/ConvertResult;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lio/github/toyota32k/media/lib/converter/ConvertResult;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Lio/github/toyota32k/media/lib/converter/ConvertResult;-><init>(ZZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final getCancelled()Lio/github/toyota32k/media/lib/converter/ConvertResult;
    .locals 4

    .line 14
    new-instance v0, Lio/github/toyota32k/media/lib/converter/ConvertResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v2}, Lio/github/toyota32k/media/lib/converter/ConvertResult;-><init>(ZZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final getSucceeded()Lio/github/toyota32k/media/lib/converter/ConvertResult;
    .locals 1

    .line 12
    new-instance v0, Lio/github/toyota32k/media/lib/converter/ConvertResult;

    invoke-direct {v0}, Lio/github/toyota32k/media/lib/converter/ConvertResult;-><init>()V

    return-object v0
.end method
