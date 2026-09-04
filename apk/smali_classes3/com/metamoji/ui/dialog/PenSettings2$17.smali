.class Lcom/metamoji/ui/dialog/PenSettings2$17;
.super Ljava/lang/Object;
.source "PenSettings2.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;


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

    .line 682
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$17;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(IIZ)V
    .locals 0

    .line 685
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$17;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$mupdateSample(Lcom/metamoji/ui/dialog/PenSettings2;)V

    return-void
.end method
