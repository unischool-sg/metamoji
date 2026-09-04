.class Lcom/metamoji/ui/dialog/PenSettings2$20;
.super Ljava/lang/Object;
.source "PenSettings2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PenSettings2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/PenSettings2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PenSettings2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 737
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$20;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 740
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$20;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/PenSettings2;->clearAngleManipulationTimer()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$20;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiAngleSlider;->setEnabled(Z)V

    .line 744
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$20;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiAngleSlider;->getAngleDegree()I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$20;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v1, p1}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$mgetAngleManipulationAmountByPresetId(Lcom/metamoji/ui/dialog/PenSettings2;I)I

    move-result p1

    add-int/2addr v0, p1

    .line 745
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$20;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiAngleSlider;->setAngleDegree(I)V

    return-void
.end method
