.class public final Lio/github/toyota32k/media/lib/track/Muxer$Companion;
.super Ljava/lang/Object;
.source "Muxer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/media/lib/track/Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/track/Muxer$Companion;",
        "",
        "()V",
        "BUFFER_SIZE",
        "",
        "logger",
        "Lio/github/toyota32k/media/lib/utils/UtLog;",
        "getLogger",
        "()Lio/github/toyota32k/media/lib/utils/UtLog;",
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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/toyota32k/media/lib/track/Muxer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;
    .locals 1

    .line 18
    invoke-static {}, Lio/github/toyota32k/media/lib/track/Muxer;->access$getLogger$cp()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v0

    return-object v0
.end method
