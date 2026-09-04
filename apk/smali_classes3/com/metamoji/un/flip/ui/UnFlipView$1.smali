.class Lcom/metamoji/un/flip/ui/UnFlipView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UnFlipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/flip/ui/UnFlipView;->flipOver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/flip/ui/UnFlipView;


# direct methods
.method constructor <init>(Lcom/metamoji/un/flip/ui/UnFlipView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/metamoji/un/flip/ui/UnFlipView$1;->this$0:Lcom/metamoji/un/flip/ui/UnFlipView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 97
    iget-object p1, p0, Lcom/metamoji/un/flip/ui/UnFlipView$1;->this$0:Lcom/metamoji/un/flip/ui/UnFlipView;

    invoke-static {p1}, Lcom/metamoji/un/flip/ui/UnFlipView;->-$$Nest$manimationCompleted(Lcom/metamoji/un/flip/ui/UnFlipView;)V

    return-void
.end method
