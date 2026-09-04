.class Lcom/metamoji/ui/dialog/ShapeSettings$11;
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

    .line 384
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$11;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 387
    const-string/jumbo p1, "single color selected"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 388
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$11;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/ShapeSettings;->-$$Nest$mupdateSample(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    .line 389
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$11;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    const p2, 0xffffff

    and-int/2addr p2, p4

    invoke-virtual {p1, p2, p4}, Lcom/metamoji/ui/common/UiPlainSlider;->setSliderColor(II)V

    return-void
.end method

.method public onGradationColorSelected(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 394
    const-string p1, "gradation color selected"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 395
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$11;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/ShapeSettings;->-$$Nest$mupdateSample(Lcom/metamoji/ui/dialog/ShapeSettings;)V

    .line 396
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$11;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShapeSettings;->mSliderOpacity:Lcom/metamoji/ui/common/UiPlainSlider;

    const p2, 0xffffff

    and-int/2addr p2, p4

    invoke-virtual {p1, p2, p4}, Lcom/metamoji/ui/common/UiPlainSlider;->setSliderColor(II)V

    return-void
.end method
