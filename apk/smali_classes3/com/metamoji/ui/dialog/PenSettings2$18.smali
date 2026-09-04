.class Lcom/metamoji/ui/dialog/PenSettings2$18;
.super Ljava/lang/Object;
.source "PenSettings2.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiAngleSlider$IOnValueChanged;


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

    .line 696
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$18;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(I)V
    .locals 2

    const/16 v0, 0xb4

    if-lt p1, v0, :cond_0

    add-int/lit16 v0, p1, -0xb4

    goto :goto_0

    :cond_0
    add-int/lit16 v0, p1, 0xb4

    :goto_0
    const/16 v1, 0x167

    if-le v0, v1, :cond_1

    move v0, v1

    .line 704
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$18;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    int-to-float v0, v0

    iput v0, v1, Lcom/metamoji/ui/dialog/PenSettings2;->mCal2Angle:F

    .line 708
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$18;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleValueView:Lcom/metamoji/ui/common/UiTextView;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$18;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiAngleSlider;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v1, "\u03b8=%d\u00b0"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string/jumbo p1, "\u03b8="

    :goto_1
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$18;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$mupdateSample(Lcom/metamoji/ui/dialog/PenSettings2;)V

    return-void
.end method
