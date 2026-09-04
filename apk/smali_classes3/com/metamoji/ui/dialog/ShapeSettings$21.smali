.class Lcom/metamoji/ui/dialog/ShapeSettings$21;
.super Ljava/lang/Object;
.source "ShapeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ShapeSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/ShapeSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ShapeSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 523
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$21;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getWeightByPresetId(I)I
    .locals 3

    .line 532
    sget-object v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mWeightPresetIds:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 533
    sget-object v2, Lcom/metamoji/ui/dialog/ShapeSettings;->mWeightPresetIds:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 534
    sget-object p1, Lcom/metamoji/ui/dialog/ShapeSettings;->mWeightPresetStandard:[I

    aget p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings$21;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->isEnabled()Z

    .line 527
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings$21;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 528
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings$21;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderWeight:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/ShapeSettings$21;->getWeightByPresetId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue2(I)V

    return-void
.end method
