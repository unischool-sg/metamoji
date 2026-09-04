.class public final Lcom/metamoji/lib/dialog/UtFadeAnimation;
.super Ljava/lang/Object;
.source "UtFadeAnimation.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0013\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\"\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000b2\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtFadeAnimation;",
        "Landroid/view/animation/Animation$AnimationListener;",
        "show",
        "",
        "duration",
        "",
        "<init>",
        "(ZJ)V",
        "getShow",
        "()Z",
        "view",
        "Landroid/view/View;",
        "completed",
        "Lkotlin/Function0;",
        "",
        "onAnimationStart",
        "animation",
        "Landroid/view/animation/Animation;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "Landroid/view/animation/AlphaAnimation;",
        "start",
        "dialog"
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
.field private final animation:Landroid/view/animation/AlphaAnimation;

.field private completed:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final show:Z

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(ZJ)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/metamoji/lib/dialog/UtFadeAnimation;->show:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 46
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_0
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 49
    move-object p2, p0

    check-cast p2, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, p2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 46
    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtFadeAnimation;->animation:Landroid/view/animation/AlphaAnimation;

    return-void
.end method

.method public static final synthetic access$getAnimation$p(Lcom/metamoji/lib/dialog/UtFadeAnimation;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/metamoji/lib/dialog/UtFadeAnimation;->animation:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method public static final synthetic access$getView$p(Lcom/metamoji/lib/dialog/UtFadeAnimation;)Landroid/view/View;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/metamoji/lib/dialog/UtFadeAnimation;->view:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic start$default(Lcom/metamoji/lib/dialog/UtFadeAnimation;Landroid/view/View;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 57
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtFadeAnimation;->start(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final getShow()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/UtFadeAnimation;->show:Z

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 32
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtFadeAnimation;->view:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtFadeAnimation;->view:Landroid/view/View;

    .line 34
    iget-boolean v1, p0, Lcom/metamoji/lib/dialog/UtFadeAnimation;->show:Z

    if-nez v1, :cond_1

    const/4 v1, 0x4

    .line 35
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 40
    :goto_0
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtFadeAnimation;->completed:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 41
    :cond_2
    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtFadeAnimation;->completed:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 23
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtFadeAnimation;->view:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/UtFadeAnimation;->show:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final start(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p2, p0, Lcom/metamoji/lib/dialog/UtFadeAnimation;->completed:Lkotlin/jvm/functions/Function0;

    .line 60
    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtFadeAnimation;->view:Landroid/view/View;

    .line 61
    iget-object p2, p0, Lcom/metamoji/lib/dialog/UtFadeAnimation;->animation:Landroid/view/animation/AlphaAnimation;

    check-cast p2, Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 66
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p2, Lcom/metamoji/lib/dialog/UtFadeAnimation$start$1;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1}, Lcom/metamoji/lib/dialog/UtFadeAnimation$start$1;-><init>(Lcom/metamoji/lib/dialog/UtFadeAnimation;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
