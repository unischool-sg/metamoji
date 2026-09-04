.class Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$AnimationSupporter;
.super Ljava/lang/Object;
.source "DrOvEffectLayer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationSupporter"
.end annotation


# instance fields
.field private child:Landroid/view/View;

.field private parent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$AnimationSupporter;->child:Landroid/view/View;

    .line 238
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$AnimationSupporter;->parent:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 251
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$AnimationSupporter;->parent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$AnimationSupporter;->child:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 247
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$AnimationSupporter;->parent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$AnimationSupporter;->child:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 243
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$AnimationSupporter;->parent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$AnimationSupporter;->child:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
