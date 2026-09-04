.class public final Lcom/metamoji/un/video/operation/UnVideoMutingOperation;
.super Lcom/metamoji/un/video/operation/UnVideoOperation;
.source "UnVideoMutingOperation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/operation/UnVideoMutingOperation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bB\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\n\u0010\u000eJ\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016R\u0014\u0010\u000f\u001a\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00128TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00058TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/un/video/operation/UnVideoMutingOperation;",
        "Lcom/metamoji/un/video/operation/UnVideoOperation;",
        "target",
        "Lcom/metamoji/un/video/UnVideoUnit;",
        "record",
        "Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;",
        "traits",
        "Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;",
        "model",
        "Lcom/metamoji/df/model/IModel;",
        "<init>",
        "(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;Lcom/metamoji/df/model/IModel;)V",
        "isMuting",
        "",
        "(Lcom/metamoji/un/video/UnVideoUnit;Z)V",
        "isMuted",
        "()Z",
        "type",
        "",
        "getType",
        "()Ljava/lang/String;",
        "inversion",
        "getInversion",
        "()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;",
        "performWithObserver",
        "",
        "observer",
        "Lcom/metamoji/ns/direction/INsDirectionObserver;",
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
.field public static final Companion:Lcom/metamoji/un/video/operation/UnVideoMutingOperation$Companion;

.field public static final TYPE:Ljava/lang/String; = "muting"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/un/video/operation/UnVideoMutingOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/video/operation/UnVideoMutingOperation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/operation/UnVideoMutingOperation;->Companion:Lcom/metamoji/un/video/operation/UnVideoMutingOperation$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "traits"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/un/video/operation/UnVideoOperation;-><init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/video/UnVideoUnit;Z)V
    .locals 2

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    invoke-direct {v0, p2}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;-><init>(Z)V

    sget-object p2, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->Companion:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits$Companion;

    invoke-virtual {p2}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits$Companion;->getNone()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/metamoji/un/video/operation/UnVideoMutingOperation;-><init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private final isMuted()Z
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoMutingOperation;->getRecord()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->getFlag()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected getInversion()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;
    .locals 2

    .line 26
    new-instance v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    invoke-direct {p0}, Lcom/metamoji/un/video/operation/UnVideoMutingOperation;->isMuted()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;-><init>(Z)V

    return-object v0
.end method

.method protected getType()Ljava/lang/String;
    .locals 1

    .line 23
    const-string v0, "muting"

    return-object v0
.end method

.method public performWithObserver(Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoMutingOperation;->getTarget()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUnit;->isMuted()Z

    move-result v0

    .line 30
    invoke-direct {p0}, Lcom/metamoji/un/video/operation/UnVideoMutingOperation;->isMuted()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoMutingOperation;->getTarget()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/video/UnVideoUnit;->setMuted(Z)V

    if-eqz p1, :cond_0

    .line 34
    invoke-interface {p1}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    .line 35
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoMutingOperation;->getTarget()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/ns/direction/INsDirectionObserver;->pageContentsChanged(Lcom/metamoji/nt/NtPageController;)V

    :cond_0
    return-void
.end method
