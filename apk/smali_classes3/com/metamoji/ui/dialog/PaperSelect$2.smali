.class Lcom/metamoji/ui/dialog/PaperSelect$2;
.super Ljava/lang/Object;
.source "PaperSelect.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 131
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PaperSelect$2;->this$0:Lcom/metamoji/ui/dialog/PaperSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 135
    iget-object p4, p0, Lcom/metamoji/ui/dialog/PaperSelect$2;->this$0:Lcom/metamoji/ui/dialog/PaperSelect;

    invoke-static {p4}, Lcom/metamoji/ui/dialog/PaperSelect;->-$$Nest$fget_selected(Lcom/metamoji/ui/dialog/PaperSelect;)I

    move-result p4

    if-ltz p4, :cond_0

    .line 136
    iget-object p4, p0, Lcom/metamoji/ui/dialog/PaperSelect$2;->this$0:Lcom/metamoji/ui/dialog/PaperSelect;

    invoke-static {p4}, Lcom/metamoji/ui/dialog/PaperSelect;->-$$Nest$fget_selected(Lcom/metamoji/ui/dialog/PaperSelect;)I

    move-result p4

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p5

    sub-int/2addr p4, p5

    if-ltz p4, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_0

    .line 138
    invoke-virtual {p1, p4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/PaperSelect$ViewHolder;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PaperSelect$ViewHolder;->_checkBox:Landroid/widget/CheckBox;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperSelect$2;->this$0:Lcom/metamoji/ui/dialog/PaperSelect;

    invoke-static {p1, p3}, Lcom/metamoji/ui/dialog/PaperSelect;->-$$Nest$fput_selected(Lcom/metamoji/ui/dialog/PaperSelect;I)V

    .line 142
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/PaperSelect$ViewHolder;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PaperSelect$ViewHolder;->_checkBox:Landroid/widget/CheckBox;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
