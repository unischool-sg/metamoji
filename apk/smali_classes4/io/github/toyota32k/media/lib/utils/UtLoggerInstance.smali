.class public final Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;
.super Ljava/lang/Object;
.source "Logger.kt"

# interfaces
.implements Lio/github/toyota32k/media/lib/utils/IUtVaLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 $2\u00020\u0001:\u0001$B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003H\u0016J-\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00032\u0016\u0010\u0010\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00120\u0011\"\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0002\u0010\u0013J-\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00032\u0016\u0010\u0010\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00120\u0011\"\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0002\u0010\u0013J-\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00032\u0016\u0010\u0010\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00120\u0011\"\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0002\u0010\u0013J\u0018\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u0003H\u0002J5\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u00032\u0016\u0010\u0010\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00120\u0011\"\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u0018\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003H\u0002J\u001a\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u0016J\"\u0010 \u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00180!2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J-\u0010\"\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00032\u0016\u0010\u0010\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00120\u0011\"\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0002\u0010\u0013J-\u0010#\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00032\u0016\u0010\u0010\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00120\u0011\"\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0002\u0010\u0013R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0005\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;",
        "Lio/github/toyota32k/media/lib/utils/IUtVaLogger;",
        "tag",
        "",
        "(Ljava/lang/String;)V",
        "isAndroid",
        "",
        "()Z",
        "isAndroid$delegate",
        "Lkotlin/Lazy;",
        "assert",
        "",
        "chk",
        "msg",
        "debug",
        "s",
        "args",
        "",
        "",
        "(Ljava/lang/String;[Ljava/lang/Object;)V",
        "error",
        "info",
        "logExternal",
        "level",
        "",
        "print",
        "(ILjava/lang/String;[Ljava/lang/Object;)V",
        "printToSystemOut",
        "stackTrace",
        "e",
        "",
        "message",
        "target",
        "Lkotlin/Function2;",
        "verbose",
        "warn",
        "Companion",
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


# static fields
.field public static final Companion:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$Companion;

.field private static externalLogger:Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;


# instance fields
.field private final isAndroid$delegate:Lkotlin/Lazy;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->Companion:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->tag:Ljava/lang/String;

    .line 81
    sget-object p1, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$isAndroid$2;->INSTANCE:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$isAndroid$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->isAndroid$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getExternalLogger$cp()Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;
    .locals 1

    .line 28
    sget-object v0, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->externalLogger:Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;

    return-object v0
.end method

.method public static final synthetic access$printToSystemOut(Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->printToSystemOut(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$setExternalLogger$cp(Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;)V
    .locals 0

    .line 28
    sput-object p0, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->externalLogger:Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;

    return-void
.end method

.method public static final getExternalLogger$libMedia_release()Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;
    .locals 1

    sget-object v0, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->Companion:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$Companion;->getExternalLogger$libMedia_release()Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;

    move-result-object v0

    return-object v0
.end method

.method private final isAndroid()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->isAndroid$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final logExternal(ILjava/lang/String;)Z
    .locals 3

    .line 101
    sget-object v0, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->externalLogger:Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    .line 108
    invoke-interface {v0, p2}, Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;->verbose(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-interface {v0, p2}, Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    invoke-interface {v0, p2}, Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_3
    invoke-interface {v0, p2}, Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_4
    invoke-interface {v0, p2}, Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;->debug(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final printToSystemOut(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public static final setExternalLogger(Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->Companion:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$Companion;

    invoke-virtual {v0, p0}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$Companion;->setExternalLogger(Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;)V

    return-void
.end method

.method public static final setExternalLogger$libMedia_release(Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;)V
    .locals 1

    sget-object v0, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->Companion:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$Companion;

    invoke-virtual {v0, p0}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$Companion;->setExternalLogger$libMedia_release(Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;)V

    return-void
.end method

.method private final target(I)Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->isAndroid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    new-instance p1, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$target$1;

    invoke-direct {p1, p0}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$target$1;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    return-object p1

    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    .line 96
    sget-object p1, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$target$6;->INSTANCE:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$target$6;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    return-object p1

    .line 93
    :cond_1
    sget-object p1, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$target$3;->INSTANCE:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$target$3;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    return-object p1

    .line 95
    :cond_2
    sget-object p1, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$target$5;->INSTANCE:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$target$5;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    return-object p1

    .line 94
    :cond_3
    sget-object p1, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$target$4;->INSTANCE:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$target$4;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    return-object p1

    .line 92
    :cond_4
    sget-object p1, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$target$2;->INSTANCE:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$target$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    return-object p1
.end method


# virtual methods
.method public assert(ZLjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 61
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "assertion failed."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->print(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->print(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->print(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs print(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    array-length v0, p3

    if-lez v0, :cond_0

    .line 118
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "format(format, *args)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->logExternal(ILjava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 121
    invoke-direct {p0, p1}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->target(I)Lkotlin/jvm/functions/Function2;

    move-result-object p1

    iget-object p3, p0, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->tag:Ljava/lang/String;

    invoke-interface {p1, p3, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v0}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 70
    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v0}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :goto_1
    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->print(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->print(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->print(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
