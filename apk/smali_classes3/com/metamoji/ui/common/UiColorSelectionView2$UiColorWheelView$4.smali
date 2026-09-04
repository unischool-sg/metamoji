.class Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$4;
.super Ljava/lang/Object;
.source "UiColorSelectionView2.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;


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

    .line 1836
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$4;->this$1:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(IIZ)V
    .locals 0

    .line 1839
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$4;->this$1:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    invoke-static {p1, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->-$$Nest$mbrightnessChanged(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;I)V

    return-void
.end method
