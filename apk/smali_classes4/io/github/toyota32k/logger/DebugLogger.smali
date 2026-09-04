.class public final Lio/github/toyota32k/logger/DebugLogger;
.super Ljava/lang/Object;
.source "UtLoggerChain.kt"

# interfaces
.implements Lio/github/toyota32k/logger/IUtLogger;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\"\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\n0\u000f2\u0006\u0010\u0010\u001a\u00020\nH\u0002J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000cH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0004\u0010\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Lio/github/toyota32k/logger/DebugLogger;",
        "Lio/github/toyota32k/logger/IUtLogger;",
        "<init>",
        "()V",
        "isAndroid",
        "",
        "()Z",
        "isAndroid$delegate",
        "Lkotlin/Lazy;",
        "printToSystemOut",
        "",
        "tag",
        "",
        "s",
        "target",
        "Lkotlin/Function2;",
        "level",
        "writeLog",
        "",
        "msg",
        "libLogger_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/github/toyota32k/logger/DebugLogger;

.field private static final isAndroid$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/toyota32k/logger/DebugLogger;

    invoke-direct {v0}, Lio/github/toyota32k/logger/DebugLogger;-><init>()V

    sput-object v0, Lio/github/toyota32k/logger/DebugLogger;->INSTANCE:Lio/github/toyota32k/logger/DebugLogger;

    .line 221
    new-instance v0, Lio/github/toyota32k/logger/DebugLogger$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/github/toyota32k/logger/DebugLogger$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/github/toyota32k/logger/DebugLogger;->isAndroid$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$printToSystemOut(Lio/github/toyota32k/logger/DebugLogger;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 220
    invoke-direct {p0, p1, p2}, Lio/github/toyota32k/logger/DebugLogger;->printToSystemOut(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private final isAndroid()Z
    .locals 1

    .line 221
    sget-object v0, Lio/github/toyota32k/logger/DebugLogger;->isAndroid$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static final isAndroid_delegate$lambda$0()Z
    .locals 7

    .line 222
    const-string v0, "java.runtime.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "Android"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final printToSystemOut(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
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

    .line 230
    invoke-direct {p0}, Lio/github/toyota32k/logger/DebugLogger;->isAndroid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    new-instance p1, Lio/github/toyota32k/logger/DebugLogger$target$1;

    invoke-direct {p1, p0}, Lio/github/toyota32k/logger/DebugLogger$target$1;-><init>(Ljava/lang/Object;)V

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

    .line 238
    sget-object p1, Lio/github/toyota32k/logger/DebugLogger$target$6;->INSTANCE:Lio/github/toyota32k/logger/DebugLogger$target$6;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    return-object p1

    .line 235
    :cond_1
    sget-object p1, Lio/github/toyota32k/logger/DebugLogger$target$3;->INSTANCE:Lio/github/toyota32k/logger/DebugLogger$target$3;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    return-object p1

    .line 237
    :cond_2
    sget-object p1, Lio/github/toyota32k/logger/DebugLogger$target$5;->INSTANCE:Lio/github/toyota32k/logger/DebugLogger$target$5;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    return-object p1

    .line 236
    :cond_3
    sget-object p1, Lio/github/toyota32k/logger/DebugLogger$target$4;->INSTANCE:Lio/github/toyota32k/logger/DebugLogger$target$4;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    return-object p1

    .line 234
    :cond_4
    sget-object p1, Lio/github/toyota32k/logger/DebugLogger$target$2;->INSTANCE:Lio/github/toyota32k/logger/DebugLogger$target$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    return-object p1
.end method


# virtual methods
.method public writeLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0, p1}, Lio/github/toyota32k/logger/DebugLogger;->target(I)Lkotlin/jvm/functions/Function2;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
