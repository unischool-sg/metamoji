.class Lcom/metamoji/forSchool/ui/ScClassListDialog$3;
.super Ljava/lang/Object;
.source "ScClassListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScClassListDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScClassListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScClassListDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 481
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$3;->this$0:Lcom/metamoji/forSchool/ui/ScClassListDialog;

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

    .line 486
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$3;->this$0:Lcom/metamoji/forSchool/ui/ScClassListDialog;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->-$$Nest$misManagerMode(Lcom/metamoji/forSchool/ui/ScClassListDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 487
    sget p1, Lcom/metamoji/noteanytime/R$id;->checkBox:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 488
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    .line 490
    :cond_0
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$3;->this$0:Lcom/metamoji/forSchool/ui/ScClassListDialog;

    invoke-static {p1, p3}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->-$$Nest$mhandleItemClicked(Lcom/metamoji/forSchool/ui/ScClassListDialog;I)V

    return-void
.end method
