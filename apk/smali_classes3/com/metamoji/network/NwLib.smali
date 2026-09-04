.class public final Lcom/metamoji/network/NwLib;
.super Ljava/lang/Object;
.source "NwLib.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0007R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/network/NwLib;",
        "",
        "<init>",
        "()V",
        "initialize",
        "",
        "driver",
        "Lcom/metamoji/network/INwProxyAuthDriver;",
        "tempFileCreator",
        "Lcom/metamoji/network/NwWebDAVRequest$ITempFileCreator;",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "network"
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
.field public static final INSTANCE:Lcom/metamoji/network/NwLib;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/metamoji/network/NwLib;

    invoke-direct {v0}, Lcom/metamoji/network/NwLib;-><init>()V

    sput-object v0, Lcom/metamoji/network/NwLib;->INSTANCE:Lcom/metamoji/network/NwLib;

    .line 11
    new-instance v1, Lcom/metamoji/lib/utils/UtLog;

    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v2, "Nw"

    const/4 v3, 0x0

    const-string v4, "com.metamoji.network."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/metamoji/network/NwLib;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final initialize(Lcom/metamoji/network/INwProxyAuthDriver;Lcom/metamoji/network/NwWebDAVRequest$ITempFileCreator;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "driver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tempFileCreator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lcom/metamoji/network/NwProxyAuthManager;->initialize(Lcom/metamoji/network/INwProxyAuthDriver;)V

    .line 9
    sget-object p0, Lcom/metamoji/network/NwWebDAVRequest;->Companion:Lcom/metamoji/network/NwWebDAVRequest$Companion;

    invoke-virtual {p0, p1}, Lcom/metamoji/network/NwWebDAVRequest$Companion;->setTempFileCreator(Lcom/metamoji/network/NwWebDAVRequest$ITempFileCreator;)V

    return-void
.end method


# virtual methods
.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 11
    sget-object v0, Lcom/metamoji/network/NwLib;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method
