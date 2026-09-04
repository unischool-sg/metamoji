.class Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$2;
.super Ljava/lang/Object;
.source "UiColorSelectionView2.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiColorSelectionView2$IColorGradationSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->createContents(Lcom/metamoji/ui/common/UiColorSelectionView2;Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1755
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$2;->this$1:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorGradationSelected(I)V
    .locals 2

    .line 1759
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$2;->this$1:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->-$$Nest$fgetmColorWheel(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;)Lcom/metamoji/ui/common/UiISColorWheel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$2;->this$1:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->-$$Nest$fgetmColorWheel(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;)Lcom/metamoji/ui/common/UiISColorWheel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiISColorWheel;->setCurrentColor(I)V

    .line 1761
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$2;->this$1:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->-$$Nest$fgetmColorWheel(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;)Lcom/metamoji/ui/common/UiISColorWheel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiISColorWheel;->setSelected(Z)V

    .line 1763
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$2;->this$1:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->-$$Nest$fgetmColorGradation(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;)Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1764
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$2;->this$1:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->-$$Nest$fgetmColorGradation(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;)Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->getInkColor1()I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$2;->this$1:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->-$$Nest$fgetmColorGradation(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;)Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->getInkColor2()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->-$$Nest$mgradationColorSelected(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;II)V

    .line 1766
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$2;->this$1:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->-$$Nest$msetBrightnessColor(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;)V

    return-void
.end method
