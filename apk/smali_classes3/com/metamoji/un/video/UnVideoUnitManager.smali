.class public final Lcom/metamoji/un/video/UnVideoUnitManager;
.super Ljava/lang/Object;
.source "UnVideoUnitManager.kt"

# interfaces
.implements Lcom/metamoji/df/sprite/TapListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0008\u0010\u001d\u001a\u00020\u0019H\u0002J\u0008\u0010\u001e\u001a\u00020\u0019H\u0002J\u0010\u0010\u001f\u001a\u00020\u00192\u0008\u0010 \u001a\u0004\u0018\u00010!J\u0006\u0010\"\u001a\u00020\u0019J\u0012\u0010#\u001a\u00020\u00192\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0010\u0010&\u001a\u00020\u00192\u0006\u0010\'\u001a\u00020(H\u0002R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0010\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u00030\u00030\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoUnitManager;",
        "Lcom/metamoji/df/sprite/TapListener;",
        "appFrame",
        "Lcom/metamoji/nt/NtNoteController;",
        "<init>",
        "(Lcom/metamoji/nt/NtNoteController;)V",
        "playerManager",
        "Lcom/metamoji/un/video/UnVideoPlayerManager;",
        "getPlayerManager",
        "()Lcom/metamoji/un/video/UnVideoPlayerManager;",
        "mNoteController",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "mUnitSet",
        "Ljava/util/HashSet;",
        "",
        "mEventListenerRegistered",
        "",
        "noteController",
        "getNoteController",
        "()Lcom/metamoji/nt/NtNoteController;",
        "mLocker",
        "Ljava/lang/Object;",
        "mCurrentPageId",
        "enlistVideoUnit",
        "",
        "unVideoUnit",
        "Lcom/metamoji/un/video/UnVideoUnit;",
        "delistVideoUnit",
        "registerListener",
        "unregisterListener",
        "setCurrentPage",
        "page",
        "Lcom/metamoji/nt/NtPageController;",
        "dispose",
        "tap",
        "ev",
        "Lcom/metamoji/df/sprite/TouchEvent;",
        "tapPenetrateLayer",
        "posEv",
        "Landroid/graphics/PointF;",
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
.field private mCurrentPageId:Ljava/lang/String;

.field private mEventListenerRegistered:Z

.field private final mLocker:Ljava/lang/Object;

.field private final mNoteController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/nt/NtNoteController;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnitSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final playerManager:Lcom/metamoji/un/video/UnVideoPlayerManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 1

    const-string v0, "appFrame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/metamoji/un/video/UnVideoPlayerManager;

    invoke-direct {v0}, Lcom/metamoji/un/video/UnVideoPlayerManager;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->playerManager:Lcom/metamoji/un/video/UnVideoPlayerManager;

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->mNoteController:Ljava/lang/ref/WeakReference;

    .line 20
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->mUnitSet:Ljava/util/HashSet;

    .line 24
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->mLocker:Ljava/lang/Object;

    return-void
.end method

.method private final getNoteController()Lcom/metamoji/nt/NtNoteController;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->mNoteController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtNoteController;

    return-object v0
.end method

.method private final registerListener()V
    .locals 2

    .line 51
    iget-boolean v0, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->mEventListenerRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->mEventListenerRegistered:Z

    .line 53
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/metamoji/df/sprite/TapListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtInteractiveEventManager;->addTapListener(Lcom/metamoji/df/sprite/TapListener;)V

    :cond_0
    return-void
.end method

.method private final tapPenetrateLayer(Landroid/graphics/PointF;)V
    .locals 12

    .line 127
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 128
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getNumberOfLayers()I

    move-result v1

    .line 129
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayerIndex()I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v1, :cond_7

    if-eq v1, v2, :cond_6

    .line 132
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 133
    :cond_1
    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/df/sprite/Sprite;->getAlpha()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 136
    invoke-virtual {v3, v4}, Lcom/metamoji/nt/NtLayerController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v3

    instance-of v4, v3, Lcom/metamoji/nt/NtUnitController;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    check-cast v3, Lcom/metamoji/nt/NtUnitController;

    move-object v6, v3

    goto :goto_1

    :cond_3
    move-object v6, v5

    :goto_1
    if-nez v6, :cond_4

    goto :goto_2

    .line 138
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v3

    .line 139
    invoke-virtual {v6}, Lcom/metamoji/nt/NtUnitController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 140
    invoke-virtual {v3, v4}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 141
    invoke-virtual/range {v6 .. v11}, Lcom/metamoji/nt/NtUnitController;->unitHitTest(Landroid/graphics/PointF;ZZZZ)Lcom/metamoji/nt/NtUnitController;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 143
    instance-of p1, v3, Lcom/metamoji/un/video/UnVideoUnit;

    if-eqz p1, :cond_5

    move-object v5, v3

    check-cast v5, Lcom/metamoji/un/video/UnVideoUnit;

    :cond_5
    if-eqz v5, :cond_7

    .line 144
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Lcom/metamoji/un/video/UnVideoUnit;->handleTap(Landroid/graphics/PointF;)V

    return-void

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_7
    :goto_3
    return-void
.end method

.method private final unregisterListener()V
    .locals 2

    .line 61
    iget-boolean v0, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->mEventListenerRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->mEventListenerRegistered:Z

    .line 63
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/metamoji/df/sprite/TapListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeTapListener(Lcom/metamoji/df/sprite/TapListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final delistVideoUnit(Lcom/metamoji/un/video/UnVideoUnit;)V
    .locals 1

    const-string/jumbo v0, "unVideoUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->mUnitSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoUnit;->getUnitId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 42
    iget-object p1, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->mUnitSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnitManager;->unregisterListener()V

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->playerManager:Lcom/metamoji/un/video/UnVideoPlayerManager;

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoPlayerManager;->dispose()V

    return-void
.end method

.method public final enlistVideoUnit(Lcom/metamoji/un/video/UnVideoUnit;)V
    .locals 1

    const-string/jumbo v0, "unVideoUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->mUnitSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoUnit;->getUnitId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object p1, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->mUnitSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnitManager;->registerListener()V

    :cond_0
    return-void
.end method

.method public final getPlayerManager()Lcom/metamoji/un/video/UnVideoPlayerManager;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->playerManager:Lcom/metamoji/un/video/UnVideoPlayerManager;

    return-object v0
.end method

.method public final setCurrentPage(Lcom/metamoji/nt/NtPageController;)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->mCurrentPageId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 74
    monitor-exit v0

    return-void

    .line 76
    :cond_0
    :try_start_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    monitor-exit v0

    .line 78
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->playerManager:Lcom/metamoji/un/video/UnVideoPlayerManager;

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoPlayerManager;->getActiveUnit()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUnit;->hidePlayer()V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2

    .line 83
    :try_start_2
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->mCurrentPageId:Ljava/lang/String;

    .line 84
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1

    :catchall_1
    move-exception p1

    .line 71
    monitor-exit v0

    throw p1
.end method

.method public tap(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 7

    if-eqz p1, :cond_7

    .line 93
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    .line 99
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 100
    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 102
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->playerManager:Lcom/metamoji/un/video/UnVideoPlayerManager;

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoPlayerManager;->getActiveUnit()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->playerManager:Lcom/metamoji/un/video/UnVideoPlayerManager;

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoPlayerManager;->getActiveUnit()Lcom/metamoji/un/video/UnVideoUnit;

    :cond_3
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 105
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/NtUnitController;->unitHitTest(Landroid/graphics/PointF;ZZZZ)Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->playerManager:Lcom/metamoji/un/video/UnVideoPlayerManager;

    invoke-virtual {v1}, Lcom/metamoji/un/video/UnVideoPlayerManager;->getActiveUnit()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 107
    iget-object p1, p0, Lcom/metamoji/un/video/UnVideoUnitManager;->playerManager:Lcom/metamoji/un/video/UnVideoPlayerManager;

    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoPlayerManager;->getActiveUnit()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lcom/metamoji/un/video/UnVideoUnit;->handleTap(Landroid/graphics/PointF;)V

    return-void

    :cond_4
    if-eqz v0, :cond_6

    .line 110
    instance-of p1, v0, Lcom/metamoji/un/video/UnVideoUnit;

    if-eqz p1, :cond_5

    check-cast v0, Lcom/metamoji/un/video/UnVideoUnit;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 112
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/un/video/UnVideoUnit;->handleTap(Landroid/graphics/PointF;)V

    return-void

    .line 117
    :cond_6
    invoke-direct {p0, p1}, Lcom/metamoji/un/video/UnVideoUnitManager;->tapPenetrateLayer(Landroid/graphics/PointF;)V

    :cond_7
    :goto_1
    return-void
.end method
