.class Lcom/metamoji/ui/dialog/PenSettings2$24;
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

    .line 790
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$24;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getRatioByPresetId(I)I
    .locals 3

    .line 798
    sget-object v0, Lcom/metamoji/ui/dialog/PenSettings2;->mRatioPresetIds:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 799
    sget-object v2, Lcom/metamoji/ui/dialog/PenSettings2;->mRatioPresetIds:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 800
    sget-object p1, Lcom/metamoji/ui/dialog/PenSettings2;->mRatioPreset:[I

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

    .line 793
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$24;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mPenRateSlider:Lcom/metamoji/ui/common/UiPlainSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 794
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$24;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mPenRateSlider:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/PenSettings2$24;->getRatioByPresetId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    return-void
.end method
