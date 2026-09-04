.class public final Lcom/metamoji/un/video/UnVideoMarkerManager;
.super Ljava/lang/Object;
.source "UnVideoMarkerManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/UnVideoMarkerManager$Marker;,
        Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u001e\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001:\u000212B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\r\u001a\u00020\u000cH\u0002J\u0013\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000f\u001a\u00020\u0008H\u0086\u0002J\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\tJ\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000cH\u0002J\n\u0010\'\u001a\u00020(*\u00020)J\u000e\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020$J\u0012\u0010,\u001a\u00020\u00112\u0008\u0010-\u001a\u0004\u0018\u00010\tH\u0002J\u000e\u0010,\u001a\u00020\u00112\u0006\u0010+\u001a\u00020$J\u0016\u0010.\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010+\u001a\u00020$J\u000e\u0010/\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u0008J\u0016\u00100\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010+\u001a\u00020$R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007j\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0013\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u001d\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001b8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u0017\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&\u00a8\u00063"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoMarkerManager;",
        "",
        "videoUnit",
        "Lcom/metamoji/un/video/UnVideoUnit;",
        "<init>",
        "(Lcom/metamoji/un/video/UnVideoUnit;)V",
        "mMarkerDic",
        "Ljava/util/HashMap;",
        "",
        "Lcom/metamoji/un/video/IUnVideoMarker;",
        "Lkotlin/collections/HashMap;",
        "mMarkerModel",
        "Lcom/metamoji/df/model/IModel;",
        "getOrCreateMarkerModel",
        "get",
        "id",
        "set",
        "",
        "m",
        "count",
        "",
        "getCount",
        "()I",
        "restoreFromModel",
        "markerModel",
        "mPresenter",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/metamoji/un/video/IUnVideoMarkerPresenter;",
        "v",
        "presenter",
        "getPresenter",
        "()Lcom/metamoji/un/video/IUnVideoMarkerPresenter;",
        "setPresenter",
        "(Lcom/metamoji/un/video/IUnVideoMarkerPresenter;)V",
        "markersForView",
        "",
        "",
        "getMarkersForView",
        "()Ljava/util/Collection;",
        "toBytes",
        "",
        "Ljava/util/UUID;",
        "addMarker",
        "time",
        "removeMarker",
        "marker",
        "performAddMarker",
        "performRemoveMarker",
        "performMoveMarker",
        "Marker",
        "ProvisionalMarker",
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


# instance fields
.field private final mMarkerDic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/un/video/IUnVideoMarker;",
            ">;"
        }
    .end annotation
.end field

.field private mMarkerModel:Lcom/metamoji/df/model/IModel;

.field private mPresenter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/un/video/IUnVideoMarkerPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final videoUnit:Lcom/metamoji/un/video/UnVideoUnit;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/video/UnVideoUnit;)V
    .locals 1

    const-string/jumbo v0, "videoUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->videoUnit:Lcom/metamoji/un/video/UnVideoUnit;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerDic:Ljava/util/HashMap;

    .line 46
    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const-string v0, "markers"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerModel:Lcom/metamoji/df/model/IModel;

    .line 49
    invoke-direct {p0, p1}, Lcom/metamoji/un/video/UnVideoMarkerManager;->restoreFromModel(Lcom/metamoji/df/model/IModel;)V

    :cond_0
    return-void
.end method

.method private final getOrCreateMarkerModel()Lcom/metamoji/df/model/IModel;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerModel:Lcom/metamoji/df/model/IModel;

    if-nez v0, :cond_0

    sget-object v0, Lcom/metamoji/un/video/UnVideoUnit;->Companion:Lcom/metamoji/un/video/UnVideoUnit$Companion;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->videoUnit:Lcom/metamoji/un/video/UnVideoUnit;

    invoke-virtual {v1}, Lcom/metamoji/un/video/UnVideoUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    const-string v2, "getModel(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/un/video/UnVideoUnit$Companion;->createMarkerModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 41
    :cond_0
    iput-object v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerModel:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method static final performAddMarker$lambda$5(Lcom/metamoji/un/video/IUnVideoMarkerPresenter;Lcom/metamoji/un/video/IUnVideoMarker;)V
    .locals 0

    .line 235
    invoke-interface {p0, p1}, Lcom/metamoji/un/video/IUnVideoMarkerPresenter;->markerAdded(Lcom/metamoji/un/video/IUnVideoMarker;)V

    return-void
.end method

.method static final performRemoveMarker$lambda$7(Lcom/metamoji/un/video/IUnVideoMarkerPresenter;Lcom/metamoji/un/video/IUnVideoMarker;)V
    .locals 0

    .line 259
    invoke-interface {p0, p1}, Lcom/metamoji/un/video/IUnVideoMarkerPresenter;->markerRemoved(Lcom/metamoji/un/video/IUnVideoMarker;)V

    return-void
.end method

.method private final removeMarker(Lcom/metamoji/un/video/IUnVideoMarker;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 160
    new-instance v0, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->videoUnit:Lcom/metamoji/un/video/UnVideoUnit;

    sget-object v2, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;->Remove:Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;

    invoke-interface {p1}, Lcom/metamoji/un/video/IUnVideoMarker;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/metamoji/un/video/IUnVideoMarker;->getTime()D

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation;-><init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;Ljava/lang/String;D)V

    .line 161
    invoke-virtual {v0}, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation;->perform()V

    :cond_0
    return-void
.end method

.method private final restoreFromModel(Lcom/metamoji/df/model/IModel;)V
    .locals 6

    .line 80
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerModel:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x21

    if-eq v2, v3, :cond_1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 84
    invoke-interface {p1, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 85
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_1

    .line 86
    iget-object v4, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerDic:Ljava/util/HashMap;

    check-cast v4, Ljava/util/Map;

    new-instance v5, Lcom/metamoji/un/video/UnVideoMarkerManager$Marker;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v5, v1, v2, v3}, Lcom/metamoji/un/video/UnVideoMarkerManager$Marker;-><init>(Ljava/lang/String;D)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final addMarker(D)V
    .locals 14

    .line 142
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerDic:Ljava/util/HashMap;

    monitor-enter v1

    .line 145
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v2, "randomUUID(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/un/video/UnVideoMarkerManager;->toBytes(Ljava/util/UUID;)[B

    move-result-object v0

    const/4 v2, 0x0

    .line 146
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v3, 0x16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "substring(...)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, v7}, Lcom/metamoji/un/video/UnVideoMarkerManager;->get(Ljava/lang/String;)Lcom/metamoji/un/video/IUnVideoMarker;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerDic:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    new-instance v8, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;-><init>(Ljava/lang/String;DILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit v1

    .line 151
    new-instance v4, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation;

    iget-object v5, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->videoUnit:Lcom/metamoji/un/video/UnVideoUnit;

    sget-object v6, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;->Add:Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;

    move-wide v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation;-><init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/operation/UnVideoMarkerOperation$Subtype;Ljava/lang/String;D)V

    .line 152
    invoke-virtual {v4}, Lcom/metamoji/un/video/operation/UnVideoMarkerOperation;->perform()V

    return-void

    :catchall_0
    move-exception v0

    .line 142
    monitor-exit v1

    throw v0
.end method

.method public final get(Ljava/lang/String;)Lcom/metamoji/un/video/IUnVideoMarker;
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerDic:Ljava/util/HashMap;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerDic:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/video/IUnVideoMarker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getCount()I
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerDic:Ljava/util/HashMap;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerDic:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getMarkersForView()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoMarkerManager;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerDic:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/video/IUnVideoMarker;

    invoke-interface {v2}, Lcom/metamoji/un/video/IUnVideoMarker;->getTime()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_0
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final getPresenter()Lcom/metamoji/un/video/IUnVideoMarkerPresenter;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mPresenter:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/video/IUnVideoMarkerPresenter;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final performAddMarker(Ljava/lang/String;D)V
    .locals 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerDic:Ljava/util/HashMap;

    monitor-enter v0

    .line 207
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/video/UnVideoMarkerManager;->get(Ljava/lang/String;)Lcom/metamoji/un/video/IUnVideoMarker;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 208
    instance-of v2, v1, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    invoke-interface {v1}, Lcom/metamoji/un/video/IUnVideoMarker;->getTime()D

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-double v2, v2, p2

    if-nez v2, :cond_1

    .line 217
    monitor-exit v0

    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 211
    :cond_2
    :goto_0
    :try_start_1
    new-instance v1, Lcom/metamoji/un/video/UnVideoMarkerManager$Marker;

    invoke-direct {v1, p1, p2, p3}, Lcom/metamoji/un/video/UnVideoMarkerManager$Marker;-><init>(Ljava/lang/String;D)V

    .line 212
    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerDic:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    check-cast v1, Lcom/metamoji/un/video/IUnVideoMarker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    .line 206
    :goto_1
    monitor-exit v0

    if-eqz v2, :cond_3

    .line 225
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/un/video/UnVideoMarkerManager;->performMoveMarker(Ljava/lang/String;D)V

    return-void

    .line 229
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoMarkerManager;->getOrCreateMarkerModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 230
    invoke-interface {v0, p1, p2, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 232
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoMarkerManager;->getPresenter()Lcom/metamoji/un/video/IUnVideoMarkerPresenter;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 234
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance p3, Lcom/metamoji/un/video/UnVideoMarkerManager$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, v1}, Lcom/metamoji/un/video/UnVideoMarkerManager$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/video/IUnVideoMarkerPresenter;Lcom/metamoji/un/video/IUnVideoMarker;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 206
    monitor-exit v0

    throw p1
.end method

.method public final performMoveMarker(Ljava/lang/String;D)V
    .locals 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerDic:Ljava/util/HashMap;

    monitor-enter v0

    .line 269
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/video/UnVideoMarkerManager;->get(Ljava/lang/String;)Lcom/metamoji/un/video/IUnVideoMarker;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 270
    invoke-interface {v1}, Lcom/metamoji/un/video/IUnVideoMarker;->getTime()D

    move-result-wide v2

    cmpg-double v2, v2, p2

    if-nez v2, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    new-instance v2, Lcom/metamoji/un/video/UnVideoMarkerManager$Marker;

    invoke-interface {v1}, Lcom/metamoji/un/video/IUnVideoMarker;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p2, p3}, Lcom/metamoji/un/video/UnVideoMarkerManager$Marker;-><init>(Ljava/lang/String;D)V

    .line 272
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerDic:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit v0

    .line 279
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoMarkerManager;->getOrCreateMarkerModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 280
    invoke-interface {v0, p1, p2, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 281
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoMarkerManager;->getPresenter()Lcom/metamoji/un/video/IUnVideoMarkerPresenter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 283
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    .line 284
    check-cast v2, Lcom/metamoji/un/video/IUnVideoMarker;

    invoke-interface {p1, v2}, Lcom/metamoji/un/video/IUnVideoMarkerPresenter;->markerMoved(Lcom/metamoji/un/video/IUnVideoMarker;)V

    :cond_1
    return-void

    .line 275
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 268
    monitor-exit v0

    throw p1
.end method

.method public final performRemoveMarker(Ljava/lang/String;)V
    .locals 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerDic:Ljava/util/HashMap;

    monitor-enter v0

    .line 246
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/video/UnVideoMarkerManager;->get(Ljava/lang/String;)Lcom/metamoji/un/video/IUnVideoMarker;

    move-result-object v1

    .line 247
    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerModel:Lcom/metamoji/df/model/IModel;

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object v3, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerDic:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-interface {v2, p1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit v0

    .line 256
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoMarkerManager;->getPresenter()Lcom/metamoji/un/video/IUnVideoMarkerPresenter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 258
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/un/video/UnVideoMarkerManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, v1}, Lcom/metamoji/un/video/UnVideoMarkerManager$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/un/video/IUnVideoMarkerPresenter;Lcom/metamoji/un/video/IUnVideoMarker;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    .line 249
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 245
    monitor-exit v0

    throw p1
.end method

.method public final removeMarker(D)V
    .locals 7

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoMarkerManager;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerDic:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/video/IUnVideoMarker;

    invoke-interface {v3}, Lcom/metamoji/un/video/IUnVideoMarker;->getTime()D

    move-result-wide v3

    const/16 v5, 0x3e8

    int-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v3

    mul-double/2addr v5, p1

    invoke-static {v5, v6}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 174
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, "iterator(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "next(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/metamoji/un/video/IUnVideoMarker;

    .line 178
    invoke-direct {p0, p2}, Lcom/metamoji/un/video/UnVideoMarkerManager;->removeMarker(Lcom/metamoji/un/video/IUnVideoMarker;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final set(Ljava/lang/String;Lcom/metamoji/un/video/IUnVideoMarker;)V
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "m"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerDic:Ljava/util/HashMap;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mMarkerDic:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setPresenter(Lcom/metamoji/un/video/IUnVideoMarkerPresenter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager;->mPresenter:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final toBytes(Ljava/util/UUID;)[B
    .locals 9

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 122
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    const/16 p1, 0x10

    .line 124
    new-array v4, p1, [B

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    rsub-int/lit8 v7, v5, 0x7

    mul-int/2addr v7, v6

    shr-long v6, v0, v7

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 127
    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_1
    if-ge v0, p1, :cond_1

    rsub-int/lit8 v1, v0, 0xf

    mul-int/2addr v1, v6

    shr-long v7, v2, v1

    long-to-int v1, v7

    int-to-byte v1, v1

    .line 131
    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v4
.end method
