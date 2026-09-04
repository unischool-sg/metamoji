.class public final Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;
.super Ljava/lang/Object;
.source "UnVideoChairmansDirection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/UnVideoChairmansDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion$Prop;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0017B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ*\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J&\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;",
        "",
        "<init>",
        "()V",
        "TYPE",
        "",
        "handleDirection",
        "Lcom/metamoji/un/video/UnVideoChairmansDirection;",
        "receivedDirection",
        "Lcom/metamoji/ns/direction/NsReceivedDirection;",
        "unVideoUnit",
        "Lcom/metamoji/un/video/UnVideoUnit;",
        "createDirection",
        "",
        "status",
        "Lcom/metamoji/un/video/WvvChairmansStatus;",
        "action",
        "Lcom/metamoji/un/video/WvvChairmansAction;",
        "seekPosition",
        "",
        "sendDirection",
        "",
        "unit",
        "Prop",
        "app"
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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDirection(Lcom/metamoji/un/video/WvvChairmansStatus;Lcom/metamoji/un/video/WvvChairmansAction;D)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/video/WvvChairmansStatus;",
            "Lcom/metamoji/un/video/WvvChairmansAction;",
            "D)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "action"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 53
    new-array v2, v2, [Lkotlin/Pair;

    const-string/jumbo v3, "type"

    const-string/jumbo v4, "video.chairman"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 54
    const-string v3, "position"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {v3, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, v2, p4

    .line 55
    invoke-virtual {p1}, Lcom/metamoji/un/video/WvvChairmansStatus;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v2, p3

    .line 56
    invoke-virtual {p2}, Lcom/metamoji/un/video/WvvChairmansAction;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v2, p2

    .line 52
    invoke-static {v2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public final handleDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/un/video/UnVideoUnit;)Lcom/metamoji/un/video/UnVideoChairmansDirection;
    .locals 1

    const-string v0, "receivedDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "unVideoUnit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    .line 41
    const-string p1, "UnVideoChairmansDirection.RecvDirection: unknown direction type."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-object v0

    .line 44
    :cond_1
    new-instance p2, Lcom/metamoji/un/video/UnVideoChairmansDirection;

    invoke-direct {p2, p1}, Lcom/metamoji/un/video/UnVideoChairmansDirection;-><init>(Ljava/util/Map;)V

    .line 45
    invoke-virtual {p2}, Lcom/metamoji/un/video/UnVideoChairmansDirection;->isValid()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p2

    :cond_2
    return-object v0
.end method

.method public final sendDirection(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/WvvChairmansStatus;Lcom/metamoji/un/video/WvvChairmansAction;D)V
    .locals 0

    const-string/jumbo p4, "unit"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "status"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "action"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
