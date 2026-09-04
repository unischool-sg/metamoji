.class public final Lcom/metamoji/un/video/UnVideoChairmansDirection;
.super Ljava/lang/Object;
.source "UnVideoChairmansDirection.kt"

# interfaces
.implements Lcom/metamoji/un/video/IWvvChairmansDirection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@RX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u000f@RX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0008\u001a\u00020\u0015@RX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u001c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001dR<\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00038B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\u0007\u00a8\u0006#"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoChairmansDirection;",
        "Lcom/metamoji/un/video/IWvvChairmansDirection;",
        "direction",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "v",
        "Lcom/metamoji/un/video/WvvChairmansStatus;",
        "status",
        "getStatus",
        "()Lcom/metamoji/un/video/WvvChairmansStatus;",
        "setStatus",
        "(Lcom/metamoji/un/video/WvvChairmansStatus;)V",
        "Lcom/metamoji/un/video/WvvChairmansAction;",
        "action",
        "getAction",
        "()Lcom/metamoji/un/video/WvvChairmansAction;",
        "setAction",
        "(Lcom/metamoji/un/video/WvvChairmansAction;)V",
        "",
        "seekPosition",
        "getSeekPosition",
        "()D",
        "setSeekPosition",
        "(D)V",
        "isValid",
        "",
        "()Z",
        "value",
        "getDirection",
        "()Ljava/util/Map;",
        "setDirection",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;

.field public static final TYPE:Ljava/lang/String; = "video.chairman"


# instance fields
.field private action:Lcom/metamoji/un/video/WvvChairmansAction;

.field private seekPosition:D

.field private status:Lcom/metamoji/un/video/WvvChairmansStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/UnVideoChairmansDirection;->Companion:Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "direction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    sget-object v0, Lcom/metamoji/un/video/WvvChairmansStatus;->NONE:Lcom/metamoji/un/video/WvvChairmansStatus;

    iput-object v0, p0, Lcom/metamoji/un/video/UnVideoChairmansDirection;->status:Lcom/metamoji/un/video/WvvChairmansStatus;

    .line 94
    sget-object v0, Lcom/metamoji/un/video/WvvChairmansAction;->NONE:Lcom/metamoji/un/video/WvvChairmansAction;

    iput-object v0, p0, Lcom/metamoji/un/video/UnVideoChairmansDirection;->action:Lcom/metamoji/un/video/WvvChairmansAction;

    .line 143
    invoke-direct {p0, p1}, Lcom/metamoji/un/video/UnVideoChairmansDirection;->setDirection(Ljava/util/Map;)V

    return-void
.end method

.method private final getDirection()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/metamoji/un/video/UnVideoChairmansDirection;->Companion:Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoChairmansDirection;->getStatus()Lcom/metamoji/un/video/WvvChairmansStatus;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoChairmansDirection;->getAction()Lcom/metamoji/un/video/WvvChairmansAction;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoChairmansDirection;->getSeekPosition()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;->createDirection(Lcom/metamoji/un/video/WvvChairmansStatus;Lcom/metamoji/un/video/WvvChairmansAction;D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private setAction(Lcom/metamoji/un/video/WvvChairmansAction;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoChairmansDirection;->action:Lcom/metamoji/un/video/WvvChairmansAction;

    return-void
.end method

.method private final setDirection(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 126
    const-string v0, "null cannot be cast to non-null type kotlin.String"

    .line 0
    const-string/jumbo v1, "type error:"

    .line 127
    :try_start_0
    const-string/jumbo v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    .line 128
    const-string/jumbo v3, "video.chairman"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    const-string v1, "position"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "toDouble(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/metamoji/un/video/UnVideoChairmansDirection;->setSeekPosition(D)V

    .line 132
    const-string/jumbo v1, "status"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/un/video/WvvChairmansStatus;->valueOf(Ljava/lang/String;)Lcom/metamoji/un/video/WvvChairmansStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/metamoji/un/video/UnVideoChairmansDirection;->setStatus(Lcom/metamoji/un/video/WvvChairmansStatus;)V

    .line 133
    const-string v1, "action"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/metamoji/un/video/WvvChairmansAction;->valueOf(Ljava/lang/String;)Lcom/metamoji/un/video/WvvChairmansAction;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/video/UnVideoChairmansDirection;->setAction(Lcom/metamoji/un/video/WvvChairmansAction;)V

    return-void

    .line 129
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 135
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "direction error"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 136
    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/video/UnVideoChairmansDirection;->setSeekPosition(D)V

    .line 137
    sget-object p1, Lcom/metamoji/un/video/WvvChairmansStatus;->NONE:Lcom/metamoji/un/video/WvvChairmansStatus;

    invoke-direct {p0, p1}, Lcom/metamoji/un/video/UnVideoChairmansDirection;->setStatus(Lcom/metamoji/un/video/WvvChairmansStatus;)V

    .line 138
    sget-object p1, Lcom/metamoji/un/video/WvvChairmansAction;->NONE:Lcom/metamoji/un/video/WvvChairmansAction;

    invoke-direct {p0, p1}, Lcom/metamoji/un/video/UnVideoChairmansDirection;->setAction(Lcom/metamoji/un/video/WvvChairmansAction;)V

    return-void
.end method

.method private setSeekPosition(D)V
    .locals 0

    .line 101
    iput-wide p1, p0, Lcom/metamoji/un/video/UnVideoChairmansDirection;->seekPosition:D

    return-void
.end method

.method private setStatus(Lcom/metamoji/un/video/WvvChairmansStatus;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoChairmansDirection;->status:Lcom/metamoji/un/video/WvvChairmansStatus;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/metamoji/un/video/WvvChairmansAction;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoChairmansDirection;->action:Lcom/metamoji/un/video/WvvChairmansAction;

    return-object v0
.end method

.method public getSeekPosition()D
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/metamoji/un/video/UnVideoChairmansDirection;->seekPosition:D

    return-wide v0
.end method

.method public getStatus()Lcom/metamoji/un/video/WvvChairmansStatus;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoChairmansDirection;->status:Lcom/metamoji/un/video/WvvChairmansStatus;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoChairmansDirection;->getStatus()Lcom/metamoji/un/video/WvvChairmansStatus;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/video/WvvChairmansStatus;->NONE:Lcom/metamoji/un/video/WvvChairmansStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
