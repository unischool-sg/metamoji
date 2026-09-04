.class public final Lcom/metamoji/video/AmvCache$Companion;
.super Ljava/lang/Object;
.source "AmvCacheManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/video/AmvCache$Companion;",
        "",
        "<init>",
        "()V",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "video"
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

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/video/AmvCache$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLogger(Lcom/metamoji/video/AmvCache$Companion;)Lcom/metamoji/lib/utils/UtLog;
    .locals 0

    .line 325
    invoke-direct {p0}, Lcom/metamoji/video/AmvCache$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p0

    return-object p0
.end method

.method private final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 326
    sget-object v0, Lcom/metamoji/video/AmvCacheManager;->INSTANCE:Lcom/metamoji/video/AmvCacheManager;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvCacheManager;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    return-object v0
.end method
