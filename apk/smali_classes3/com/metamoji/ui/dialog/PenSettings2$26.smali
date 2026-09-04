.class Lcom/metamoji/ui/dialog/PenSettings2$26;
.super Ljava/lang/Object;
.source "PenSettings2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PenSettings2;->startAngleManipulationTimer(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/PenSettings2;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PenSettings2;Landroid/view/View;)V
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

    .line 911
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$26;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2$26;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 914
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$26;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$26;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$mgetAngleManipulationAmountByPresetId(Lcom/metamoji/ui/dialog/PenSettings2;I)I

    move-result v0

    .line 915
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$26;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiAngleSlider;->getAngleDegree()I

    move-result v1

    add-int/2addr v1, v0

    .line 916
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2$26;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/common/UiAngleSlider;->setAngleDegree(I)V

    .line 918
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$26;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiAngleSlider;->getAngleDegree()I

    move-result v1

    .line 920
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2$26;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {v2, v1, v0}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$mCalcIntervalPenAnglePlusMinus(Lcom/metamoji/ui/dialog/PenSettings2;II)I

    move-result v0

    .line 921
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$26;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleManipulationTimer:Lcom/metamoji/cm/UiTimer;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/cm/UiTimer;->setPeriod(J)V

    return-void
.end method
