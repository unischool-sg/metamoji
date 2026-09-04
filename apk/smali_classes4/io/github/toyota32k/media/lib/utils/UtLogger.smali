.class public final Lio/github/toyota32k/media/lib/utils/UtLogger;
.super Ljava/lang/Object;
.source "Logger.kt"

# interfaces
.implements Lio/github/toyota32k/media/lib/utils/IUtVaLogger;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096\u0001J.\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00082\u0016\u0010\u000b\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\r0\u000c\"\u0004\u0018\u00010\rH\u0096\u0001\u00a2\u0006\u0002\u0010\u000eJ.\u0010\u000f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00082\u0016\u0010\u000b\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\r0\u000c\"\u0004\u0018\u00010\rH\u0096\u0001\u00a2\u0006\u0002\u0010\u000eJ.\u0010\u0010\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00082\u0016\u0010\u000b\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\r0\u000c\"\u0004\u0018\u00010\rH\u0096\u0001\u00a2\u0006\u0002\u0010\u000eJ6\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u00082\u0016\u0010\u000b\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\r0\u000c\"\u0004\u0018\u00010\rH\u0096\u0001\u00a2\u0006\u0002\u0010\u0014J\u001d\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0008H\u0096\u0001J.\u0010\u0019\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00082\u0016\u0010\u000b\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\r0\u000c\"\u0004\u0018\u00010\rH\u0096\u0001\u00a2\u0006\u0002\u0010\u000eJ.\u0010\u001a\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00082\u0016\u0010\u000b\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\r0\u000c\"\u0004\u0018\u00010\rH\u0096\u0001\u00a2\u0006\u0002\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/utils/UtLogger;",
        "Lio/github/toyota32k/media/lib/utils/IUtVaLogger;",
        "()V",
        "assert",
        "",
        "chk",
        "",
        "msg",
        "",
        "debug",
        "s",
        "args",
        "",
        "",
        "(Ljava/lang/String;[Ljava/lang/Object;)V",
        "error",
        "info",
        "print",
        "level",
        "",
        "(ILjava/lang/String;[Ljava/lang/Object;)V",
        "stackTrace",
        "e",
        "",
        "message",
        "verbose",
        "warn",
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
.field public static final INSTANCE:Lio/github/toyota32k/media/lib/utils/UtLogger;


# instance fields
.field private final synthetic $$delegate_0:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/toyota32k/media/lib/utils/UtLogger;

    invoke-direct {v0}, Lio/github/toyota32k/media/lib/utils/UtLogger;-><init>()V

    sput-object v0, Lio/github/toyota32k/media/lib/utils/UtLogger;->INSTANCE:Lio/github/toyota32k/media/lib/utils/UtLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;

    const-string v1, "Default"

    invoke-direct {v0, v1}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/github/toyota32k/media/lib/utils/UtLogger;->$$delegate_0:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;

    return-void
.end method


# virtual methods
.method public assert(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/github/toyota32k/media/lib/utils/UtLogger;->$$delegate_0:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;

    invoke-virtual {v0, p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->assert(ZLjava/lang/String;)V

    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/github/toyota32k/media/lib/utils/UtLogger;->$$delegate_0:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;

    invoke-virtual {v0, p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/github/toyota32k/media/lib/utils/UtLogger;->$$delegate_0:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;

    invoke-virtual {v0, p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/github/toyota32k/media/lib/utils/UtLogger;->$$delegate_0:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;

    invoke-virtual {v0, p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs print(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/github/toyota32k/media/lib/utils/UtLogger;->$$delegate_0:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;

    invoke-virtual {v0, p1, p2, p3}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->print(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/github/toyota32k/media/lib/utils/UtLogger;->$$delegate_0:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;

    invoke-virtual {v0, p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/github/toyota32k/media/lib/utils/UtLogger;->$$delegate_0:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;

    invoke-virtual {v0, p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/github/toyota32k/media/lib/utils/UtLogger;->$$delegate_0:Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;

    invoke-virtual {v0, p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
