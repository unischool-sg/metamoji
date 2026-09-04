.class public final Lio/github/toyota32k/utils/UtLib;
.super Ljava/lang/Object;
.source "UtLib.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/github/toyota32k/utils/UtLib;",
        "",
        "<init>",
        "()V",
        "v",
        "",
        "DEBUG",
        "getDEBUG",
        "()Z",
        "setDEBUG",
        "(Z)V",
        "logger",
        "Lio/github/toyota32k/logger/UtLog;",
        "getLogger",
        "()Lio/github/toyota32k/logger/UtLog;",
        "setLogger",
        "(Lio/github/toyota32k/logger/UtLog;)V",
        "applicationContext",
        "Landroid/content/Context;",
        "getApplicationContext",
        "()Landroid/content/Context;",
        "setApplicationContext",
        "(Landroid/content/Context;)V",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/github/toyota32k/utils/UtLib;

.field public static applicationContext:Landroid/content/Context;

.field private static logger:Lio/github/toyota32k/logger/UtLog;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lio/github/toyota32k/utils/UtLib;

    invoke-direct {v0}, Lio/github/toyota32k/utils/UtLib;-><init>()V

    sput-object v0, Lio/github/toyota32k/utils/UtLib;->INSTANCE:Lio/github/toyota32k/utils/UtLib;

    .line 13
    new-instance v1, Lio/github/toyota32k/logger/UtLog;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const-string v2, "UtLib"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lio/github/toyota32k/logger/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lio/github/toyota32k/utils/UtLib;->logger:Lio/github/toyota32k/logger/UtLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 14
    sget-object v0, Lio/github/toyota32k/utils/UtLib;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "applicationContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDEBUG()Z
    .locals 1

    .line 11
    invoke-static {}, Lio/github/toyota32k/logger/UtLogConfig;->getDebug()Z

    move-result v0

    return v0
.end method

.method public final getLogger()Lio/github/toyota32k/logger/UtLog;
    .locals 1

    .line 13
    sget-object v0, Lio/github/toyota32k/utils/UtLib;->logger:Lio/github/toyota32k/logger/UtLog;

    return-object v0
.end method

.method public final setApplicationContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sput-object p1, Lio/github/toyota32k/utils/UtLib;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method public final setDEBUG(Z)V
    .locals 0

    .line 12
    invoke-static {p1}, Lio/github/toyota32k/logger/UtLogConfig;->setDebug(Z)V

    return-void
.end method

.method public final setLogger(Lio/github/toyota32k/logger/UtLog;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sput-object p1, Lio/github/toyota32k/utils/UtLib;->logger:Lio/github/toyota32k/logger/UtLog;

    return-void
.end method
