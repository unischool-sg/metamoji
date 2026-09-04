.class public final Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;
.super Ljava/lang/Object;
.source "AmvExoVideoPlayer.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProgressRingManager"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAmvExoVideoPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AmvExoVideoPlayer.kt\ncom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,758:1\n255#2:759\n276#2:760\n*S KotlinDebug\n*F\n+ 1 AmvExoVideoPlayer.kt\ncom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager\n*L\n331#1:759\n341#1:760\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u0012\u0010\u0010\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0012\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0013\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;",
        "Landroid/view/animation/Animation$AnimationListener;",
        "<init>",
        "(Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;)V",
        "currentAnimation",
        "Landroid/view/animation/Animation;",
        "getCurrentAnimation",
        "()Landroid/view/animation/Animation;",
        "setCurrentAnimation",
        "(Landroid/view/animation/Animation;)V",
        "fadeInAnim",
        "Landroid/view/animation/AlphaAnimation;",
        "fadeOutAnim",
        "show",
        "",
        "hide",
        "onAnimationRepeat",
        "animation",
        "onAnimationStart",
        "onAnimationEnd",
        "video"
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
.field private currentAnimation:Landroid/view/animation/Animation;

.field private final fadeInAnim:Landroid/view/animation/AlphaAnimation;

.field private final fadeOutAnim:Landroid/view/animation/AlphaAnimation;

.field final synthetic this$0:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;


# direct methods
.method public constructor <init>(Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xbb8

    .line 319
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 320
    move-object v2, p0

    check-cast v2, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 318
    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->fadeInAnim:Landroid/view/animation/AlphaAnimation;

    .line 323
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0xc8

    .line 324
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 325
    invoke-virtual {p1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 323
    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->fadeOutAnim:Landroid/view/animation/AlphaAnimation;

    return-void
.end method


# virtual methods
.method public final getCurrentAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->currentAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public final hide()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->currentAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->fadeInAnim:Landroid/view/animation/AlphaAnimation;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->fadeInAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->currentAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->getProgressRing()Landroid/widget/ProgressBar;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 760
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    return-void

    .line 344
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->fadeOutAnim:Landroid/view/animation/AlphaAnimation;

    check-cast v0, Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->currentAnimation:Landroid/view/animation/Animation;

    .line 345
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->getProgressRing()Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->fadeOutAnim:Landroid/view/animation/AlphaAnimation;

    check-cast v1, Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 358
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->currentAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->fadeOutAnim:Landroid/view/animation/AlphaAnimation;

    if-ne p1, v0, :cond_0

    .line 359
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->getProgressRing()Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    .line 361
    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->currentAnimation:Landroid/view/animation/Animation;

    .line 362
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->getProgressRing()Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->clearAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 352
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->currentAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->fadeInAnim:Landroid/view/animation/AlphaAnimation;

    if-ne p1, v0, :cond_0

    .line 353
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->getProgressRing()Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final setCurrentAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->currentAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public final show()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->currentAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->fadeOutAnim:Landroid/view/animation/AlphaAnimation;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->fadeOutAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->currentAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->getProgressRing()Landroid/widget/ProgressBar;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 759
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 334
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->fadeInAnim:Landroid/view/animation/AlphaAnimation;

    check-cast v0, Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->currentAnimation:Landroid/view/animation/Animation;

    .line 335
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->getProgressRing()Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$ProgressRingManager;->fadeInAnim:Landroid/view/animation/AlphaAnimation;

    check-cast v1, Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method
