.class public final Lio/github/toyota32k/media/lib/converter/Converter$Companion;
.super Ljava/lang/Object;
.source "Converter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/media/lib/converter/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/converter/Converter$Companion;",
        "",
        "()V",
        "LimitOfPatience",
        "",
        "MaxNoEffectedCount",
        "",
        "MaxRetryCount",
        "factory",
        "Lio/github/toyota32k/media/lib/converter/Converter$Factory;",
        "getFactory",
        "()Lio/github/toyota32k/media/lib/converter/Converter$Factory;",
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/toyota32k/media/lib/converter/Converter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFactory()Lio/github/toyota32k/media/lib/converter/Converter$Factory;
    .locals 1

    .line 28
    new-instance v0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;

    invoke-direct {v0}, Lio/github/toyota32k/media/lib/converter/Converter$Factory;-><init>()V

    return-object v0
.end method

.method public final getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;
    .locals 1

    .line 26
    invoke-static {}, Lio/github/toyota32k/media/lib/converter/Converter;->access$getLogger$cp()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v0

    return-object v0
.end method
