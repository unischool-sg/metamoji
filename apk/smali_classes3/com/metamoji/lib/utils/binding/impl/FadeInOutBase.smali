.class public abstract Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;
.super Lcom/metamoji/lib/utils/binding/impl/BoolBinding;
.source "FadeInOutBinding.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B)\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0011H\u0002J\u0017\u0010#\u001a\u00020!2\u0008\u0010$\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0002\u0010%J\u0008\u0010&\u001a\u00020!H\u0002J\u0008\u0010\'\u001a\u00020!H\u0002J\u0018\u0010(\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000c\u001a\u00020\u0005H\u0002J\u0010\u0010)\u001a\u00020!2\u0006\u0010*\u001a\u00020+H\u0016J\u0010\u0010,\u001a\u00020!2\u0006\u0010*\u001a\u00020+H\u0016J\u0010\u0010-\u001a\u00020!2\u0006\u0010*\u001a\u00020+H\u0016J\u0010\u0010.\u001a\u00020!2\u0006\u0010*\u001a\u00020+H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000fR\u0018\u0010\u0014\u001a\u00020\u0015X\u00a4\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001a\u001a\u00020\u001bX\u00a4\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006/"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;",
        "Lcom/metamoji/lib/utils/binding/impl/BoolBinding;",
        "Landroid/animation/Animator$AnimatorListener;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "",
        "boolConvert",
        "Lcom/metamoji/lib/utils/binding/BoolConvert;",
        "animDuration",
        "",
        "<init>",
        "(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)V",
        "showing",
        "animating",
        "getAnimating",
        "()Z",
        "animator",
        "Landroid/animation/ValueAnimator;",
        "targetVisible",
        "getTargetVisible",
        "alpha",
        "",
        "getAlpha",
        "()F",
        "setAlpha",
        "(F)V",
        "visibility",
        "",
        "getVisibility",
        "()I",
        "setVisibility",
        "(I)V",
        "updateAlpha",
        "",
        "a",
        "onDataChanged",
        "v",
        "(Ljava/lang/Boolean;)V",
        "show",
        "hide",
        "calcRewindingDuration",
        "onAnimationStart",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationCancel",
        "onAnimationRepeat",
        "utils"
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
.field private final animDuration:J

.field private final animator:Landroid/animation/ValueAnimator;

.field private showing:Z


# direct methods
.method public static synthetic $r8$lambda$5eZpMFGLRN-I778MBPXT0_bm0QU(Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->updateAlpha(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            "J)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    invoke-direct {p0, p1, v0, p2}, Lcom/metamoji/lib/utils/binding/impl/BoolBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Lcom/metamoji/lib/utils/binding/BoolConvert;)V

    .line 20
    iput-wide p3, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->animDuration:J

    const/4 p1, 0x2

    .line 26
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 28
    new-instance p2, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    move-object p2, p0

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 26
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->animator:Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 19
    sget-object p2, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const-wide/16 p3, 0x1f4

    .line 17
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)V

    return-void
.end method

.method private final calcRewindingDuration(FZ)J
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    .line 81
    :goto_0
    iget-wide v0, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->animDuration:J

    long-to-float p2, v0

    mul-float/2addr p2, p1

    float-to-long p1, p2

    const-wide/16 v0, 0x64

    .line 82
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final getAnimating()Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    return v0
.end method

.method private final getTargetVisible()Z
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->getData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final hide()V
    .locals 3

    .line 66
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->getAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-boolean v0, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->showing:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 69
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->getAlpha()F

    move-result v1

    iget-boolean v2, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->showing:Z

    invoke-direct {p0, v1, v2}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->calcRewindingDuration(FZ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->animator:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->animDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_1
    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->showing:Z

    .line 75
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private final show()V
    .locals 3

    .line 51
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->getAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-boolean v0, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->showing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 54
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->getAlpha()F

    move-result v1

    iget-boolean v2, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->showing:Z

    invoke-direct {p0, v1, v2}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->calcRewindingDuration(FZ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->setAlpha(F)V

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->animator:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->animDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_1
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->showing:Z

    .line 62
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private final updateAlpha(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->getTargetVisible()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method protected abstract getAlpha()F
.end method

.method protected abstract getVisibility()I
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->getTargetVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 90
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->setAlpha(F)V

    const/4 p1, 0x0

    .line 91
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->setVisibility(I)V

    return-void

    :cond_0
    const/4 p1, 0x4

    .line 93
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onDataChanged(Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->show()V

    return-void

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->hide()V

    return-void
.end method

.method public bridge synthetic onDataChanged(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->onDataChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected abstract setAlpha(F)V
.end method

.method protected abstract setVisibility(I)V
.end method
