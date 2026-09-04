.class public final Lcom/metamoji/un/video/operation/UnVideoGeometricOperation;
.super Lcom/metamoji/un/video/operation/UnVideoOperation;
.source "UnVideoGeometricOperation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/operation/UnVideoGeometricOperation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bB\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\n\u0010\u000eJ\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016R\u0014\u0010\u000f\u001a\u00020\u00108TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00058TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/metamoji/un/video/operation/UnVideoGeometricOperation;",
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
        "props",
        "Lcom/metamoji/df/controller/GeometricProps;",
        "(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/df/controller/GeometricProps;)V",
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
.field public static final Companion:Lcom/metamoji/un/video/operation/UnVideoGeometricOperation$Companion;

.field public static final TYPE:Ljava/lang/String; = "geometric"

.field private static final geometricModelProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/metamoji/un/video/operation/UnVideoGeometricOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/video/operation/UnVideoGeometricOperation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/operation/UnVideoGeometricOperation;->Companion:Lcom/metamoji/un/video/operation/UnVideoGeometricOperation$Companion;

    const/4 v0, 0x6

    .line 69
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "x"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 70
    const-string/jumbo v2, "y"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 71
    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 72
    const-string v2, "height"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 73
    const-string/jumbo v2, "rotation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 74
    const-string v2, "contentScale"

    aput-object v2, v0, v1

    .line 68
    sput-object v0, Lcom/metamoji/un/video/operation/UnVideoGeometricOperation;->geometricModelProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/df/controller/GeometricProps;)V
    .locals 6

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "props"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->Companion:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits$Companion;

    invoke-virtual {v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits$Companion;->getNone()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/metamoji/un/video/operation/UnVideoGeometricOperation;-><init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;Lcom/metamoji/df/model/IModel;)V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    iget-object v2, p2, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    if-eqz v2, :cond_2

    .line 21
    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoUnit;->getX()F

    move-result v3

    iget v4, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v3, v4

    if-nez v3, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoUnit;->getY()F

    move-result v3

    iget v4, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    goto :goto_1

    .line 25
    :cond_1
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v4, "y"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_2
    :goto_1
    iget-object v2, p2, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    if-eqz v2, :cond_5

    .line 30
    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoUnit;->getWidth()F

    move-result v3

    iget v4, v2, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float v3, v3, v4

    if-nez v3, :cond_3

    goto :goto_2

    .line 31
    :cond_3
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    iget v4, v2, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string/jumbo v5, "width"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :goto_2
    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoUnit;->getHeight()F

    move-result v3

    iget v4, v2, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v3, v3, v4

    if-nez v3, :cond_4

    goto :goto_3

    .line 34
    :cond_4
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v4, "height"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_5
    :goto_3
    iget-object v2, p2, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    if-eqz v2, :cond_7

    .line 40
    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoUnit;->getRotation()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(FLjava/lang/Float;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    .line 42
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(FLjava/lang/Float;)Z

    move-result v3

    const-string/jumbo v4, "rotation"

    if-nez v3, :cond_6

    .line 43
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 45
    :cond_6
    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_7
    :goto_4
    iget-object p2, p2, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    if-eqz p2, :cond_9

    .line 51
    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoUnit;->getContentScale()D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(FLjava/lang/Float;)Z

    move-result p1

    if-nez p1, :cond_9

    const/high16 p1, 0x3f800000    # 1.0f

    .line 53
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(FLjava/lang/Float;)Z

    move-result p1

    const-string v2, "contentScale"

    if-nez p1, :cond_8

    .line 54
    move-object p1, v0

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 56
    :cond_8
    move-object p1, v0

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_9
    :goto_5
    new-instance p1, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    invoke-direct {p1, v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/un/video/operation/UnVideoGeometricOperation;->setRecord(Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "traits"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/un/video/operation/UnVideoOperation;-><init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static final synthetic access$getGeometricModelProperties$cp()[Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lcom/metamoji/un/video/operation/UnVideoGeometricOperation;->geometricModelProperties:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getInversion()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;
    .locals 9

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoGeometricOperation;->getTarget()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/video/UnVideoUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 84
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoGeometricOperation;->getRecord()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->getDic()Ljava/util/HashMap;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 86
    sget-object v3, Lcom/metamoji/un/video/operation/UnVideoGeometricOperation;->geometricModelProperties:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 87
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 91
    move-object v7, v0

    check-cast v7, Ljava/util/Map;

    invoke-interface {v1, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 95
    :cond_2
    new-instance v1, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    invoke-direct {v1, v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;-><init>(Ljava/util/HashMap;)V

    return-object v1
.end method

.method protected getType()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "geometric"

    return-object v0
.end method

.method public performWithObserver(Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 8

    .line 99
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoGeometricOperation;->getRecord()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->getDic()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoGeometricOperation;->getTarget()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/video/UnVideoUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 102
    sget-object v2, Lcom/metamoji/un/video/operation/UnVideoGeometricOperation;->geometricModelProperties:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 103
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 104
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 106
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v6

    .line 107
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {v1, v5, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    goto :goto_1

    .line 109
    :cond_1
    invoke-interface {v1, v5}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoGeometricOperation;->getTarget()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUnit;->refreshSpriteGeometry()V

    if-eqz p1, :cond_4

    .line 116
    invoke-interface {p1}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    .line 117
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoGeometricOperation;->getTarget()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/ns/direction/INsDirectionObserver;->pageContentsChanged(Lcom/metamoji/nt/NtPageController;)V

    :cond_4
    :goto_2
    return-void
.end method
