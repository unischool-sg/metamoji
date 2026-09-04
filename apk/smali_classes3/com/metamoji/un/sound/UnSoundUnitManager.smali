.class public final Lcom/metamoji/un/sound/UnSoundUnitManager;
.super Ljava/lang/Object;
.source "UnSoundUnitManager.kt"

# interfaces
.implements Lcom/metamoji/df/sprite/TapListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0019J\u000e\u0010*\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0019J\u000e\u0010+\u001a\u00020(2\u0006\u0010,\u001a\u00020\u0016J\u0008\u0010-\u001a\u00020(H\u0002J\u0008\u0010.\u001a\u00020(H\u0002J\u0010\u0010/\u001a\u00020(2\u0008\u00100\u001a\u0004\u0018\u000101J\u0006\u00102\u001a\u00020(J\u0012\u00103\u001a\u00020(2\u0008\u00104\u001a\u0004\u0018\u000105H\u0016J\u0010\u00106\u001a\u00020(2\u0006\u00107\u001a\u000208H\u0002R\u001c\u0010\u0006\u001a\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00030\u00030\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\u0008\u0012\u0004\u0012\u00020\u000b`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u001b\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0012\u0010 \u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010!R(\u0010\"\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000e8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u00069"
    }
    d2 = {
        "Lcom/metamoji/un/sound/UnSoundUnitManager;",
        "Lcom/metamoji/df/sprite/TapListener;",
        "appFrame",
        "Lcom/metamoji/nt/NtNoteController;",
        "<init>",
        "(Lcom/metamoji/nt/NtNoteController;)V",
        "mNoteController",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "mUnitSet",
        "Ljava/util/HashSet;",
        "",
        "Lkotlin/collections/HashSet;",
        "mEventListenerRegistered",
        "",
        "noteController",
        "getNoteController",
        "()Lcom/metamoji/nt/NtNoteController;",
        "mLocker",
        "Ljava/lang/Object;",
        "mCurrentPageId",
        "mLatestEvent",
        "Lcom/metamoji/nt/NtToolModeChangedContext;",
        "mIsViewMode",
        "mActiveUnit",
        "Lcom/metamoji/un/sound/UnSoundUnit;",
        "v",
        "activeUnit",
        "getActiveUnit",
        "()Lcom/metamoji/un/sound/UnSoundUnit;",
        "setActiveUnit",
        "(Lcom/metamoji/un/sound/UnSoundUnit;)V",
        "mRecognizerEnabled",
        "Ljava/lang/Boolean;",
        "recognizerEnabled",
        "getRecognizerEnabled",
        "()Ljava/lang/Boolean;",
        "setRecognizerEnabled",
        "(Ljava/lang/Boolean;)V",
        "enlistSoundUnit",
        "",
        "unSoundUnit",
        "delistSoundUnit",
        "handleToolModeChangeEvent",
        "event",
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
.field private mActiveUnit:Lcom/metamoji/un/sound/UnSoundUnit;

.field private mCurrentPageId:Ljava/lang/String;

.field private mEventListenerRegistered:Z

.field private mIsViewMode:Z

.field private mLatestEvent:Lcom/metamoji/nt/NtToolModeChangedContext;

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

.field private mRecognizerEnabled:Ljava/lang/Boolean;

.field private final mUnitSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 1

    const-string v0, "appFrame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mNoteController:Ljava/lang/ref/WeakReference;

    .line 13
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mUnitSet:Ljava/util/HashSet;

    .line 17
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mLocker:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 29
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mRecognizerEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method private final getNoteController()Lcom/metamoji/nt/NtNoteController;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mNoteController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtNoteController;

    return-object v0
.end method

.method private final registerListener()V
    .locals 2

    .line 99
    iget-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mEventListenerRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mEventListenerRegistered:Z

    .line 101
    invoke-direct {p0}, Lcom/metamoji/un/sound/UnSoundUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

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

    .line 170
    invoke-direct {p0}, Lcom/metamoji/un/sound/UnSoundUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 171
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getNumberOfLayers()I

    move-result v1

    .line 172
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayerIndex()I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v1, :cond_7

    if-eq v1, v2, :cond_6

    .line 175
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 176
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

    .line 179
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

    .line 181
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v3

    .line 182
    invoke-virtual {v6}, Lcom/metamoji/nt/NtUnitController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 183
    invoke-virtual {v3, v4}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 184
    invoke-virtual/range {v6 .. v11}, Lcom/metamoji/nt/NtUnitController;->unitHitTest(Landroid/graphics/PointF;ZZZZ)Lcom/metamoji/nt/NtUnitController;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 186
    instance-of p1, v3, Lcom/metamoji/un/sound/UnSoundUnit;

    if-eqz p1, :cond_5

    move-object v5, v3

    check-cast v5, Lcom/metamoji/un/sound/UnSoundUnit;

    :cond_5
    if-eqz v5, :cond_7

    .line 187
    invoke-virtual {v5, v7}, Lcom/metamoji/un/sound/UnSoundUnit;->handleTap(Landroid/graphics/PointF;)V

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

    .line 109
    iget-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mEventListenerRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mEventListenerRegistered:Z

    .line 111
    invoke-direct {p0}, Lcom/metamoji/un/sound/UnSoundUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

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
.method public final delistSoundUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V
    .locals 1

    const-string/jumbo v0, "unSoundUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mUnitSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/metamoji/un/sound/UnSoundUnit;->getUnitId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 65
    iget-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mUnitSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 67
    iget-boolean p1, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mIsViewMode:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 68
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/sound/UnSoundUnitManager;->setRecognizerEnabled(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 0

    return-void
.end method

.method public final enlistSoundUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V
    .locals 4

    const-string/jumbo v0, "unSoundUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mUnitSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 53
    invoke-direct {p0}, Lcom/metamoji/un/sound/UnSoundUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    invoke-direct {p0}, Lcom/metamoji/un/sound/UnSoundUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v1

    :cond_1
    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mIsViewMode:Z

    if-eqz v0, :cond_4

    .line 55
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/sound/UnSoundUnitManager;->setRecognizerEnabled(Ljava/lang/Boolean;)V

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mUnitSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/metamoji/un/sound/UnSoundUnit;->getUnitId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getActiveUnit()Lcom/metamoji/un/sound/UnSoundUnit;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mActiveUnit:Lcom/metamoji/un/sound/UnSoundUnit;

    return-object v0
.end method

.method public final getRecognizerEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mRecognizerEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final handleToolModeChangeEvent(Lcom/metamoji/nt/NtToolModeChangedContext;)V
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mLatestEvent:Lcom/metamoji/nt/NtToolModeChangedContext;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mLatestEvent:Lcom/metamoji/nt/NtToolModeChangedContext;

    .line 78
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mUnitSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 82
    monitor-exit v0

    return-void

    .line 85
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mIsViewMode:Z

    .line 86
    invoke-virtual {p1}, Lcom/metamoji/nt/NtToolModeChangedContext;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/nt/NtToolModeChangedContext;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object p1

    sget-object v2, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    move p1, v4

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v5

    :goto_1
    iput-boolean p1, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mIsViewMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_4

    .line 88
    monitor-exit v0

    return-void

    :cond_4
    if-nez p1, :cond_5

    .line 91
    :try_start_2
    iget-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mActiveUnit:Lcom/metamoji/un/sound/UnSoundUnit;

    if-eqz p1, :cond_6

    :cond_5
    move v4, v5

    :cond_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/sound/UnSoundUnitManager;->setRecognizerEnabled(Ljava/lang/Boolean;)V

    .line 92
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setActiveUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V
    .locals 2

    .line 25
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mActiveUnit:Lcom/metamoji/un/sound/UnSoundUnit;

    .line 27
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mUnitSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mIsViewMode:Z

    if-eq v0, v1, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/sound/UnSoundUnitManager;->setRecognizerEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setCurrentPage(Lcom/metamoji/nt/NtPageController;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mCurrentPageId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 122
    monitor-exit v0

    return-void

    .line 124
    :cond_0
    :try_start_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    monitor-exit v0

    .line 126
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 129
    :try_start_2
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mCurrentPageId:Ljava/lang/String;

    .line 130
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1

    :catchall_1
    move-exception p1

    .line 119
    monitor-exit v0

    throw p1
.end method

.method public final setRecognizerEnabled(Ljava/lang/Boolean;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mRecognizerEnabled:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mRecognizerEnabled:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 39
    invoke-direct {p0}, Lcom/metamoji/un/sound/UnSoundUnitManager;->registerListener()V

    return-void

    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/sound/UnSoundUnitManager;->unregisterListener()V

    return-void
.end method

.method public tap(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 7

    if-eqz p1, :cond_6

    .line 138
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/sound/UnSoundUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    .line 144
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 145
    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 150
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/NtUnitController;->unitHitTest(Landroid/graphics/PointF;ZZZZ)Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 152
    iget-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitManager;->mActiveUnit:Lcom/metamoji/un/sound/UnSoundUnit;

    if-eqz p1, :cond_3

    if-eqz p1, :cond_6

    .line 153
    invoke-virtual {p1, v2}, Lcom/metamoji/un/sound/UnSoundUnit;->handleTap(Landroid/graphics/PointF;)V

    return-void

    .line 155
    :cond_3
    instance-of p1, v0, Lcom/metamoji/un/sound/UnSoundUnit;

    if-eqz p1, :cond_4

    check-cast v0, Lcom/metamoji/un/sound/UnSoundUnit;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 156
    invoke-virtual {v0, v2}, Lcom/metamoji/un/sound/UnSoundUnit;->handleTap(Landroid/graphics/PointF;)V

    return-void

    .line 161
    :cond_5
    invoke-direct {p0, p1}, Lcom/metamoji/un/sound/UnSoundUnitManager;->tapPenetrateLayer(Landroid/graphics/PointF;)V

    :cond_6
    :goto_1
    return-void
.end method
