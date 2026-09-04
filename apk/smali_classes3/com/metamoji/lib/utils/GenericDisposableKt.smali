.class public final Lcom/metamoji/lib/utils/GenericDisposableKt;
.super Ljava/lang/Object;
.source "GenericDisposable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "asDisposable",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "Ljava/io/Closeable;",
        "utils"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final asDisposable(Ljava/io/Closeable;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/metamoji/lib/utils/GenericDisposable;->Companion:Lcom/metamoji/lib/utils/GenericDisposable$Companion;

    new-instance v1, Lcom/metamoji/lib/utils/GenericDisposableKt$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/utils/GenericDisposableKt$$ExternalSyntheticLambda1;-><init>(Ljava/io/Closeable;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/GenericDisposable$Companion;->create(Lkotlin/jvm/functions/Function0;)Lcom/metamoji/lib/utils/GenericDisposable;

    move-result-object p0

    check-cast p0, Lcom/metamoji/lib/utils/IDisposable;

    return-object p0
.end method

.method static final asDisposable$lambda$1(Ljava/io/Closeable;)Lkotlin/jvm/functions/Function0;
    .locals 1

    .line 29
    new-instance v0, Lcom/metamoji/lib/utils/GenericDisposableKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/utils/GenericDisposableKt$$ExternalSyntheticLambda0;-><init>(Ljava/io/Closeable;)V

    return-object v0
.end method

.method static final asDisposable$lambda$1$lambda$0(Ljava/io/Closeable;)Lkotlin/Unit;
    .locals 0

    .line 29
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
