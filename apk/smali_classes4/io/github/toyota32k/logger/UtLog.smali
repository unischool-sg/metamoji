.class public Lio/github/toyota32k/logger/UtLog;
.super Ljava/lang/Object;
.source "UtLog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/logger/UtLog$Companion;,
        Lio/github/toyota32k/logger/UtLog$ScopeWatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtLog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtLog.kt\nio/github/toyota32k/logger/UtLog\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Chronos.kt\nio/github/toyota32k/logger/Chronos\n*L\n1#1,211:1\n202#1,4:224\n206#1:232\n208#1:235\n202#1,4:236\n206#1:244\n208#1:247\n202#1,4:248\n206#1:256\n208#1:259\n1137#2:212\n1138#2:216\n1740#3,3:213\n62#4,7:217\n62#4,4:228\n67#4,2:233\n62#4,4:240\n67#4,2:245\n62#4,4:252\n67#4,2:257\n*S KotlinDebug\n*F\n+ 1 UtLog.kt\nio/github/toyota32k/logger/UtLog\n*L\n-1#1:224,4\n-1#1:232\n-1#1:235\n-1#1:236,4\n-1#1:244\n-1#1:247\n-1#1:248,4\n-1#1:256\n-1#1:259\n48#1:212\n48#1:216\n50#1:213,3\n205#1:217,7\n-1#1:228,4\n-1#1:233,2\n-1#1:240,4\n-1#1:245,2\n-1#1:252,4\n-1#1:257,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 @2\u00020\u0001:\u0002@AB=\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0000\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nB;\u0008\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0000\u0012\n\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\r\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\u000eJ\u0010\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0003H\u0002J\u0008\u0010#\u001a\u00020$H\u0002J\u0010\u0010%\u001a\u00020\u00032\u0008\u0010&\u001a\u0004\u0018\u00010\u0003J\u0014\u0010\'\u001a\u00020(2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0003H\u0007J\u0016\u0010\'\u001a\u00020(2\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030+J\u001c\u0010\'\u001a\u00020(2\u0006\u0010,\u001a\u00020\u00072\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00030+J\u0014\u0010-\u001a\u00020(2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0003H\u0007J\u0014\u0010.\u001a\u00020(2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0003H\u0007J\u001c\u0010.\u001a\u00020(2\u0006\u0010/\u001a\u0002002\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0003H\u0007J\u0014\u00101\u001a\u00020(2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0003H\u0007J\u0014\u00102\u001a\u00020(2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0003H\u0007J\u0016\u00102\u001a\u00020(2\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030+J\u001c\u00102\u001a\u00020(2\u0006\u0010,\u001a\u00020\u00072\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00030+J\u001c\u00103\u001a\u00020(2\u0006\u0010/\u001a\u0002002\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0003H\u0007J$\u00103\u001a\u00020(2\u0006\u00104\u001a\u00020\u001a2\u0006\u0010/\u001a\u0002002\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0003H\u0007J\u001c\u00105\u001a\u00020(2\u0006\u00104\u001a\u00020\u001a2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0003H\u0007J\u001c\u00106\u001a\u00020(2\u0006\u00107\u001a\u00020\u00072\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0003H\u0007J\u001c\u00108\u001a\u00020(2\u0006\u00107\u001a\u00020\u00072\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0003H\u0007J\u001e\u00109\u001a\u00020:2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u00104\u001a\u00020\u001aH\u0007J;\u0010;\u001a\u0002H<\"\u0004\u0008\u0000\u0010<2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u00104\u001a\u00020\u001a2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u0002H<0+H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010=JC\u0010>\u001a\u0002H<\"\u0004\u0008\u0000\u0010<2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010)\u001a\u00020\u00032\u0008\u0008\u0002\u00104\u001a\u00020\u001a2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u0002H<0+H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010?R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0006\u001a\u00020\u0007X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0008\u001a\u00020\u0007X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010R\u0014\u0010\u000b\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0010R\u0014\u0010\u0019\u001a\u00020\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u001d\u001a\u00020\u001e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 \u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006B"
    }
    d2 = {
        "Lio/github/toyota32k/logger/UtLog;",
        "",
        "leafTag",
        "",
        "parent",
        "namespace",
        "outputClassName",
        "",
        "outputMethodName",
        "<init>",
        "(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ZZ)V",
        "tag",
        "omissionNamespaceClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/Class;ZZ)V",
        "getLeafTag",
        "()Ljava/lang/String;",
        "getParent",
        "()Lio/github/toyota32k/logger/UtLog;",
        "getOutputClassName",
        "()Z",
        "getOutputMethodName",
        "omissionNamespace",
        "getOmissionNamespace",
        "getTag",
        "logLevel",
        "",
        "getLogLevel",
        "()I",
        "logger",
        "Lio/github/toyota32k/logger/IUtLogger;",
        "getLogger",
        "()Lio/github/toyota32k/logger/IUtLogger;",
        "stripNamespace",
        "classname",
        "getCallerStack",
        "Ljava/lang/StackTraceElement;",
        "compose",
        "message",
        "debug",
        "",
        "msg",
        "fn",
        "Lkotlin/Function0;",
        "flag",
        "warn",
        "error",
        "e",
        "",
        "info",
        "verbose",
        "stackTrace",
        "level",
        "print",
        "assert",
        "chk",
        "assertStrongly",
        "scopeWatch",
        "Ljava/io/Closeable;",
        "scopeCheck",
        "T",
        "(Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "chronos",
        "(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "Companion",
        "ScopeWatcher",
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
.field public static final Companion:Lio/github/toyota32k/logger/UtLog$Companion;


# instance fields
.field private final leafTag:Ljava/lang/String;

.field private final logger:Lio/github/toyota32k/logger/IUtLogger;

.field private final omissionNamespace:Ljava/lang/String;

.field private final outputClassName:Z

.field private final outputMethodName:Z

.field private final parent:Lio/github/toyota32k/logger/UtLog;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/toyota32k/logger/UtLog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/logger/UtLog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/logger/UtLog;->Companion:Lio/github/toyota32k/logger/UtLog$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    const-string v0, "leafTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lio/github/toyota32k/logger/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;)V
    .locals 9

    const-string v0, "leafTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lio/github/toyota32k/logger/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/Class;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/github/toyota32k/logger/UtLog;",
            "Ljava/lang/Class<",
            "*>;ZZ)V"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omissionNamespaceClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lio/github/toyota32k/logger/UtLog;->Companion:Lio/github/toyota32k/logger/UtLog$Companion;

    invoke-virtual {v0, p3}, Lio/github/toyota32k/logger/UtLog$Companion;->namespaceOfClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lio/github/toyota32k/logger/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/Class;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x1

    if-eqz p7, :cond_0

    move p4, v0

    :cond_0
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1

    move p6, v0

    goto :goto_0

    :cond_1
    move p6, p5

    :goto_0
    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 13
    invoke-direct/range {p1 .. p6}, Lio/github/toyota32k/logger/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/Class;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;)V
    .locals 9

    const-string v0, "leafTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lio/github/toyota32k/logger/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;Z)V
    .locals 9

    const-string v0, "leafTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v8}, Lio/github/toyota32k/logger/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "leafTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lio/github/toyota32k/logger/UtLog;->leafTag:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lio/github/toyota32k/logger/UtLog;->parent:Lio/github/toyota32k/logger/UtLog;

    .line 11
    iput-boolean p4, p0, Lio/github/toyota32k/logger/UtLog;->outputClassName:Z

    .line 12
    iput-boolean p5, p0, Lio/github/toyota32k/logger/UtLog;->outputMethodName:Z

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    .line 32
    iget-object p3, p2, Lio/github/toyota32k/logger/UtLog;->omissionNamespace:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_0
    iput-object p3, p0, Lio/github/toyota32k/logger/UtLog;->omissionNamespace:Ljava/lang/String;

    .line 33
    sget-object p3, Lio/github/toyota32k/logger/UtLog;->Companion:Lio/github/toyota32k/logger/UtLog$Companion;

    invoke-virtual {p3, p1, p2}, Lio/github/toyota32k/logger/UtLog$Companion;->hierarchicTag(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/github/toyota32k/logger/UtLog;->tag:Ljava/lang/String;

    .line 36
    sget-object p1, Lio/github/toyota32k/logger/UtLogConfig;->INSTANCE:Lio/github/toyota32k/logger/UtLogConfig;

    invoke-virtual {p1}, Lio/github/toyota32k/logger/UtLogConfig;->getLogChain()Lio/github/toyota32k/logger/UtLoggerChain;

    move-result-object p1

    check-cast p1, Lio/github/toyota32k/logger/IUtLogger;

    iput-object p1, p0, Lio/github/toyota32k/logger/UtLog;->logger:Lio/github/toyota32k/logger/IUtLogger;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x1

    if-eqz p7, :cond_2

    move p4, v0

    :cond_2
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_3

    move p6, v0

    goto :goto_0

    :cond_3
    move p6, p5

    :goto_0
    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 7
    invoke-direct/range {p1 .. p6}, Lio/github/toyota32k/logger/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic assert$default(Lio/github/toyota32k/logger/UtLog;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 162
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/logger/UtLog;->assert(ZLjava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: assert"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic assertStrongly$default(Lio/github/toyota32k/logger/UtLog;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 169
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/logger/UtLog;->assertStrongly(ZLjava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: assertStrongly"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic chronos$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    if-nez p6, :cond_4

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 203
    const-string p1, "TIME"

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const-string p2, ""

    :cond_1
    move-object v2, p2

    and-int/lit8 p2, p5, 0x4

    if-eqz p2, :cond_2

    const/4 p3, 0x3

    .line 202
    :cond_2
    const-string p2, "tag"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "msg"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "fn"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result p2

    if-lt p3, p2, :cond_3

    .line 205
    new-instance v1, Lio/github/toyota32k/logger/Chronos;

    invoke-direct {v1, p0, p1, p3}, Lio/github/toyota32k/logger/Chronos;-><init>(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;I)V

    .line 217
    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p0

    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result p1

    invoke-virtual {v1, v2}, Lio/github/toyota32k/logger/Chronos;->formatEnter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 206
    :try_start_0
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p1

    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p1

    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    throw p0

    .line 208
    :cond_3
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 202
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: chronos"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic debug$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 70
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/logger/UtLog;->debug(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: debug"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic error$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/logger/UtLog;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: error"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic error$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 99
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/logger/UtLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: error"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getCallerStack()Ljava/lang/StackTraceElement;
    .locals 10

    .line 47
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 212
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 49
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 50
    sget-object v6, Lio/github/toyota32k/logger/UtLogConfig;->INSTANCE:Lio/github/toyota32k/logger/UtLogConfig;

    invoke-virtual {v6}, Lio/github/toyota32k/logger/UtLogConfig;->getLoggerRelevantClassNames()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 213
    instance-of v7, v6, Ljava/util/Collection;

    if-eqz v7, :cond_0

    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 50
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v5, v7, v2, v8, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_2
    :goto_1
    const-string v0, "first(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    .line 216
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Array contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic info$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/logger/UtLog;->info(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: info"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic print$default(Lio/github/toyota32k/logger/UtLog;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 155
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: print"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic scopeCheck$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 193
    const-string v0, " - exit"

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x3

    :cond_1
    const-string p4, "fn"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    :try_start_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " - enter"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p2, p4}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    .line 196
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    return-object p3

    :catchall_0
    move-exception p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    throw p3

    .line 193
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: scopeCheck"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic scopeWatch$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;IILjava/lang/Object;)Ljava/io/Closeable;
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x3

    .line 180
    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/logger/UtLog;->scopeWatch(Ljava/lang/String;I)Ljava/io/Closeable;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: scopeWatch"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final scopeWatch$lambda$6(Lio/github/toyota32k/logger/UtLog;ILjava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 184
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog;->logger:Lio/github/toyota32k/logger/IUtLogger;

    iget-object p0, p0, Lio/github/toyota32k/logger/UtLog;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " - exit"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p0, p2}, Lio/github/toyota32k/logger/IUtLogger;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic stackTrace$default(Lio/github/toyota32k/logger/UtLog;ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 142
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/github/toyota32k/logger/UtLog;->stackTrace(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: stackTrace"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic stackTrace$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 132
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/logger/UtLog;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: stackTrace"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final stripNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 39
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog;->omissionNamespace:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog;->omissionNamespace:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog;->omissionNamespace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static synthetic verbose$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 115
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/logger/UtLog;->verbose(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: verbose"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic warn$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/logger/UtLog;->warn(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: warn"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final assert(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lio/github/toyota32k/logger/UtLog;->assert$default(Lio/github/toyota32k/logger/UtLog;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final assert(ZLjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 165
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "assertion failed."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/logger/UtLog;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final assertStrongly(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lio/github/toyota32k/logger/UtLog;->assertStrongly$default(Lio/github/toyota32k/logger/UtLog;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final assertStrongly(ZLjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_1

    .line 172
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "assertion failed."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/logger/UtLog;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lio/github/toyota32k/logger/UtLogConfig;->getDebug()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {p0, p2}, Lio/github/toyota32k/logger/UtLog;->compose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final chronos(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 205
    new-instance v1, Lio/github/toyota32k/logger/Chronos;

    invoke-direct {v1, p0, p1, p3}, Lio/github/toyota32k/logger/Chronos;-><init>(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;I)V

    .line 217
    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p1

    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result p3

    invoke-virtual {v1, p2}, Lio/github/toyota32k/logger/Chronos;->formatEnter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 206
    :try_start_0
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p3

    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result p4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object v2, p2

    move-object p1, v0

    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p2

    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    throw p1

    .line 208
    :cond_0
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final chronos(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v1, v0, :cond_0

    .line 227
    new-instance v2, Lio/github/toyota32k/logger/Chronos;

    invoke-direct {v2, p0, p1, v1}, Lio/github/toyota32k/logger/Chronos;-><init>(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;I)V

    .line 228
    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p1

    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v0

    invoke-virtual {v2, p2}, Lio/github/toyota32k/logger/Chronos;->formatEnter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 232
    :try_start_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p3

    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object v3, p2

    move-object p1, v0

    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p2

    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    throw p1

    .line 235
    :cond_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final chronos(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v1, v0, :cond_0

    .line 239
    new-instance v2, Lio/github/toyota32k/logger/Chronos;

    invoke-direct {v2, p0, p1, v1}, Lio/github/toyota32k/logger/Chronos;-><init>(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;I)V

    .line 240
    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p1

    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v0

    const-string v3, ""

    invoke-virtual {v2, v3}, Lio/github/toyota32k/logger/Chronos;->formatEnter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 244
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p2

    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p2

    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    throw p1

    .line 247
    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final chronos(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v1, v0, :cond_0

    .line 251
    new-instance v2, Lio/github/toyota32k/logger/Chronos;

    const-string v0, "TIME"

    invoke-direct {v2, p0, v0, v1}, Lio/github/toyota32k/logger/Chronos;-><init>(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;I)V

    .line 252
    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v1

    const-string v3, ""

    invoke-virtual {v2, v3}, Lio/github/toyota32k/logger/Chronos;->formatEnter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 256
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    throw p1

    .line 259
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final compose(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 56
    iget-boolean v0, p0, Lio/github/toyota32k/logger/UtLog;->outputClassName:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lio/github/toyota32k/logger/UtLog;->outputMethodName:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 66
    const-string p1, ""

    :cond_1
    return-object p1

    .line 57
    :cond_2
    :goto_0
    invoke-direct {p0}, Lio/github/toyota32k/logger/UtLog;->getCallerStack()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 58
    iget-boolean v1, p0, Lio/github/toyota32k/logger/UtLog;->outputClassName:Z

    const-string v2, ": "

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    .line 59
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getMethodName(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 60
    :cond_4
    iget-boolean v1, p0, Lio/github/toyota32k/logger/UtLog;->outputMethodName:Z

    const-string v3, "getClassName(...)"

    if-nez v1, :cond_6

    if-eqz p1, :cond_5

    .line 61
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/github/toyota32k/logger/UtLog;->stripNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/github/toyota32k/logger/UtLog;->stripNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 63
    :cond_6
    const-string v1, "."

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lio/github/toyota32k/logger/UtLog;->stripNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/github/toyota32k/logger/UtLog;->stripNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final debug()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lio/github/toyota32k/logger/UtLog;->debug$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final debug(Ljava/lang/String;)V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog;->logger:Lio/github/toyota32k/logger/IUtLogger;

    iget-object v2, p0, Lio/github/toyota32k/logger/UtLog;->tag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/github/toyota32k/logger/UtLog;->compose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lio/github/toyota32k/logger/IUtLogger;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final debug(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog;->logger:Lio/github/toyota32k/logger/IUtLogger;

    iget-object v2, p0, Lio/github/toyota32k/logger/UtLog;->tag:Ljava/lang/String;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/logger/UtLog;->compose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lio/github/toyota32k/logger/IUtLogger;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final debug(ZLkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result p1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 83
    iget-object p1, p0, Lio/github/toyota32k/logger/UtLog;->logger:Lio/github/toyota32k/logger/IUtLogger;

    iget-object v1, p0, Lio/github/toyota32k/logger/UtLog;->tag:Ljava/lang/String;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lio/github/toyota32k/logger/UtLog;->compose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lio/github/toyota32k/logger/IUtLogger;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final error()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lio/github/toyota32k/logger/UtLog;->error$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .locals 3

    .line 96
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog;->logger:Lio/github/toyota32k/logger/IUtLogger;

    iget-object v1, p0, Lio/github/toyota32k/logger/UtLog;->tag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/github/toyota32k/logger/UtLog;->compose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x6

    invoke-interface {v0, v2, v1, p1}, Lio/github/toyota32k/logger/IUtLogger;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final error(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lio/github/toyota32k/logger/UtLog;->error$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final error(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p2}, Lio/github/toyota32k/logger/UtLog;->error(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p0, p2}, Lio/github/toyota32k/logger/UtLog;->error(Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/toyota32k/logger/UtLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method protected final getLeafTag()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog;->leafTag:Ljava/lang/String;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    .line 35
    invoke-static {}, Lio/github/toyota32k/logger/UtLogConfig;->getLogLevelProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lio/github/toyota32k/logger/UtLogConfig;->getLogLevel()I

    move-result v0

    return v0
.end method

.method public final getLogger()Lio/github/toyota32k/logger/IUtLogger;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog;->logger:Lio/github/toyota32k/logger/IUtLogger;

    return-object v0
.end method

.method protected final getOmissionNamespace()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog;->omissionNamespace:Ljava/lang/String;

    return-object v0
.end method

.method protected final getOutputClassName()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lio/github/toyota32k/logger/UtLog;->outputClassName:Z

    return v0
.end method

.method protected final getOutputMethodName()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lio/github/toyota32k/logger/UtLog;->outputMethodName:Z

    return v0
.end method

.method public final getParent()Lio/github/toyota32k/logger/UtLog;
    .locals 1

    .line 9
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog;->parent:Lio/github/toyota32k/logger/UtLog;

    return-object v0
.end method

.method protected final getTag()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final info()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lio/github/toyota32k/logger/UtLog;->info$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final info(Ljava/lang/String;)V
    .locals 3

    .line 110
    invoke-virtual {p0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog;->logger:Lio/github/toyota32k/logger/IUtLogger;

    iget-object v2, p0, Lio/github/toyota32k/logger/UtLog;->tag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/github/toyota32k/logger/UtLog;->compose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lio/github/toyota32k/logger/IUtLogger;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final print(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lio/github/toyota32k/logger/UtLog;->print$default(Lio/github/toyota32k/logger/UtLog;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final print(ILjava/lang/String;)V
    .locals 2

    .line 157
    invoke-virtual {p0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 158
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog;->logger:Lio/github/toyota32k/logger/IUtLogger;

    iget-object v1, p0, Lio/github/toyota32k/logger/UtLog;->tag:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lio/github/toyota32k/logger/UtLog;->compose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2}, Lio/github/toyota32k/logger/IUtLogger;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final scopeCheck(Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, " - exit"

    const-string v1, "fn"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    .line 196
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    return-object p3

    :catchall_0
    move-exception p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    throw p3
.end method

.method public final scopeWatch()Ljava/io/Closeable;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lio/github/toyota32k/logger/UtLog;->scopeWatch$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;IILjava/lang/Object;)Ljava/io/Closeable;

    move-result-object v0

    return-object v0
.end method

.method public final scopeWatch(Ljava/lang/String;)Ljava/io/Closeable;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lio/github/toyota32k/logger/UtLog;->scopeWatch$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;IILjava/lang/Object;)Ljava/io/Closeable;

    move-result-object p1

    return-object p1
.end method

.method public final scopeWatch(Ljava/lang/String;I)Ljava/io/Closeable;
    .locals 4

    .line 182
    invoke-virtual {p0, p1}, Lio/github/toyota32k/logger/UtLog;->compose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog;->logger:Lio/github/toyota32k/logger/IUtLogger;

    iget-object v1, p0, Lio/github/toyota32k/logger/UtLog;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - enter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Lio/github/toyota32k/logger/IUtLogger;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lio/github/toyota32k/logger/UtLog$ScopeWatcher;

    new-instance v1, Lio/github/toyota32k/logger/UtLog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lio/github/toyota32k/logger/UtLog$$ExternalSyntheticLambda0;-><init>(Lio/github/toyota32k/logger/UtLog;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lio/github/toyota32k/logger/UtLog$ScopeWatcher;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Ljava/io/Closeable;

    return-object v0
.end method

.method public final stackTrace(ILjava/lang/Throwable;)V
    .locals 7

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lio/github/toyota32k/logger/UtLog;->stackTrace$default(Lio/github/toyota32k/logger/UtLog;ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final stackTrace(ILjava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result v0

    if-gt v0, p1, :cond_2

    if-eqz p3, :cond_0

    .line 146
    invoke-virtual {p0, p1, p3}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    .line 148
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 149
    invoke-virtual {p0, p1, p3}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    .line 151
    :cond_1
    invoke-static {p2}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final stackTrace(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lio/github/toyota32k/logger/UtLog;->stackTrace$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 135
    invoke-virtual {p0, p2}, Lio/github/toyota32k/logger/UtLog;->error(Ljava/lang/String;)V

    .line 137
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 138
    invoke-virtual {p0, p2}, Lio/github/toyota32k/logger/UtLog;->error(Ljava/lang/String;)V

    .line 140
    :cond_1
    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/toyota32k/logger/UtLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public final verbose()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lio/github/toyota32k/logger/UtLog;->verbose$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final verbose(Ljava/lang/String;)V
    .locals 3

    .line 117
    invoke-virtual {p0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog;->logger:Lio/github/toyota32k/logger/IUtLogger;

    iget-object v2, p0, Lio/github/toyota32k/logger/UtLog;->tag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/github/toyota32k/logger/UtLog;->compose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lio/github/toyota32k/logger/IUtLogger;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final verbose(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 123
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog;->logger:Lio/github/toyota32k/logger/IUtLogger;

    iget-object v2, p0, Lio/github/toyota32k/logger/UtLog;->tag:Ljava/lang/String;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/logger/UtLog;->compose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lio/github/toyota32k/logger/IUtLogger;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final verbose(ZLkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result p1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 128
    iget-object p1, p0, Lio/github/toyota32k/logger/UtLog;->logger:Lio/github/toyota32k/logger/IUtLogger;

    iget-object v1, p0, Lio/github/toyota32k/logger/UtLog;->tag:Ljava/lang/String;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lio/github/toyota32k/logger/UtLog;->compose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lio/github/toyota32k/logger/IUtLogger;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final warn()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lio/github/toyota32k/logger/UtLog;->warn$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final warn(Ljava/lang/String;)V
    .locals 3

    .line 89
    invoke-virtual {p0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog;->logger:Lio/github/toyota32k/logger/IUtLogger;

    iget-object v2, p0, Lio/github/toyota32k/logger/UtLog;->tag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/github/toyota32k/logger/UtLog;->compose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lio/github/toyota32k/logger/IUtLogger;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
