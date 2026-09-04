.class public final synthetic Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/dialog/UtDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/dialog/UtDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda12;->f$0:Lcom/metamoji/lib/dialog/UtDialog;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda12;->f$0:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-static {v0, p1}, Lcom/metamoji/lib/dialog/UtDialog;->adjustByResize$lambda$20$lambda$19(Lcom/metamoji/lib/dialog/UtDialog;Landroid/animation/ValueAnimator;)V

    return-void
.end method
