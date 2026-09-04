.class public final Lcom/metamoji/lib/utils/UtLog;
.super Ljava/lang/Object;
.source "UtLog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/UtLog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtLog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtLog.kt\ncom/metamoji/lib/utils/UtLog\n+ 2 UtLog.kt\nio/github/toyota32k/logger/UtLog\n+ 3 Chronos.kt\nio/github/toyota32k/logger/Chronos\n*L\n1#1,116:1\n113#1,3:138\n194#2,6:117\n204#2,2:123\n206#2:129\n208#2:132\n204#2,5:133\n204#2,2:141\n206#2:147\n208#2:150\n204#2,2:151\n206#2:157\n208#2:160\n204#2,2:161\n206#2:167\n208#2:170\n62#3,4:125\n67#3,2:130\n62#3,4:143\n67#3,2:148\n62#3,4:153\n67#3,2:158\n62#3,4:163\n67#3,2:168\n*S KotlinDebug\n*F\n+ 1 UtLog.kt\ncom/metamoji/lib/utils/UtLog\n*L\n-1#1:138,3\n111#1:117,6\n115#1:123,2\n115#1:129\n115#1:132\n115#1:133,5\n-1#1:141,2\n-1#1:147\n-1#1:150\n-1#1:151,2\n-1#1:157\n-1#1:160\n-1#1:161,2\n-1#1:167\n-1#1:170\n115#1:125,4\n115#1:130,2\n-1#1:143,4\n-1#1:148,2\n-1#1:153,4\n-1#1:158,2\n-1#1:163,4\n-1#1:168,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0018\u0000 +2\u00020\u0001:\u0001+B=\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0000\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nB;\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0000\u0012\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u000c\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\rJ\u0014\u0010\u0012\u001a\u00020\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0007J\u0014\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0016J\u001c\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00072\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0016J\u0014\u0010\u0018\u001a\u00020\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0007J\u0014\u0010\u0018\u001a\u00020\u00132\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0016J\u001c\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00072\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0016J\u0014\u0010\u0019\u001a\u00020\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0007J\u0014\u0010\u001a\u001a\u00020\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0007J\u001c\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001c2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0007J\u0014\u0010\u001d\u001a\u00020\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0007J\u001c\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001c2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0007J$\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001c2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0007J\u001c\u0010!\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020 2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0007J\u001c\u0010\"\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\u00072\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0007J\u001c\u0010$\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\u00072\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0007J\u001c\u0010%\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\u00072\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0007J;\u0010&\u001a\u0002H\'\"\u0004\u0008\u0000\u0010\'2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u001f\u001a\u00020 2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u0002H\'0\u0016H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(JC\u0010)\u001a\u0002H\'\"\u0004\u0008\u0000\u0010\'2\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001f\u001a\u00020 2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u0002H\'0\u0016H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010*R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006,"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/UtLog;",
        "",
        "tag",
        "",
        "parent",
        "omissionNamespace",
        "outputClassName",
        "",
        "outputMethodName",
        "<init>",
        "(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZ)V",
        "omissionNamespaceClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Class;ZZ)V",
        "innerLogger",
        "Lio/github/toyota32k/logger/UtLog;",
        "getInnerLogger",
        "()Lio/github/toyota32k/logger/UtLog;",
        "debug",
        "",
        "msg",
        "fn",
        "Lkotlin/Function0;",
        "flag",
        "verbose",
        "warn",
        "error",
        "e",
        "",
        "info",
        "stackTrace",
        "level",
        "",
        "print",
        "assert",
        "chk",
        "jassert",
        "assertStrongly",
        "scopeCheck",
        "T",
        "(Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "chronos",
        "(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/lib/utils/UtLog$Companion;

.field private static final libLogger$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/metamoji/lib/utils/UtLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final innerLogger:Lio/github/toyota32k/logger/UtLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/UtLog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/UtLog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/UtLog;->Companion:Lcom/metamoji/lib/utils/UtLog$Companion;

    .line 32
    new-instance v0, Lcom/metamoji/lib/utils/UtLog$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/UtLog$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/utils/UtLog;->libLogger$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;)V
    .locals 9

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/lib/utils/UtLog;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omissionNamespaceClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Class;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Class;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/lib/utils/UtLog;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omissionNamespaceClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Class;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Class;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/lib/utils/UtLog;",
            "Ljava/lang/Class<",
            "*>;ZZ)V"
        }
    .end annotation

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omissionNamespaceClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v1, Lcom/metamoji/lib/utils/UtLog;->Companion:Lcom/metamoji/lib/utils/UtLog$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/metamoji/lib/utils/UtLog$Companion;->access$createInnerLogger(Lcom/metamoji/lib/utils/UtLog$Companion;Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Class;ZZ)Lio/github/toyota32k/logger/UtLog;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/utils/UtLog;->innerLogger:Lio/github/toyota32k/logger/UtLog;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Class;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    .line 21
    invoke-direct/range {p1 .. p6}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Class;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;Z)V
    .locals 9

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZ)V
    .locals 7

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v1, Lcom/metamoji/lib/utils/UtLog;->Companion:Lcom/metamoji/lib/utils/UtLog$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/metamoji/lib/utils/UtLog$Companion;->access$createInnerLogger(Lcom/metamoji/lib/utils/UtLog$Companion;Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZ)Lio/github/toyota32k/logger/UtLog;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/utils/UtLog;->innerLogger:Lio/github/toyota32k/logger/UtLog;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    .line 11
    invoke-direct/range {p1 .. p6}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static final synthetic access$getLibLogger$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 9
    sget-object v0, Lcom/metamoji/lib/utils/UtLog;->libLogger$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static synthetic assert$default(Lcom/metamoji/lib/utils/UtLog;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 93
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/UtLog;->assert(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic assertStrongly$default(Lcom/metamoji/lib/utils/UtLog;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 101
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/UtLog;->assertStrongly(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic chronos$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 114
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

    .line 113
    :cond_2
    const-string/jumbo p2, "tag"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "msg"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "fn"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtLog;->getInnerLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p0

    .line 133
    invoke-virtual {p0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result p2

    if-lt p3, p2, :cond_3

    .line 134
    new-instance v1, Lio/github/toyota32k/logger/Chronos;

    invoke-direct {v1, p0, p1, p3}, Lio/github/toyota32k/logger/Chronos;-><init>(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;I)V

    .line 125
    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p0

    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result p1

    invoke-virtual {v1, v2}, Lio/github/toyota32k/logger/Chronos;->formatEnter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 135
    :try_start_0
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
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

    .line 137
    :cond_3
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 42
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic error$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic error$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 73
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic info$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 77
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtLog;->info(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic jassert$default(Lcom/metamoji/lib/utils/UtLog;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 97
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/UtLog;->jassert(ZLjava/lang/String;)V

    return-void
.end method

.method static final libLogger_delegate$lambda$0()Lcom/metamoji/lib/utils/UtLog;
    .locals 8

    .line 32
    new-instance v0, Lcom/metamoji/lib/utils/UtLog;

    const/16 v6, 0x18

    const/4 v7, 0x0

    const-string v1, "libUtils"

    const/4 v2, 0x0

    const-string v3, "com.metamoji."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static synthetic print$default(Lcom/metamoji/lib/utils/UtLog;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 89
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/UtLog;->print(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic scopeCheck$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 110
    const-string p5, " - exit"

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x3

    :cond_1
    const-string p4, "fn"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtLog;->getInnerLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p0

    .line 118
    :try_start_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " - enter"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p2, p4}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    .line 119
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    throw p3
.end method

.method public static synthetic stackTrace$default(Lcom/metamoji/lib/utils/UtLog;ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 85
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/UtLog;->stackTrace(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 81
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/UtLog;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic verbose$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic warn$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtLog;->warn(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final assert(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/metamoji/lib/utils/UtLog;->assert$default(Lcom/metamoji/lib/utils/UtLog;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final assert(ZLjava/lang/String;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtLog;->innerLogger:Lio/github/toyota32k/logger/UtLog;

    invoke-virtual {v0, p1, p2}, Lio/github/toyota32k/logger/UtLog;->assert(ZLjava/lang/String;)V

    return-void
.end method

.method public final assertStrongly(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/metamoji/lib/utils/UtLog;->assertStrongly$default(Lcom/metamoji/lib/utils/UtLog;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final assertStrongly(ZLjava/lang/String;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtLog;->innerLogger:Lio/github/toyota32k/logger/UtLog;

    invoke-virtual {v0, p1, p2}, Lio/github/toyota32k/logger/UtLog;->assertStrongly(ZLjava/lang/String;)V

    return-void
.end method

.method public final chronos(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 8
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

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtLog;->getInnerLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result v1

    if-lt p3, v1, :cond_0

    .line 124
    new-instance v2, Lio/github/toyota32k/logger/Chronos;

    invoke-direct {v2, v0, p1, p3}, Lio/github/toyota32k/logger/Chronos;-><init>(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;I)V

    .line 125
    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p1

    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result p3

    invoke-virtual {v2, p2}, Lio/github/toyota32k/logger/Chronos;->formatEnter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 129
    :try_start_0
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p3

    invoke-virtual {v2}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result p4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

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

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    throw p1

    .line 132
    :cond_0
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final chronos(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 9
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

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtLog;->getInnerLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result v1

    const/4 v2, 0x3

    if-lt v2, v1, :cond_0

    .line 142
    new-instance v3, Lio/github/toyota32k/logger/Chronos;

    invoke-direct {v3, v0, p1, v2}, Lio/github/toyota32k/logger/Chronos;-><init>(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;I)V

    .line 143
    invoke-virtual {v3}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p1

    invoke-virtual {v3}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v0

    invoke-virtual {v3, p2}, Lio/github/toyota32k/logger/Chronos;->formatEnter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 147
    :try_start_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v3}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p3

    invoke-virtual {v3}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object v4, p2

    move-object p1, v0

    invoke-virtual {v3}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p2

    invoke-virtual {v3}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    throw p1

    .line 150
    :cond_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final chronos(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 9
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

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtLog;->getInnerLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result v1

    const/4 v2, 0x3

    if-lt v2, v1, :cond_0

    .line 152
    new-instance v3, Lio/github/toyota32k/logger/Chronos;

    invoke-direct {v3, v0, p1, v2}, Lio/github/toyota32k/logger/Chronos;-><init>(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;I)V

    .line 153
    invoke-virtual {v3}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p1

    invoke-virtual {v3}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v0

    const-string v4, ""

    invoke-virtual {v3, v4}, Lio/github/toyota32k/logger/Chronos;->formatEnter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 157
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-virtual {v3}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p2

    invoke-virtual {v3}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {v3}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p2

    invoke-virtual {v3}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    throw p1

    .line 160
    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final chronos(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 9
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

    .line 140
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtLog;->getInnerLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lio/github/toyota32k/logger/UtLog;->getLogLevel()I

    move-result v1

    const/4 v2, 0x3

    if-lt v2, v1, :cond_0

    .line 162
    new-instance v3, Lio/github/toyota32k/logger/Chronos;

    const-string v1, "TIME"

    invoke-direct {v3, v0, v1, v2}, Lio/github/toyota32k/logger/Chronos;-><init>(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;I)V

    .line 163
    invoke-virtual {v3}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    invoke-virtual {v3}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v1

    const-string v4, ""

    invoke-virtual {v3, v4}, Lio/github/toyota32k/logger/Chronos;->formatEnter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 167
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v3}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    invoke-virtual {v3}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {v3}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    invoke-virtual {v3}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    throw p1

    .line 170
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final debug()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final debug(Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtLog;->innerLogger:Lio/github/toyota32k/logger/UtLog;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/logger/UtLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public final debug(Lkotlin/jvm/functions/Function0;)V
    .locals 1
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

    .line 47
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtLog;->innerLogger:Lio/github/toyota32k/logger/UtLog;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/logger/UtLog;->debug(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final debug(ZLkotlin/jvm/functions/Function0;)V
    .locals 1
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

    .line 50
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtLog;->innerLogger:Lio/github/toyota32k/logger/UtLog;

    invoke-virtual {v0, p1, p2}, Lio/github/toyota32k/logger/UtLog;->debug(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final error()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/metamoji/lib/utils/UtLog;->error$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtLog;->innerLogger:Lio/github/toyota32k/logger/UtLog;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/logger/UtLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public final error(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/metamoji/lib/utils/UtLog;->error$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final error(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtLog;->innerLogger:Lio/github/toyota32k/logger/UtLog;

    invoke-virtual {v0, p1, p2}, Lio/github/toyota32k/logger/UtLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final getInnerLogger()Lio/github/toyota32k/logger/UtLog;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtLog;->innerLogger:Lio/github/toyota32k/logger/UtLog;

    return-object v0
.end method

.method public final info()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/metamoji/lib/utils/UtLog;->info$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final info(Ljava/lang/String;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtLog;->innerLogger:Lio/github/toyota32k/logger/UtLog;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/logger/UtLog;->info(Ljava/lang/String;)V

    return-void
.end method

.method public final jassert(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/metamoji/lib/utils/UtLog;->jassert$default(Lcom/metamoji/lib/utils/UtLog;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final jassert(ZLjava/lang/String;)V
    .locals 0

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/UtLog;->assert(ZLjava/lang/String;)V

    return-void
.end method

.method public final print(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/metamoji/lib/utils/UtLog;->print$default(Lcom/metamoji/lib/utils/UtLog;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final print(ILjava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtLog;->innerLogger:Lio/github/toyota32k/logger/UtLog;

    invoke-virtual {v0, p1, p2}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    return-void
.end method

.method public final scopeCheck(Ljava/lang/String;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 4
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

    .line 111
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtLog;->getInnerLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v1

    .line 118
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - enter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    .line 119
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    return-object p3

    :catchall_0
    move-exception p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    throw p3
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

    invoke-static/range {v1 .. v6}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final stackTrace(ILjava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtLog;->innerLogger:Lio/github/toyota32k/logger/UtLog;

    invoke-virtual {v0, p1, p2, p3}, Lio/github/toyota32k/logger/UtLog;->stackTrace(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final stackTrace(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtLog;->innerLogger:Lio/github/toyota32k/logger/UtLog;

    invoke-virtual {v0, p1, p2}, Lio/github/toyota32k/logger/UtLog;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final verbose()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/metamoji/lib/utils/UtLog;->verbose$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final verbose(Ljava/lang/String;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtLog;->innerLogger:Lio/github/toyota32k/logger/UtLog;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/logger/UtLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public final verbose(Lkotlin/jvm/functions/Function0;)V
    .locals 1
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

    .line 57
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtLog;->innerLogger:Lio/github/toyota32k/logger/UtLog;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/logger/UtLog;->verbose(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final verbose(ZLkotlin/jvm/functions/Function0;)V
    .locals 1
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

    .line 61
    iget-object p1, p0, Lcom/metamoji/lib/utils/UtLog;->innerLogger:Lio/github/toyota32k/logger/UtLog;

    invoke-virtual {p1, p2}, Lio/github/toyota32k/logger/UtLog;->verbose(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method

.method public final warn()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/metamoji/lib/utils/UtLog;->warn$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final warn(Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtLog;->innerLogger:Lio/github/toyota32k/logger/UtLog;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/logger/UtLog;->warn(Ljava/lang/String;)V

    return-void
.end method
