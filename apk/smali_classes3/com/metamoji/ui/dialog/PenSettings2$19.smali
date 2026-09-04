.class Lcom/metamoji/ui/dialog/PenSettings2$19;
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

    .line 714
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$19;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAngleByPresetId(I)I
    .locals 2

    .line 723
    sget-object v0, Lcom/metamoji/ui/dialog/PenSettings2;->mAnglePresetIds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 724
    sget-object v1, Lcom/metamoji/ui/dialog/PenSettings2;->mAnglePresetIds:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 725
    sget-object p1, Lcom/metamoji/ui/dialog/PenSettings2;->mAnglePreset:[I

    aget p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x2d

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 717
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$19;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiAngleSlider;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 718
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2$19;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/common/UiAngleSlider;->setEnabled(Z)V

    .line 719
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$19;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/PenSettings2$19;->getAngleByPresetId(I)I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/ui/common/UiAngleSlider;->setAngleDegree(IZ)V

    return-void
.end method
