.class public final Lcom/metamoji/un/flip/UnFlipUnitManager;
.super Ljava/lang/Object;
.source "UnFlipUnitManager.kt"

# interfaces
.implements Lcom/metamoji/df/sprite/TapListener;
.implements Lcom/metamoji/nt/ICommandProcessor;
.implements Lcom/metamoji/un/flip/ui/IUnFlipUnitAnimationDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/flip/UnFlipUnitManager$Companion;,
        Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;,
        Lcom/metamoji/un/flip/UnFlipUnitManager$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\u0018\u0000 X2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002WXB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u000eJ\u000e\u0010(\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u000eJ\u000e\u0010)\u001a\u00020&2\u0006\u0010*\u001a\u00020\u0019J\u0006\u0010+\u001a\u00020&J\u0008\u0010,\u001a\u00020&H\u0002J\u0008\u0010-\u001a\u00020&H\u0002J\u0010\u0010.\u001a\u00020&2\u0008\u0010/\u001a\u0004\u0018\u000100J\u0006\u00101\u001a\u00020&J\u0006\u00104\u001a\u00020&J\u0012\u00105\u001a\u00020&2\u0008\u00106\u001a\u0004\u0018\u000107H\u0002J\u0010\u00108\u001a\u00020&2\u0008\u00106\u001a\u0004\u0018\u000107J\u0012\u00109\u001a\u00020&2\u0008\u00106\u001a\u0004\u0018\u000107H\u0016J \u0010:\u001a\u00020&2\u0006\u0010;\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\u0011H\u0002J\u001c\u0010?\u001a\u00020\u00112\u0008\u0010@\u001a\u0004\u0018\u00010A2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0016J\u001a\u0010D\u001a\u00020\u00112\u0008\u0010@\u001a\u0004\u0018\u00010A2\u0006\u0010E\u001a\u00020\u0011H\u0016J\u001a\u0010F\u001a\u00020\u00112\u0008\u0010@\u001a\u0004\u0018\u00010A2\u0006\u0010G\u001a\u00020HH\u0016J\u0010\u0010I\u001a\u00020\u00112\u0006\u0010@\u001a\u00020AH\u0016J\u0006\u0010J\u001a\u00020&J\u0008\u0010K\u001a\u00020&H\u0002J\u0008\u0010L\u001a\u00020&H\u0002J\u0010\u0010M\u001a\u00020&2\u0006\u0010N\u001a\u00020HH\u0002J \u0010O\u001a\u00020\u00112\u0016\u0010P\u001a\u0012\u0012\u0004\u0012\u00020\u000e0Qj\u0008\u0012\u0004\u0012\u00020\u000e`RH\u0002J\u0006\u0010S\u001a\u00020&J\u0016\u0010T\u001a\u00020&2\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u000e0UH\u0016J\u0008\u0010V\u001a\u00020&H\u0016R\u001c\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n \n*\u0004\u0018\u00010\u00050\u00050\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010 \u001a\u0004\u0018\u00010\u00112\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00118F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/metamoji/un/flip/UnFlipUnitManager;",
        "Lcom/metamoji/df/sprite/TapListener;",
        "Lcom/metamoji/nt/ICommandProcessor;",
        "Lcom/metamoji/un/flip/ui/IUnFlipUnitAnimationDelegate;",
        "appFrame",
        "Lcom/metamoji/nt/NtNoteController;",
        "<init>",
        "(Lcom/metamoji/nt/NtNoteController;)V",
        "mNoteController",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "mUnitMap",
        "Ljava/util/HashMap;",
        "",
        "Lcom/metamoji/un/flip/UnFlipUnit;",
        "Lkotlin/collections/HashMap;",
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
        "mRecognizerEnabled",
        "Ljava/lang/Boolean;",
        "mAnimation",
        "Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;",
        "v",
        "recognizerEnabled",
        "getRecognizerEnabled",
        "()Ljava/lang/Boolean;",
        "setRecognizerEnabled",
        "(Ljava/lang/Boolean;)V",
        "enlistFlipUnit",
        "",
        "unFlipUnit",
        "delistFlipUnit",
        "handleToolModeChangeEvent",
        "event",
        "checkSelection",
        "registerListener",
        "unregisterListener",
        "setCurrentPage",
        "page",
        "Lcom/metamoji/nt/NtPageController;",
        "dispose",
        "mDoubleTapTimeoutJob",
        "Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;",
        "cancelDoubleTapTimeout",
        "startTappedTimer",
        "ev",
        "Lcom/metamoji/df/sprite/TouchEvent;",
        "onTapped",
        "tap",
        "tappedUnit",
        "flipUnit",
        "pos",
        "Landroid/graphics/PointF;",
        "isDoubleTapped",
        "performCommand",
        "command",
        "Lcom/metamoji/nt/NtCommand;",
        "context",
        "Lcom/metamoji/cm/CmContext;",
        "processEnableCommand",
        "enabled",
        "processSelectCommand",
        "selected",
        "",
        "processInhibitCommand",
        "updateAllFlipUnit",
        "handleFlipUnitFlipOverAll",
        "handleFlipUnitFlipBackAll",
        "flipUnitFlipToFlipState",
        "flipState",
        "prepareToAnimation",
        "units",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "startAnimation",
        "animationEnding",
        "",
        "animationCompleted",
        "DoubleTapTimeoutJob",
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
.field public static final Companion:Lcom/metamoji/un/flip/UnFlipUnitManager$Companion;


# instance fields
.field private mAnimation:Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;

.field private mCurrentPageId:Ljava/lang/String;

.field private mDoubleTapTimeoutJob:Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;

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

.field private final mUnitMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/un/flip/UnFlipUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/un/flip/UnFlipUnitManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/flip/UnFlipUnitManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/flip/UnFlipUnitManager;->Companion:Lcom/metamoji/un/flip/UnFlipUnitManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 1

    const-string v0, "appFrame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mNoteController:Ljava/lang/ref/WeakReference;

    .line 24
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mUnitMap:Ljava/util/HashMap;

    .line 28
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mLocker:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 32
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mRecognizerEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method private final flipUnitFlipToFlipState(I)V
    .locals 7

    .line 502
    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 505
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 506
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 507
    iget-object v4, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mUnitMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "next(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/metamoji/un/flip/UnFlipUnit;

    .line 509
    invoke-virtual {v5}, Lcom/metamoji/un/flip/UnFlipUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 511
    sget-object v6, Lcom/metamoji/un/flip/UnFlipUnitManager;->Companion:Lcom/metamoji/un/flip/UnFlipUnitManager$Companion;

    invoke-virtual {v6, v5, v0, v1}, Lcom/metamoji/un/flip/UnFlipUnitManager$Companion;->isFlippableUnit(Lcom/metamoji/un/flip/UnFlipUnit;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 513
    invoke-virtual {v5}, Lcom/metamoji/un/flip/UnFlipUnit;->getFlipState()I

    move-result v6

    if-eq v6, p1, :cond_2

    .line 514
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 521
    :cond_3
    invoke-direct {p0, v3}, Lcom/metamoji/un/flip/UnFlipUnitManager;->prepareToAnimation(Ljava/util/ArrayList;)Z

    move-result v0

    .line 524
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v3, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2, p1, v0}, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/un/flip/UnFlipUnitManager;Ljava/util/ArrayList;IZ)V

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v3, v4, v5}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static final flipUnitFlipToFlipState$lambda$3(Lcom/metamoji/un/flip/UnFlipUnitManager;Ljava/util/ArrayList;IZ)V
    .locals 5

    .line 525
    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v1

    .line 529
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v2, "iterator(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "next(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/metamoji/un/flip/UnFlipUnit;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 530
    invoke-virtual {v2, p2, v3, v1, v4}, Lcom/metamoji/un/flip/UnFlipUnit;->setFlipState(IZLcom/metamoji/df/controller/EditContext;Z)Z

    if-ne p2, v4, :cond_2

    .line 533
    invoke-virtual {v2}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 537
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    :cond_4
    if-eqz p3, :cond_5

    .line 541
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->startAnimation()V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_6

    .line 537
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    :cond_6
    throw p0
.end method

.method private final getNoteController()Lcom/metamoji/nt/NtNoteController;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mNoteController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtNoteController;

    return-object v0
.end method

.method private final handleFlipUnitFlipBackAll()V
    .locals 1

    const/4 v0, 0x0

    .line 498
    invoke-direct {p0, v0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->flipUnitFlipToFlipState(I)V

    return-void
.end method

.method private final handleFlipUnitFlipOverAll()V
    .locals 1

    const/4 v0, 0x1

    .line 494
    invoke-direct {p0, v0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->flipUnitFlipToFlipState(I)V

    return-void
.end method

.method public static final isFlippableUnit(Lcom/metamoji/un/flip/UnFlipUnit;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/flip/UnFlipUnitManager;->Companion:Lcom/metamoji/un/flip/UnFlipUnitManager$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/flip/UnFlipUnitManager$Companion;->isFlippableUnit(Lcom/metamoji/un/flip/UnFlipUnit;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;)Z

    move-result p0

    return p0
.end method

.method private final prepareToAnimation(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/flip/UnFlipUnit;",
            ">;)Z"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mAnimation:Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 552
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 553
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/flip/UnFlipUnitManager;Ljava/util/ArrayList;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method static final prepareToAnimation$lambda$4(Lcom/metamoji/un/flip/UnFlipUnitManager;Ljava/util/ArrayList;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mAnimation:Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;

    if-nez v0, :cond_0

    .line 555
    new-instance v0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p1}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mAnimation:Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;

    .line 556
    move-object p1, p0

    check-cast p1, Lcom/metamoji/un/flip/ui/IUnFlipUnitAnimationDelegate;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->setAnimationDelegate(Lcom/metamoji/un/flip/ui/IUnFlipUnitAnimationDelegate;)V

    .line 559
    :cond_0
    iget-object p0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mAnimation:Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->prepareToAnimation(Landroidx/fragment/app/FragmentActivity;)V

    :cond_1
    return-void
.end method

.method private final registerListener()V
    .locals 2

    .line 149
    iget-boolean v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mEventListenerRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mEventListenerRegistered:Z

    .line 151
    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

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

.method static final startAnimation$lambda$5(Lcom/metamoji/un/flip/UnFlipUnitManager;)V
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mAnimation:Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->startAnimation()V

    :cond_0
    return-void
.end method

.method private final startTappedTimer(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 4

    .line 199
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->cancelDoubleTapTimeout()V

    .line 202
    new-instance v1, Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;-><init>(Lcom/metamoji/un/flip/UnFlipUnitManager;Lcom/metamoji/df/sprite/TouchEvent;)V

    iput-object v1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mDoubleTapTimeoutJob:Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;

    .line 203
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p1

    .line 204
    iget-object v1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mDoubleTapTimeoutJob:Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;

    const-string v2, "null cannot be cast to non-null type java.lang.Runnable"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final tappedUnit(Lcom/metamoji/un/flip/UnFlipUnit;Landroid/graphics/PointF;Z)V
    .locals 1

    if-nez p3, :cond_0

    .line 417
    invoke-virtual {p1, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->handleTap(Landroid/graphics/PointF;)V

    return-void

    .line 420
    :cond_0
    new-instance p2, Lcom/metamoji/cm/CmContext;

    invoke-direct {p2}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 421
    sget-object p3, Lcom/metamoji/nt/NtCommand;->CMD_FLIP_UNIT_FLIP_BACK_ALL:Lcom/metamoji/nt/NtCommand;

    .line 422
    invoke-virtual {p1}, Lcom/metamoji/un/flip/UnFlipUnit;->getFlipState()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 426
    :cond_1
    sget-object p3, Lcom/metamoji/nt/NtCommand;->CMD_FLIP_UNIT_FLIP_BACK_ALL:Lcom/metamoji/nt/NtCommand;

    goto :goto_0

    .line 424
    :cond_2
    sget-object p3, Lcom/metamoji/nt/NtCommand;->CMD_FLIP_UNIT_FLIP_OVER_ALL:Lcom/metamoji/nt/NtCommand;

    .line 428
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, p3, p2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_3
    return-void
.end method

.method private final unregisterListener()V
    .locals 2

    .line 159
    iget-boolean v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mEventListenerRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mEventListenerRegistered:Z

    .line 161
    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

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
.method public animationCompleted()V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mAnimation:Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {v0, v1}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->setAnimationDelegate(Lcom/metamoji/un/flip/ui/IUnFlipUnitAnimationDelegate;)V

    .line 586
    :cond_0
    iput-object v1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mAnimation:Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;

    :cond_1
    return-void
.end method

.method public animationEnding(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/metamoji/un/flip/UnFlipUnit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "units"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/flip/UnFlipUnit;

    .line 579
    invoke-virtual {v0}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final cancelDoubleTapTimeout()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mDoubleTapTimeoutJob:Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mDoubleTapTimeoutJob:Lcom/metamoji/un/flip/UnFlipUnitManager$DoubleTapTimeoutJob;

    :cond_1
    return-void
.end method

.method public final checkSelection()V
    .locals 5

    .line 117
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mUnitMap:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 118
    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtUnitController;

    .line 124
    invoke-virtual {v2}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$flipunit"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    const-string v3, "null cannot be cast to non-null type com.metamoji.un.flip.UnFlipUnit"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/metamoji/un/flip/UnFlipUnit;

    .line 126
    invoke-virtual {v2}, Lcom/metamoji/un/flip/UnFlipUnit;->getUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-boolean v3, v2, Lcom/metamoji/un/flip/UnFlipUnit;->isSelected:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    .line 128
    iput-boolean v3, v2, Lcom/metamoji/un/flip/UnFlipUnit;->isSelected:Z

    .line 129
    invoke-virtual {v2}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    goto :goto_1

    .line 137
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/metamoji/un/flip/UnFlipUnit;

    .line 138
    iget-boolean v2, v1, Lcom/metamoji/un/flip/UnFlipUnit;->isSelected:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 139
    iput-boolean v2, v1, Lcom/metamoji/un/flip/UnFlipUnit;->isSelected:Z

    .line 140
    invoke-virtual {v1}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final delistFlipUnit(Lcom/metamoji/un/flip/UnFlipUnit;)V
    .locals 1

    const-string/jumbo v0, "unFlipUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mUnitMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/flip/UnFlipUnit;->getUnitId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object p1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mUnitMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 88
    iget-boolean p1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mIsViewMode:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 89
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/flip/UnFlipUnitManager;->setRecognizerEnabled(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 0

    return-void
.end method

.method public final enlistFlipUnit(Lcom/metamoji/un/flip/UnFlipUnit;)V
    .locals 4

    const-string/jumbo v0, "unFlipUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mUnitMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 74
    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

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

    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

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
    iput-boolean v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mIsViewMode:Z

    if-eqz v0, :cond_4

    .line 76
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->setRecognizerEnabled(Ljava/lang/Boolean;)V

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mUnitMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/metamoji/un/flip/UnFlipUnit;->getUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getRecognizerEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mRecognizerEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final handleToolModeChangeEvent(Lcom/metamoji/nt/NtToolModeChangedContext;)V
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mLatestEvent:Lcom/metamoji/nt/NtToolModeChangedContext;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mLatestEvent:Lcom/metamoji/nt/NtToolModeChangedContext;

    .line 99
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mUnitMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 103
    monitor-exit v0

    return-void

    .line 106
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mIsViewMode:Z

    .line 107
    invoke-virtual {p1}, Lcom/metamoji/nt/NtToolModeChangedContext;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/nt/NtToolModeChangedContext;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object p1

    sget-object v2, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mIsViewMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_4

    .line 109
    monitor-exit v0

    return-void

    .line 112
    :cond_4
    :try_start_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/flip/UnFlipUnitManager;->setRecognizerEnabled(Ljava/lang/Boolean;)V

    .line 113
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onTapped(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 18

    move-object/from16 v0, p0

    if-eqz p1, :cond_c

    .line 209
    invoke-interface/range {p1 .. p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 211
    :cond_0
    invoke-direct {v0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 212
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    if-nez v3, :cond_2

    goto/16 :goto_3

    .line 213
    :cond_2
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v4

    if-nez v4, :cond_3

    goto/16 :goto_3

    .line 215
    :cond_3
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v10

    .line 216
    invoke-virtual {v4}, Lcom/metamoji/nt/NtUnitController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    .line 217
    invoke-virtual {v10, v5}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    .line 219
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v11

    .line 220
    invoke-virtual {v11}, Lcom/metamoji/nt/NtEditorWindowController;->editingOfOthersObjectsIsRestricted()Z

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/nt/NtUnitController;->unitHitTest(Landroid/graphics/PointF;ZZZZ)Lcom/metamoji/nt/NtUnitController;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    .line 222
    instance-of v1, v4, Lcom/metamoji/un/flip/UnFlipUnit;

    if-eqz v1, :cond_4

    move-object v6, v4

    check-cast v6, Lcom/metamoji/un/flip/UnFlipUnit;

    :cond_4
    if-eqz v6, :cond_c

    .line 224
    invoke-interface/range {p1 .. p1}, Lcom/metamoji/df/sprite/TouchEvent;->doubleTapped()Z

    move-result v1

    .line 226
    sget-object v4, Lcom/metamoji/un/flip/UnFlipUnitManager;->Companion:Lcom/metamoji/un/flip/UnFlipUnitManager$Companion;

    invoke-virtual {v4, v6, v2, v3}, Lcom/metamoji/un/flip/UnFlipUnitManager$Companion;->isFlippableUnit(Lcom/metamoji/un/flip/UnFlipUnit;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 227
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v6, v5, v1}, Lcom/metamoji/un/flip/UnFlipUnitManager;->tappedUnit(Lcom/metamoji/un/flip/UnFlipUnit;Landroid/graphics/PointF;Z)V

    return-void

    .line 233
    :cond_5
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getNumberOfLayers()I

    move-result v4

    .line 234
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getCurrentLayerIndex()I

    move-result v5

    add-int/lit8 v4, v4, -0x1

    :goto_0
    const/4 v7, -0x1

    if-ge v7, v4, :cond_c

    if-eq v4, v5, :cond_b

    .line 237
    invoke-virtual {v3, v4}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v7

    if-nez v7, :cond_6

    goto :goto_2

    .line 238
    :cond_6
    invoke-virtual {v7}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v7}, Lcom/metamoji/nt/NtLayerController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/df/sprite/Sprite;->getAlpha()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_7

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    .line 241
    invoke-virtual {v7, v8}, Lcom/metamoji/nt/NtLayerController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v7

    instance-of v8, v7, Lcom/metamoji/nt/NtUnitController;

    if-eqz v8, :cond_8

    check-cast v7, Lcom/metamoji/nt/NtUnitController;

    move-object v12, v7

    goto :goto_1

    :cond_8
    move-object v12, v6

    :goto_1
    if-nez v12, :cond_9

    goto :goto_2

    .line 243
    :cond_9
    invoke-virtual {v12}, Lcom/metamoji/nt/NtUnitController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    .line 244
    invoke-virtual {v10, v7}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v13

    .line 245
    invoke-virtual {v11}, Lcom/metamoji/nt/NtEditorWindowController;->editingOfOthersObjectsIsRestricted()Z

    move-result v14

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v12 .. v17}, Lcom/metamoji/nt/NtUnitController;->unitHitTest(Landroid/graphics/PointF;ZZZZ)Lcom/metamoji/nt/NtUnitController;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 247
    instance-of v1, v7, Lcom/metamoji/un/flip/UnFlipUnit;

    if-eqz v1, :cond_a

    move-object v6, v7

    check-cast v6, Lcom/metamoji/un/flip/UnFlipUnit;

    :cond_a
    if-eqz v6, :cond_c

    .line 249
    invoke-interface/range {p1 .. p1}, Lcom/metamoji/df/sprite/TouchEvent;->doubleTapped()Z

    move-result v1

    .line 251
    sget-object v4, Lcom/metamoji/un/flip/UnFlipUnitManager;->Companion:Lcom/metamoji/un/flip/UnFlipUnitManager$Companion;

    invoke-virtual {v4, v6, v2, v3}, Lcom/metamoji/un/flip/UnFlipUnitManager$Companion;->isFlippableUnit(Lcom/metamoji/un/flip/UnFlipUnit;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 252
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v6, v13, v1}, Lcom/metamoji/un/flip/UnFlipUnitManager;->tappedUnit(Lcom/metamoji/un/flip/UnFlipUnit;Landroid/graphics/PointF;Z)V

    return-void

    :cond_b
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_c
    :goto_3
    return-void
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 442
    :cond_0
    sget-object p2, Lcom/metamoji/un/flip/UnFlipUnitManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, p2, p1

    :goto_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 444
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->handleFlipUnitFlipBackAll()V

    goto :goto_1

    .line 443
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->handleFlipUnitFlipOverAll()V

    :goto_1
    return p2
.end method

.method public processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z
    .locals 1

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final setCurrentPage(Lcom/metamoji/nt/NtPageController;)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mCurrentPageId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 172
    monitor-exit v0

    return-void

    .line 174
    :cond_0
    :try_start_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    monitor-exit v0

    .line 176
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 179
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
    iput-object p1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mCurrentPageId:Ljava/lang/String;

    .line 180
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1

    :catchall_1
    move-exception p1

    .line 169
    monitor-exit v0

    throw p1
.end method

.method public final setRecognizerEnabled(Ljava/lang/Boolean;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mRecognizerEnabled:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mRecognizerEnabled:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 60
    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->registerListener()V

    return-void

    .line 62
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->unregisterListener()V

    return-void
.end method

.method public final startAnimation()V
    .locals 2

    .line 567
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/un/flip/UnFlipUnitManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public tap(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 405
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->doubleTapped()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 406
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->cancelDoubleTapTimeout()V

    .line 408
    invoke-virtual {p0, p1}, Lcom/metamoji/un/flip/UnFlipUnitManager;->onTapped(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void

    .line 410
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/un/flip/UnFlipUnitManager;->startTappedTimer(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public final updateAllFlipUnit()V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager;->mUnitMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/metamoji/un/flip/UnFlipUnit;

    .line 487
    invoke-virtual {v1}, Lcom/metamoji/un/flip/UnFlipUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    invoke-virtual {v1}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    goto :goto_0

    :cond_1
    return-void
.end method
