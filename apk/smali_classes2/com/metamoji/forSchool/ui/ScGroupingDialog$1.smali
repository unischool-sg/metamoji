.class Lcom/metamoji/forSchool/ui/ScGroupingDialog$1;
.super Ljava/lang/Object;
.source "ScGroupingDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScGroupingDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScGroupingDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScGroupingDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog$1;->this$0:Lcom/metamoji/forSchool/ui/ScGroupingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 127
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog$1;->this$0:Lcom/metamoji/forSchool/ui/ScGroupingDialog;

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_numList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 128
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog$1;->this$0:Lcom/metamoji/forSchool/ui/ScGroupingDialog;

    new-instance p3, Ljava/lang/Integer;

    invoke-direct {p3, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_num:I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
