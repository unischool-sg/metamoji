.class public interface abstract Lio/github/toyota32k/media/lib/utils/IUtVaLogger;
.super Ljava/lang/Object;
.source "Logger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/media/lib/utils/IUtVaLogger$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J-\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00072\u0016\u0010\n\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u000b\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u000cJ-\u0010\r\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00072\u0016\u0010\n\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u000b\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u000cJ-\u0010\u000e\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00072\u0016\u0010\n\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u000b\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u000cJ5\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00072\u0016\u0010\n\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u000b\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u0012J\u001c\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007H&J-\u0010\u0017\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00072\u0016\u0010\n\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u000b\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u000cJ-\u0010\u0018\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00072\u0016\u0010\n\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u000b\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/utils/IUtVaLogger;",
        "",
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


# virtual methods
.method public abstract assert(ZLjava/lang/String;)V
.end method

.method public varargs abstract debug(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract error(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract info(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract print(ILjava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V
.end method

.method public varargs abstract verbose(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract warn(Ljava/lang/String;[Ljava/lang/Object;)V
.end method
