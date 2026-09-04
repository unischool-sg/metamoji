.class Lcom/metamoji/ui/dialog/PaperSelect$4;
.super Ljava/lang/Object;
.source "PaperSelect.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PaperSelect;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/PaperSelect;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PaperSelect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PaperSelect$4;->this$0:Lcom/metamoji/ui/dialog/PaperSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 164
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperSelect$4;->this$0:Lcom/metamoji/ui/dialog/PaperSelect;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/PaperSelect;->-$$Nest$fget_paperSizeOrientationButtons(Lcom/metamoji/ui/dialog/PaperSelect;)Lcom/metamoji/ui/common/UiRadioGroup;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButtonIndex()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p1, Lcom/metamoji/ui/dialog/PaperSelect;->_portrait:Z

    .line 166
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperSelect$4;->this$0:Lcom/metamoji/ui/dialog/PaperSelect;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PaperSelect;->_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
