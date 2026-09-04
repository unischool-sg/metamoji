.class public final Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$Companion;
.super Ljava/lang/Object;
.source "Logger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$Companion;",
        "",
        "()V",
        "externalLogger",
        "Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;",
        "getExternalLogger$libMedia_release$annotations",
        "getExternalLogger$libMedia_release",
        "()Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;",
        "setExternalLogger$libMedia_release",
        "(Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;)V",
        "setExternalLogger",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getExternalLogger$libMedia_release$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getExternalLogger$libMedia_release()Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;
    .locals 1

    .line 31
    invoke-static {}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->access$getExternalLogger$cp()Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;

    move-result-object v0

    return-object v0
.end method

.method public final setExternalLogger(Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "externalLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p1}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance$Companion;->setExternalLogger$libMedia_release(Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;)V

    return-void
.end method

.method public final setExternalLogger$libMedia_release(Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;)V
    .locals 0

    .line 31
    invoke-static {p1}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->access$setExternalLogger$cp(Lio/github/toyota32k/media/lib/utils/IUtExternalLogger;)V

    return-void
.end method
