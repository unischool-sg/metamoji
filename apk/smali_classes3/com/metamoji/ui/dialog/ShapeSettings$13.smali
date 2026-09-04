.class Lcom/metamoji/ui/dialog/ShapeSettings$13;
.super Ljava/lang/Object;
.source "ShapeSettings.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;


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

    .line 414
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$13;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 417
    const-string/jumbo p1, "single color selected"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 418
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$13;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iget p1, p1, Lcom/metamoji/ui/dialog/ShapeSettings;->mFillShapeState:I

    if-nez p1, :cond_0

    .line 419
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$13;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    const/4 p2, 0x1

    iput p2, p1, Lcom/metamoji/ui/dialog/ShapeSettings;->mFillShapeState:I

    .line 420
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$13;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonShapeFill:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    .line 422
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$13;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/ShapeSettings;->-$$Nest$mupdateSample(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    .line 423
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$13;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity_Fill:Lcom/metamoji/ui/common/UiPlainSlider;

    const p2, 0xffffff

    and-int/2addr p2, p4

    invoke-virtual {p1, p2, p4}, Lcom/metamoji/ui/common/UiPlainSlider;->setSliderColor(II)V

    return-void
.end method

.method public onGradationColorSelected(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 428
    const-string p1, "gradation color selected"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 429
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$13;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iget p1, p1, Lcom/metamoji/ui/dialog/ShapeSettings;->mFillShapeState:I

    if-nez p1, :cond_0

    .line 430
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$13;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    const/4 p2, 0x1

    iput p2, p1, Lcom/metamoji/ui/dialog/ShapeSettings;->mFillShapeState:I

    .line 431
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$13;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeSettings;->mButtonShapeFill:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    .line 433
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$13;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/ShapeSettings;->-$$Nest$mupdateSample(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    .line 434
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$13;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity_Fill:Lcom/metamoji/ui/common/UiPlainSlider;

    const p2, 0xffffff

    and-int/2addr p2, p4

    invoke-virtual {p1, p2, p4}, Lcom/metamoji/ui/common/UiPlainSlider;->setSliderColor(II)V

    return-void
.end method
