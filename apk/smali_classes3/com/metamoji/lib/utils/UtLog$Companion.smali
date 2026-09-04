.class public final Lcom/metamoji/lib/utils/UtLog$Companion;
.super Ljava/lang/Object;
.source "UtLog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/UtLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J<\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011H\u0002J:\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030\u00142\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/UtLog$Companion;",
        "",
        "<init>",
        "()V",
        "libLogger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLibLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "libLogger$delegate",
        "Lkotlin/Lazy;",
        "createInnerLogger",
        "Lio/github/toyota32k/logger/UtLog;",
        "tag",
        "",
        "parent",
        "omissionNamespace",
        "outputClassName",
        "",
        "outputMethodName",
        "omissionNamespaceClass",
        "Ljava/lang/Class;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/utils/UtLog$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createInnerLogger(Lcom/metamoji/lib/utils/UtLog$Companion;Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Class;ZZ)Lio/github/toyota32k/logger/UtLog;
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/metamoji/lib/utils/UtLog$Companion;->createInnerLogger(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Class;ZZ)Lio/github/toyota32k/logger/UtLog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createInnerLogger(Lcom/metamoji/lib/utils/UtLog$Companion;Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZ)Lio/github/toyota32k/logger/UtLog;
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/metamoji/lib/utils/UtLog$Companion;->createInnerLogger(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZ)Lio/github/toyota32k/logger/UtLog;

    move-result-object p0

    return-object p0
.end method

.method private final createInnerLogger(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Class;ZZ)Lio/github/toyota32k/logger/UtLog;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/lib/utils/UtLog;",
            "Ljava/lang/Class<",
            "*>;ZZ)",
            "Lio/github/toyota32k/logger/UtLog;"
        }
    .end annotation

    .line 38
    new-instance v0, Lio/github/toyota32k/logger/UtLog;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/metamoji/lib/utils/UtLog;->getInnerLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lio/github/toyota32k/logger/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/Class;ZZ)V

    return-object v0
.end method

.method private final createInnerLogger(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZ)Lio/github/toyota32k/logger/UtLog;
    .locals 6

    .line 35
    new-instance v0, Lio/github/toyota32k/logger/UtLog;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/metamoji/lib/utils/UtLog;->getInnerLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lio/github/toyota32k/logger/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method static synthetic createInnerLogger$default(Lcom/metamoji/lib/utils/UtLog$Companion;Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Class;ZZILjava/lang/Object;)Lio/github/toyota32k/logger/UtLog;
    .locals 1

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x1

    if-eqz p7, :cond_0

    move p4, v0

    :cond_0
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1

    move p5, v0

    .line 37
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/metamoji/lib/utils/UtLog$Companion;->createInnerLogger(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Class;ZZ)Lio/github/toyota32k/logger/UtLog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic createInnerLogger$default(Lcom/metamoji/lib/utils/UtLog$Companion;Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILjava/lang/Object;)Lio/github/toyota32k/logger/UtLog;
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

    move p5, v0

    .line 34
    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/metamoji/lib/utils/UtLog$Companion;->createInnerLogger(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZ)Lio/github/toyota32k/logger/UtLog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getLibLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 32
    invoke-static {}, Lcom/metamoji/lib/utils/UtLog;->access$getLibLogger$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method
