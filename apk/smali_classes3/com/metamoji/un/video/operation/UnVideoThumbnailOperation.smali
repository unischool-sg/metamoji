.class public final Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation;
.super Lcom/metamoji/un/video/operation/UnVideoOperation;
.source "UnVideoThumbnailOperation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bB#\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\n\u0010\u0010J\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0019H\u0014R\u0014\u0010\u0011\u001a\u00020\u00128TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00058TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation;",
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
        "thumbnail",
        "Lcom/metamoji/cm/Blob;",
        "time",
        "",
        "(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/cm/Blob;D)V",
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
        "prepareForDirection",
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
.field public static final Companion:Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation$Companion;

.field public static final KEY_TICKET:Ljava/lang/String; = "ticket"

.field public static final KEY_TIME:Ljava/lang/String; = "time"

.field public static final TYPE:Ljava/lang/String; = "thumbnail"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation;->Companion:Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/cm/Blob;D)V
    .locals 2

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->Companion:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits$Companion;

    invoke-virtual {v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits$Companion;->getNone()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation;-><init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;Lcom/metamoji/df/model/IModel;)V

    if-eqz p2, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoUnit;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/metamoji/df/controller/AttachmentsManager;->registerAttachment(Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    :cond_0
    const/4 p1, 0x2

    .line 22
    new-array p1, p1, [Lkotlin/Pair;

    const-string/jumbo p2, "ticket"

    invoke-static {p2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 23
    const-string/jumbo p2, "time"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    .line 21
    invoke-static {p1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    .line 25
    new-instance p2, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    invoke-direct {p2, p1}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {p0, p2}, Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation;->setRecord(Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "traits"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/un/video/operation/UnVideoOperation;-><init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method


# virtual methods
.method protected getInversion()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;
    .locals 5

    .line 42
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation;->getTarget()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    const/4 v2, 0x2

    .line 44
    new-array v2, v2, [Lkotlin/Pair;

    const-string/jumbo v3, "thumbnailTicket"

    invoke-interface {v0, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ticket"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 45
    const-string/jumbo v3, "thumbnailTime"

    invoke-interface {v0, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "time"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 43
    invoke-static {v2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;-><init>(Ljava/util/HashMap;)V

    return-object v1
.end method

.method protected getType()Ljava/lang/String;
    .locals 1

    .line 37
    const-string/jumbo v0, "thumbnail"

    return-object v0
.end method

.method public performWithObserver(Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 5

    .line 50
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation;->getRecord()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 51
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->getDic()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation;->getTarget()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/video/UnVideoUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 53
    const-string/jumbo v2, "ticket"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 55
    const-string/jumbo v3, "thumbnailTicket"

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_3
    const-string/jumbo v2, "time"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    const-string/jumbo v2, "thumbnailTime"

    if-eqz v0, :cond_4

    .line 59
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v3, "toDouble(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    goto :goto_1

    .line 61
    :cond_4
    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 63
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation;->getTarget()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUnit;->refreshThumbnail()V

    if-eqz p1, :cond_5

    .line 66
    invoke-interface {p1}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    .line 67
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation;->getTarget()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/ns/direction/INsDirectionObserver;->pageContentsChanged(Lcom/metamoji/nt/NtPageController;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected prepareForDirection()V
    .locals 2

    .line 73
    invoke-super {p0}, Lcom/metamoji/un/video/operation/UnVideoOperation;->prepareForDirection()V

    .line 75
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation;->getRecord()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->getDic()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "ticket"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoThumbnailOperation;->getTarget()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/video/UnVideoUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v1

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Lcom/metamoji/nt/INtAppFrame;->shareAttachmentsOnCollaboByTickets(Ljava/util/Collection;)V

    :cond_1
    return-void
.end method
