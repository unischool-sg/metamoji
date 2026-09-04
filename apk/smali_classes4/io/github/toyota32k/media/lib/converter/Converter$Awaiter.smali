.class final Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;
.super Ljava/lang/Object;
.source "Converter.kt"

# interfaces
.implements Lio/github/toyota32k/media/lib/converter/IAwaiter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/media/lib/converter/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Awaiter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/github/toyota32k/media/lib/converter/IAwaiter<",
        "Lio/github/toyota32k/media/lib/converter/ConvertResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0011\u0010\u0006\u001a\u00020\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u000f\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u00c2\u0003J\u0019\u0010\u000b\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;",
        "Lio/github/toyota32k/media/lib/converter/IAwaiter;",
        "Lio/github/toyota32k/media/lib/converter/ConvertResult;",
        "deferred",
        "Lkotlinx/coroutines/Deferred;",
        "(Lkotlinx/coroutines/Deferred;)V",
        "await",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancel",
        "",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final deferred:Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/Deferred<",
            "Lio/github/toyota32k/media/lib/converter/ConvertResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Deferred;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Deferred<",
            "Lio/github/toyota32k/media/lib/converter/ConvertResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "deferred"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;->deferred:Lkotlinx/coroutines/Deferred;

    return-void
.end method

.method private final component1()Lkotlinx/coroutines/Deferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/Deferred<",
            "Lio/github/toyota32k/media/lib/converter/ConvertResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;->deferred:Lkotlinx/coroutines/Deferred;

    return-object v0
.end method

.method public static synthetic copy$default(Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;Lkotlinx/coroutines/Deferred;ILjava/lang/Object;)Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;->deferred:Lkotlinx/coroutines/Deferred;

    :cond_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;->copy(Lkotlinx/coroutines/Deferred;)Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/github/toyota32k/media/lib/converter/ConvertResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter$await$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter$await$1;

    iget v1, v0, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter$await$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter$await$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter$await$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter$await$1;

    invoke-direct {v0, p0, p1}, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter$await$1;-><init>(Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter$await$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 162
    iget v2, v0, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter$await$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 163
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 164
    :try_start_1
    iget-object p1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;->deferred:Lkotlinx/coroutines/Deferred;

    iput v3, v0, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter$await$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lio/github/toyota32k/media/lib/converter/ConvertResult;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 166
    :catch_0
    sget-object p1, Lio/github/toyota32k/media/lib/converter/ConvertResult;->Companion:Lio/github/toyota32k/media/lib/converter/ConvertResult$Companion;

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/converter/ConvertResult$Companion;->getCancelled()Lio/github/toyota32k/media/lib/converter/ConvertResult;

    move-result-object p1

    return-object p1
.end method

.method public cancel()V
    .locals 3

    .line 159
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;->deferred:Lkotlinx/coroutines/Deferred;

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final copy(Lkotlinx/coroutines/Deferred;)Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Deferred<",
            "Lio/github/toyota32k/media/lib/converter/ConvertResult;",
            ">;)",
            "Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;"
        }
    .end annotation

    const-string v0, "deferred"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;

    invoke-direct {v0, p1}, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;-><init>(Lkotlinx/coroutines/Deferred;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;

    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;->deferred:Lkotlinx/coroutines/Deferred;

    iget-object p1, p1, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;->deferred:Lkotlinx/coroutines/Deferred;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;->deferred:Lkotlinx/coroutines/Deferred;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Awaiter(deferred="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;->deferred:Lkotlinx/coroutines/Deferred;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
