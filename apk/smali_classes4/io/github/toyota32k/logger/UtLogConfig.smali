.class public final Lio/github/toyota32k/logger/UtLogConfig;
.super Ljava/lang/Object;
.source "UtLogConfig.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtLogConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtLogConfig.kt\nio/github/toyota32k/logger/UtLogConfig\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,48:1\n11228#2:49\n11563#2,3:50\n*S KotlinDebug\n*F\n+ 1 UtLogConfig.kt\nio/github/toyota32k/logger/UtLogConfig\n*L\n38#1:49\n38#1:50,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J)\u0010\u001d\u001a\u00020\u001e2\u001a\u0010\u001f\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030!0 \"\u0006\u0012\u0002\u0008\u00030!H\u0007\u00a2\u0006\u0002\u0010\"R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R$\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\n\u0010\u0003\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR,\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0011\u0010\u0003\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR$\u0010#\u001a\u00020$8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008%\u0010\u0003\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006*"
    }
    d2 = {
        "Lio/github/toyota32k/logger/UtLogConfig;",
        "",
        "<init>",
        "()V",
        "logChain",
        "Lio/github/toyota32k/logger/UtLoggerChain;",
        "getLogChain",
        "()Lio/github/toyota32k/logger/UtLoggerChain;",
        "logLevel",
        "",
        "getLogLevel$annotations",
        "getLogLevel",
        "()I",
        "setLogLevel",
        "(I)V",
        "logLevelProvider",
        "Lkotlin/Function0;",
        "getLogLevelProvider$annotations",
        "getLogLevelProvider",
        "()Lkotlin/jvm/functions/Function0;",
        "setLogLevelProvider",
        "(Lkotlin/jvm/functions/Function0;)V",
        "mRelevantClassNames",
        "",
        "",
        "loggerRelevantClassNames",
        "",
        "getLoggerRelevantClassNames",
        "()Ljava/util/List;",
        "addLoggerRelevantClasses",
        "",
        "clazz",
        "",
        "Ljava/lang/Class;",
        "([Ljava/lang/Class;)V",
        "debug",
        "",
        "getDebug$annotations",
        "getDebug",
        "()Z",
        "setDebug",
        "(Z)V",
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
.field public static final INSTANCE:Lio/github/toyota32k/logger/UtLogConfig;

.field private static debug:Z

.field private static final logChain:Lio/github/toyota32k/logger/UtLoggerChain;

.field private static logLevel:I

.field private static logLevelProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRelevantClassNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/github/toyota32k/logger/UtLogConfig;

    invoke-direct {v0}, Lio/github/toyota32k/logger/UtLogConfig;-><init>()V

    sput-object v0, Lio/github/toyota32k/logger/UtLogConfig;->INSTANCE:Lio/github/toyota32k/logger/UtLogConfig;

    .line 15
    new-instance v0, Lio/github/toyota32k/logger/UtLoggerChain;

    invoke-direct {v0}, Lio/github/toyota32k/logger/UtLoggerChain;-><init>()V

    sput-object v0, Lio/github/toyota32k/logger/UtLogConfig;->logChain:Lio/github/toyota32k/logger/UtLoggerChain;

    const/4 v0, 0x4

    .line 22
    sput v0, Lio/github/toyota32k/logger/UtLogConfig;->logLevel:I

    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lio/github/toyota32k/logger/UtLog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-class v1, Lio/github/toyota32k/logger/Chronos;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/github/toyota32k/logger/UtLogConfig;->mRelevantClassNames:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final varargs addLoggerRelevantClasses([Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lio/github/toyota32k/logger/UtLogConfig;->mRelevantClassNames:Ljava/util/List;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 50
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 38
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 49
    check-cast v1, Ljava/util/Collection;

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static final getDebug()Z
    .locals 1

    .line 46
    sget-boolean v0, Lio/github/toyota32k/logger/UtLogConfig;->debug:Z

    return v0
.end method

.method public static synthetic getDebug$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getLogLevel()I
    .locals 1

    .line 21
    sget v0, Lio/github/toyota32k/logger/UtLogConfig;->logLevel:I

    return v0
.end method

.method public static synthetic getLogLevel$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getLogLevelProvider()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 28
    sget-object v0, Lio/github/toyota32k/logger/UtLogConfig;->logLevelProvider:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static synthetic getLogLevelProvider$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final setDebug(Z)V
    .locals 0

    .line 46
    sput-boolean p0, Lio/github/toyota32k/logger/UtLogConfig;->debug:Z

    return-void
.end method

.method public static final setLogLevel(I)V
    .locals 0

    .line 21
    sput p0, Lio/github/toyota32k/logger/UtLogConfig;->logLevel:I

    return-void
.end method

.method public static final setLogLevelProvider(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 28
    sput-object p0, Lio/github/toyota32k/logger/UtLogConfig;->logLevelProvider:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getLogChain()Lio/github/toyota32k/logger/UtLoggerChain;
    .locals 1

    .line 15
    sget-object v0, Lio/github/toyota32k/logger/UtLogConfig;->logChain:Lio/github/toyota32k/logger/UtLoggerChain;

    return-object v0
.end method

.method public final getLoggerRelevantClassNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    sget-object v0, Lio/github/toyota32k/logger/UtLogConfig;->mRelevantClassNames:Ljava/util/List;

    return-object v0
.end method
