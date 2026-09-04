.class public final Lcom/metamoji/lib/utils/UtLib;
.super Ljava/lang/Object;
.source "UtLib.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000bH\u0007R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u00108FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0011\u0010\u0003\u001a\u0004\u0008\u000f\u0010\u0012R\u001c\u0010\u0013\u001a\u00020\u00148\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0015\u0010\u0003\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/UtLib;",
        "",
        "<init>",
        "()V",
        "applicationContext",
        "Landroid/content/Context;",
        "getApplicationContext",
        "()Landroid/content/Context;",
        "setApplicationContext",
        "(Landroid/content/Context;)V",
        "externalLogger",
        "Lcom/metamoji/lib/utils/IUtExternalLogger;",
        "initialize",
        "",
        "ex",
        "isSupportLogEnabled",
        "",
        "isSupportLogEnabled$annotations",
        "()Z",
        "libLogger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLibLogger$annotations",
        "getLibLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "logger",
        "getLogger",
        "utils"
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
.field public static final INSTANCE:Lcom/metamoji/lib/utils/UtLib;

.field public static applicationContext:Landroid/content/Context;

.field private static externalLogger:Lcom/metamoji/lib/utils/IUtExternalLogger;

.field private static final libLogger:Lcom/metamoji/lib/utils/UtLog;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/metamoji/lib/utils/UtLib;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/UtLib;-><init>()V

    sput-object v0, Lcom/metamoji/lib/utils/UtLib;->INSTANCE:Lcom/metamoji/lib/utils/UtLib;

    .line 41
    new-instance v1, Lcom/metamoji/lib/utils/UtLog;

    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v2, "UtLib"

    const/4 v3, 0x0

    const-string v4, "com.metamoji."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/metamoji/lib/utils/UtLib;->libLogger:Lcom/metamoji/lib/utils/UtLog;

    .line 42
    sput-object v1, Lcom/metamoji/lib/utils/UtLib;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getLibLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 40
    sget-object v0, Lcom/metamoji/lib/utils/UtLib;->libLogger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static synthetic getLibLogger$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final initialize(Landroid/content/Context;Lcom/metamoji/lib/utils/IUtExternalLogger;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "applicationContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/metamoji/lib/utils/UtLib;->INSTANCE:Lcom/metamoji/lib/utils/UtLib;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getApplicationContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/lib/utils/UtLib;->setApplicationContext(Landroid/content/Context;)V

    .line 20
    sput-object p1, Lcom/metamoji/lib/utils/UtLib;->externalLogger:Lcom/metamoji/lib/utils/IUtExternalLogger;

    .line 21
    sget-object p0, Lio/github/toyota32k/logger/UtLogConfig;->INSTANCE:Lio/github/toyota32k/logger/UtLogConfig;

    invoke-virtual {p0}, Lio/github/toyota32k/logger/UtLogConfig;->getLogChain()Lio/github/toyota32k/logger/UtLoggerChain;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/toyota32k/logger/UtLoggerChain;->disableDefaultLogger()Lio/github/toyota32k/logger/UtLoggerChain;

    move-result-object p0

    new-instance v0, Lcom/metamoji/lib/utils/UtLib$initialize$1;

    invoke-direct {v0, p1}, Lcom/metamoji/lib/utils/UtLib$initialize$1;-><init>(Lcom/metamoji/lib/utils/IUtExternalLogger;)V

    check-cast v0, Lio/github/toyota32k/logger/IUtLogger;

    invoke-virtual {p0, v0}, Lio/github/toyota32k/logger/UtLoggerChain;->plus(Lio/github/toyota32k/logger/IUtLogger;)Lio/github/toyota32k/logger/UtLoggerChain;

    .line 26
    new-instance p0, Lcom/metamoji/lib/utils/UtLib$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/metamoji/lib/utils/UtLib$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/utils/IUtExternalLogger;)V

    invoke-static {p0}, Lio/github/toyota32k/logger/UtLogConfig;->setLogLevelProvider(Lkotlin/jvm/functions/Function0;)V

    const/4 p0, 0x2

    .line 35
    new-array p0, p0, [Ljava/lang/Class;

    const/4 p1, 0x0

    const-class v0, Lcom/metamoji/lib/utils/UtLog;

    aput-object v0, p0, p1

    const/4 p1, 0x1

    const-class v0, Lcom/metamoji/lib/utils/Chronos;

    aput-object v0, p0, p1

    invoke-static {p0}, Lio/github/toyota32k/logger/UtLogConfig;->addLoggerRelevantClasses([Ljava/lang/Class;)V

    return-void
.end method

.method static final initialize$lambda$0(Lcom/metamoji/lib/utils/IUtExternalLogger;)I
    .locals 0

    .line 29
    invoke-interface {p0}, Lcom/metamoji/lib/utils/IUtExternalLogger;->isSupportLogEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0
.end method

.method public static final isSupportLogEnabled()Z
    .locals 1

    .line 38
    sget-object v0, Lcom/metamoji/lib/utils/UtLib;->externalLogger:Lcom/metamoji/lib/utils/IUtExternalLogger;

    if-nez v0, :cond_0

    const-string v0, "externalLogger"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lcom/metamoji/lib/utils/IUtExternalLogger;->isSupportLogEnabled()Z

    move-result v0

    return v0
.end method

.method public static synthetic isSupportLogEnabled$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 15
    sget-object v0, Lcom/metamoji/lib/utils/UtLib;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "applicationContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 42
    sget-object v0, Lcom/metamoji/lib/utils/UtLib;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public final setApplicationContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sput-object p1, Lcom/metamoji/lib/utils/UtLib;->applicationContext:Landroid/content/Context;

    return-void
.end method
