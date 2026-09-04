.class Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$3;
.super Ljava/lang/Object;
.source "UiColorSelectionView2.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 1826
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$3;->this$1:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1830
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$3;->this$1:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->-$$Nest$fgetmColorWheel(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;)Lcom/metamoji/ui/common/UiISColorWheel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1831
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$3;->this$1:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->-$$Nest$fgetmColorWheel(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;)Lcom/metamoji/ui/common/UiISColorWheel;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiISColorWheel;->setSelected(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
