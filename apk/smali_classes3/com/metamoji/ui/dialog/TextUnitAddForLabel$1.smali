.class Lcom/metamoji/ui/dialog/TextUnitAddForLabel$1;
.super Ljava/lang/Object;
.source "TextUnitAddForLabel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/TextUnitAddForLabel;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/TextUnitAddForLabel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$1;->this$0:Lcom/metamoji/ui/dialog/TextUnitAddForLabel;

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

    .line 109
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$1;->this$0:Lcom/metamoji/ui/dialog/TextUnitAddForLabel;

    invoke-static {p1, p3}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->-$$Nest$mhandleItemClicked(Lcom/metamoji/ui/dialog/TextUnitAddForLabel;I)V

    return-void
.end method
