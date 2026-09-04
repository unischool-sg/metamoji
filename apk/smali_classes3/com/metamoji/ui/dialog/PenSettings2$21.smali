.class Lcom/metamoji/ui/dialog/PenSettings2$21;
.super Ljava/lang/Object;
.source "PenSettings2.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 748
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$21;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$21;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mAngleSlider:Lcom/metamoji/ui/common/UiAngleSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiAngleSlider;->setEnabled(Z)V

    .line 753
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$21;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/PenSettings2;->startAngleManipulationTimer(Landroid/view/View;)V

    return v1
.end method
