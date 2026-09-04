.class public final synthetic Lio/github/toyota32k/viewex/library/CircularProgressBar$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lio/github/toyota32k/viewex/library/CircularProgressBar;


# direct methods
.method public synthetic constructor <init>(Lio/github/toyota32k/viewex/library/CircularProgressBar;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/viewex/library/CircularProgressBar$$ExternalSyntheticLambda7;->f$0:Lio/github/toyota32k/viewex/library/CircularProgressBar;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/toyota32k/viewex/library/CircularProgressBar$$ExternalSyntheticLambda7;->f$0:Lio/github/toyota32k/viewex/library/CircularProgressBar;

    invoke-static {v0, p1}, Lio/github/toyota32k/viewex/library/CircularProgressBar;->_set_progress_$lambda$0(Lio/github/toyota32k/viewex/library/CircularProgressBar;Landroid/animation/ValueAnimator;)V

    return-void
.end method
