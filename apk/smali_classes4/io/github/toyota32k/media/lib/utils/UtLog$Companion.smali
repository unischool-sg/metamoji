.class public final Lio/github/toyota32k/media/lib/utils/UtLog$Companion;
.super Ljava/lang/Object;
.source "UtLog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/media/lib/utils/UtLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/utils/UtLog$Companion;",
        "",
        "()V",
        "logLevel",
        "",
        "getLogLevel",
        "()I",
        "setLogLevel",
        "(I)V",
        "hierarchicTag",
        "",
        "tag",
        "parent",
        "Lio/github/toyota32k/media/lib/utils/UtLog;",
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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/toyota32k/media/lib/utils/UtLog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogLevel()I
    .locals 1

    .line 44
    invoke-static {}, Lio/github/toyota32k/media/lib/utils/UtLog;->access$getLogLevel$cp()I

    move-result v0

    return v0
.end method

.method public final hierarchicTag(Ljava/lang/String;Lio/github/toyota32k/media/lib/utils/UtLog;)Ljava/lang/String;
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lio/github/toyota32k/media/lib/utils/UtLog;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lio/github/toyota32k/media/lib/utils/UtLog;->getParent()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lio/github/toyota32k/media/lib/utils/UtLog$Companion;->hierarchicTag(Ljava/lang/String;Lio/github/toyota32k/media/lib/utils/UtLog;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final setLogLevel(I)V
    .locals 0

    .line 44
    invoke-static {p1}, Lio/github/toyota32k/media/lib/utils/UtLog;->access$setLogLevel$cp(I)V

    return-void
.end method
