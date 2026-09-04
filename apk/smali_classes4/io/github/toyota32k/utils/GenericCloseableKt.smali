.class public final Lio/github/toyota32k/utils/GenericCloseableKt;
.super Ljava/lang/Object;
.source "GenericCloseable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "asCloseable",
        "Ljava/io/Closeable;",
        "Lio/github/toyota32k/utils/IDisposable;",
        "libUtils_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$AoM3nu8ZzVrtmvwNI-Rxzunitsw(Lio/github/toyota32k/utils/IDisposable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lio/github/toyota32k/utils/GenericCloseableKt;->asCloseable$lambda$0$0(Lio/github/toyota32k/utils/IDisposable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final asCloseable(Lio/github/toyota32k/utils/IDisposable;)Ljava/io/Closeable;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lio/github/toyota32k/utils/GenericCloseable;->Companion:Lio/github/toyota32k/utils/GenericCloseable$Companion;

    new-instance v1, Lio/github/toyota32k/utils/GenericCloseableKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/github/toyota32k/utils/GenericCloseableKt$$ExternalSyntheticLambda0;-><init>(Lio/github/toyota32k/utils/IDisposable;)V

    invoke-virtual {v0, v1}, Lio/github/toyota32k/utils/GenericCloseable$Companion;->create(Lkotlin/jvm/functions/Function0;)Lio/github/toyota32k/utils/GenericCloseable;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    return-object p0
.end method

.method static final asCloseable$lambda$0(Lio/github/toyota32k/utils/IDisposable;)Lkotlin/jvm/functions/Function0;
    .locals 1

    .line 29
    new-instance v0, Lio/github/toyota32k/utils/GenericCloseableKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/github/toyota32k/utils/GenericCloseableKt$$ExternalSyntheticLambda1;-><init>(Lio/github/toyota32k/utils/IDisposable;)V

    return-object v0
.end method

.method private static final asCloseable$lambda$0$0(Lio/github/toyota32k/utils/IDisposable;)Lkotlin/Unit;
    .locals 0

    .line 29
    invoke-interface {p0}, Lio/github/toyota32k/utils/IDisposable;->dispose()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
