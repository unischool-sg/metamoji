.class Lcom/metamoji/ui/DraggableStackPanel$DragInfo$2;
.super Ljava/lang/Object;
.source "DraggableStackPanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->repositionOnDragging(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/DraggableStackPanel$DragInfo;

.field final synthetic val$item:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DraggableStackPanel$DragInfo;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 760
    iput-object p1, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo$2;->this$1:Lcom/metamoji/ui/DraggableStackPanel$DragInfo;

    iput-object p2, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo$2;->val$item:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo$2;->val$item:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    return-void
.end method
