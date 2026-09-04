.class public final Lcom/metamoji/un/video/operation/UnVideoMarkerOperation;
.super Lcom/metamoji/un/video/operation/UnVideoOperation;
.source "UnVideoMarkerOperation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Companion;,
        Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;,
        Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001d\u001eB+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bB)\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\n\u0010\u0012J\u0012\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016R\u0014\u0010\u0013\u001a\u00020\u000f8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00058TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/metamoji/un/video/operation/UnVideoMarkerOperation;",
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
        "subtype",
        "Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;",
        "id",
        "",
        "time",
        "",
        "(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;Ljava/lang/String;D)V",
        "type",
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
        "Subtype",
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
.field public static final Companion:Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Companion;

.field public static final KEY_ID:Ljava/lang/String; = "ID"

.field public static final KEY_SUBTYPE:Ljava/lang/String; = "subtype"

.field public static final KEY_TIME:Ljava/lang/String; = "time"

.field public static final TYPE:Ljava/lang/String; = "marker"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation;->Companion:Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;Ljava/lang/String;D)V
    .locals 3

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subtype"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "id"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v1, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->Companion:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits$Companion;

    invoke-virtual {v1}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits$Companion;->getNone()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, v2}, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation;-><init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;Lcom/metamoji/df/model/IModel;)V

    const/4 p1, 0x3

    .line 14
    new-array p1, p1, [Lkotlin/Pair;

    invoke-virtual {p2}, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;->getValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 15
    const-string p2, "ID"

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    .line 16
    const-string/jumbo p2, "time"

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, p1, p3

    .line 13
    invoke-static {p1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    .line 18
    new-instance p2, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    invoke-direct {p2, p1}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {p0, p2}, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation;->setRecord(Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;)V

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
    .locals 10

    .line 48
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation;->getRecord()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->getDic()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 50
    const-string v0, "UnVideoMarkerOperation.Inversion: invalid record"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->Companion:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord$Companion;

    invoke-virtual {v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord$Companion;->getEmpty()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    move-result-object v0

    return-object v0

    .line 53
    :cond_1
    sget-object v1, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;->Companion:Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype$Companion;

    const-string/jumbo v2, "subtype"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype$Companion;->fromValue(I)Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;->Error:Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;

    .line 54
    :cond_2
    const-string v3, "ID"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 55
    const-string/jumbo v5, "time"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    sget-object v6, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;->ordinal()I

    move-result v1

    aget v1, v6, v1

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v1, v8, :cond_6

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_3

    .line 67
    sget-object v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->Companion:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord$Companion;

    invoke-virtual {v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord$Companion;->getEmpty()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    move-result-object v0

    return-object v0

    .line 61
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation;->getTarget()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/video/UnVideoUnit;->getMarkerManager()Lcom/metamoji/un/video/UnVideoMarkerManager;

    move-result-object v1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/un/video/UnVideoMarkerManager;->get(Ljava/lang/String;)Lcom/metamoji/un/video/IUnVideoMarker;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 63
    invoke-interface {v1}, Lcom/metamoji/un/video/IUnVideoMarker;->getTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 65
    :cond_4
    sget-object v1, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;->Move:Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;

    goto :goto_1

    .line 59
    :cond_5
    sget-object v1, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;->Add:Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;

    goto :goto_1

    .line 58
    :cond_6
    sget-object v1, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;->Remove:Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;

    .line 69
    :goto_1
    new-instance v9, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    .line 70
    new-array v6, v6, [Lkotlin/Pair;

    invoke-virtual {v1}, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v6, v2

    .line 71
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v6, v8

    .line 72
    invoke-static {v5, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v6, v7

    .line 69
    invoke-static {v6}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;-><init>(Ljava/util/HashMap;)V

    return-object v9
.end method

.method protected getType()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "marker"

    return-object v0
.end method

.method public performWithObserver(Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 6

    .line 78
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation;->getRecord()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->getDic()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 80
    const-string p1, "UnVideoMarkerOperation.performWithObserver: invalid record"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 84
    :cond_1
    sget-object v1, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;->Companion:Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype$Companion;

    const-string/jumbo v2, "subtype"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype$Companion;->fromValue(I)Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;->Error:Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;

    .line 85
    :cond_2
    const-string v2, "ID"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 86
    const-string/jumbo v3, "time"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation;->getTarget()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/video/UnVideoUnit;->getMarkerManager()Lcom/metamoji/un/video/UnVideoMarkerManager;

    move-result-object v3

    .line 89
    sget-object v4, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;->ordinal()I

    move-result v1

    aget v1, v4, v1

    const/4 v4, 0x1

    const-string/jumbo v5, "toDouble(...)"

    if-eq v1, v4, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_6

    .line 100
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v3, v2, v0, v1}, Lcom/metamoji/un/video/UnVideoMarkerManager;->performMoveMarker(Ljava/lang/String;D)V

    goto :goto_1

    .line 96
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/metamoji/un/video/UnVideoMarkerManager;->performRemoveMarker(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 92
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v3, v2, v0, v1}, Lcom/metamoji/un/video/UnVideoMarkerManager;->performAddMarker(Ljava/lang/String;D)V

    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    .line 106
    invoke-interface {p1}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    .line 107
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation;->getTarget()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/ns/direction/INsDirectionObserver;->pageContentsChanged(Lcom/metamoji/nt/NtPageController;)V

    :cond_7
    :goto_2
    return-void
.end method
