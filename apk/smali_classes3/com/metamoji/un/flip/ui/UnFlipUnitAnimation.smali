.class public Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;
.super Ljava/lang/Object;
.source "UnFlipUnitAnimation.java"

# interfaces
.implements Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;
.implements Lcom/metamoji/un/flip/ui/IUnFlipViewAnimationDelegate;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field animationDelegate_:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/un/flip/ui/IUnFlipUnitAnimationDelegate;",
            ">;"
        }
    .end annotation
.end field

.field flipViews_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/un/flip/ui/UnFlipView;",
            ">;"
        }
    .end annotation
.end field

.field overlayView_:Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;

.field units_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/flip/UnFlipUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4wPpUyVfkCwyqIRLIJs20Z79YmY(Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->lambda$endAnimation$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$IDb2YfbEZlvK9OS_ogHuOP_-qIM(Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->lambda$startAnimation$1(Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N9roXE0I7rjPedEULQHAPP0ggAY(Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->lambda$prepareToAnimation$0(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wjx6rwg_kvs2C4w_thnLvBhdeJg(Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->lambda$updateFlipView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$c-z2UO20gP9UY7OJFCe9sJj0AK4(Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->lambda$endAnimation$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/flip/UnFlipUnit;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->flipViews_:Ljava/util/HashMap;

    .line 30
    iput-object p1, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->units_:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$endAnimation$2()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->overlayView_:Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->hide()V

    :cond_0
    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->overlayView_:Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;

    .line 129
    iput-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->units_:Ljava/util/List;

    .line 131
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->animationDelegate_:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/flip/ui/IUnFlipUnitAnimationDelegate;

    if-eqz v0, :cond_1

    .line 134
    invoke-interface {v0}, Lcom/metamoji/un/flip/ui/IUnFlipUnitAnimationDelegate;->animationCompleted()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$endAnimation$3()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->overlayView_:Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->flipViews_:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->animationDelegate_:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/flip/ui/IUnFlipUnitAnimationDelegate;

    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->units_:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/metamoji/un/flip/ui/IUnFlipUnitAnimationDelegate;->animationEnding(Ljava/util/List;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->overlayView_:Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->setOverlayViewDelegate(Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;)V

    .line 124
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$prepareToAnimation$0(Landroidx/fragment/app/FragmentActivity;)V
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->makeOverlayView()Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->overlayView_:Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;

    .line 66
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->units_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/flip/UnFlipUnit;

    .line 67
    invoke-direct {p0, v1, p1}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->makeFlipView(Lcom/metamoji/un/flip/UnFlipUnit;Landroid/content/Context;)Lcom/metamoji/un/flip/ui/UnFlipView;

    move-result-object v2

    .line 68
    invoke-virtual {v1}, Lcom/metamoji/un/flip/UnFlipUnit;->getFlipState()I

    move-result v3

    if-nez v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 70
    invoke-virtual {v2, v3}, Lcom/metamoji/un/flip/ui/UnFlipView;->setAlpha(F)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 72
    invoke-virtual {v2, v3}, Lcom/metamoji/un/flip/ui/UnFlipView;->setAlpha(F)V

    .line 75
    :goto_1
    iget-object v3, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->flipViews_:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/metamoji/un/flip/UnFlipUnit;->getUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->overlayView_:Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;

    invoke-virtual {p1}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->show()V

    return-void
.end method

.method private synthetic lambda$startAnimation$1(Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;)V
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->units_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/flip/UnFlipUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/flip/UnFlipUnit;->getUnitId()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->units_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/flip/UnFlipUnit;

    .line 86
    invoke-virtual {v2}, Lcom/metamoji/un/flip/UnFlipUnit;->getFlipState()I

    move-result v3

    .line 88
    invoke-virtual {v2}, Lcom/metamoji/un/flip/UnFlipUnit;->getUnitId()Ljava/lang/String;

    move-result-object v2

    .line 89
    iget-object v4, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->flipViews_:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/flip/ui/UnFlipView;

    const/4 v5, 0x0

    .line 91
    invoke-virtual {v4, v5}, Lcom/metamoji/un/flip/ui/UnFlipView;->setVisibility(I)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 92
    invoke-virtual {v4, v5}, Lcom/metamoji/un/flip/ui/UnFlipView;->setAlpha(F)V

    if-nez v3, :cond_0

    .line 95
    invoke-virtual {v4}, Lcom/metamoji/un/flip/ui/UnFlipView;->flipBack()V

    goto :goto_1

    .line 97
    :cond_0
    invoke-virtual {v4}, Lcom/metamoji/un/flip/ui/UnFlipView;->flipOver()V

    .line 100
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {v4, p1}, Lcom/metamoji/un/flip/ui/UnFlipView;->setAnimationDelegate(Lcom/metamoji/un/flip/ui/IUnFlipViewAnimationDelegate;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 104
    invoke-virtual {v4, v2}, Lcom/metamoji/un/flip/ui/UnFlipView;->setAnimationDelegate(Lcom/metamoji/un/flip/ui/IUnFlipViewAnimationDelegate;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$updateFlipView$4()V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->units_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/flip/UnFlipUnit;

    .line 149
    iget-object v2, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->overlayView_:Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;

    invoke-virtual {v2}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->getGuardView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/flip/UnFlipUnit;->getFlipUnitRectToView(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v2

    .line 150
    iget-object v3, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->overlayView_:Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;

    invoke-virtual {v3}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->getGuardView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/un/flip/UnFlipUnit;->getKnobRectToView(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v3

    .line 151
    iget-object v4, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->flipViews_:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/metamoji/un/flip/UnFlipUnit;->getUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/flip/ui/UnFlipView;

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v1, v2}, Lcom/metamoji/un/flip/ui/UnFlipView;->updateFrame(Landroid/graphics/RectF;)V

    .line 154
    iput-object v3, v1, Lcom/metamoji/un/flip/ui/UnFlipView;->KnobRect:Landroid/graphics/RectF;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeFlipView(Lcom/metamoji/un/flip/UnFlipUnit;Landroid/content/Context;)Lcom/metamoji/un/flip/ui/UnFlipView;
    .locals 2

    .line 47
    invoke-virtual {p1}, Lcom/metamoji/un/flip/UnFlipUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 49
    invoke-static {p1, v1, v0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->isFlippableUnit(Lcom/metamoji/un/flip/UnFlipUnit;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;)Z

    move-result v0

    .line 52
    new-instance v1, Lcom/metamoji/un/flip/ui/UnFlipView;

    invoke-direct {v1, p2}, Lcom/metamoji/un/flip/ui/UnFlipView;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p1}, Lcom/metamoji/un/flip/UnFlipUnit;->getBackgroundColor()I

    move-result p2

    iput p2, v1, Lcom/metamoji/un/flip/ui/UnFlipView;->FlipColor:I

    .line 54
    iget-object p2, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->overlayView_:Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;

    invoke-virtual {p2}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->getGuardView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->getKnobRectToView(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, v1, Lcom/metamoji/un/flip/ui/UnFlipView;->KnobRect:Landroid/graphics/RectF;

    .line 55
    iput-boolean v0, v1, Lcom/metamoji/un/flip/ui/UnFlipView;->flippable:Z

    const/16 p1, 0x8

    .line 56
    invoke-virtual {v1, p1}, Lcom/metamoji/un/flip/ui/UnFlipView;->setVisibility(I)V

    return-object v1
.end method


# virtual methods
.method public addSubviews(Landroid/view/View;)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->flipViews_:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/flip/ui/UnFlipView;

    .line 186
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public animationDidStop(Lcom/metamoji/un/flip/ui/UnFlipView;)V
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->endAnimation()V

    return-void
.end method

.method endAnimation()V
    .locals 2

    .line 111
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method makeOverlayView()Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;
    .locals 1

    .line 38
    new-instance v0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;

    invoke-direct {v0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;-><init>()V

    .line 39
    invoke-virtual {v0, p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->setOverlayViewDelegate(Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;)V

    return-object v0
.end method

.method public onGlobalLayout()V
    .locals 3

    .line 192
    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->updateFlipView()V

    .line 193
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->flipViews_:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/flip/ui/UnFlipView;

    const/4 v2, 0x0

    .line 194
    invoke-virtual {v1, v2}, Lcom/metamoji/un/flip/ui/UnFlipView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public prepareToAnimation(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 63
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeSubviews()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->flipViews_:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 172
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

    check-cast v1, Lcom/metamoji/un/flip/ui/UnFlipView;

    .line 173
    invoke-virtual {v1}, Lcom/metamoji/un/flip/ui/UnFlipView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 175
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->flipViews_:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_2
    return-void
.end method

.method public setAnimationDelegate(Lcom/metamoji/un/flip/ui/IUnFlipUnitAnimationDelegate;)V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->animationDelegate_:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public startAnimation()V
    .locals 2

    .line 83
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public tappedOverlayView()V
    .locals 0

    .line 200
    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->endAnimation()V

    return-void
.end method

.method public updateFlipView()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->animationDelegate_:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->flipViews_:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
