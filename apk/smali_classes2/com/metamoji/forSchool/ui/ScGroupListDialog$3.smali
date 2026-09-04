.class Lcom/metamoji/forSchool/ui/ScGroupListDialog$3;
.super Ljava/lang/Object;
.source "ScGroupListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScGroupListDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScGroupListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScGroupListDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$3;->this$0:Lcom/metamoji/forSchool/ui/ScGroupListDialog;

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

    .line 278
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$3;->this$0:Lcom/metamoji/forSchool/ui/ScGroupListDialog;

    iget-boolean p1, p1, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_isManagerMode:Z

    if-nez p1, :cond_0

    .line 279
    sget p1, Lcom/metamoji/noteanytime/R$id;->checkBox:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 280
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    .line 282
    :cond_0
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$3;->this$0:Lcom/metamoji/forSchool/ui/ScGroupListDialog;

    invoke-static {p1, p3}, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->-$$Nest$mhandleItemClicked(Lcom/metamoji/forSchool/ui/ScGroupListDialog;I)V

    return-void
.end method
