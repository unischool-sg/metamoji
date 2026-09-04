.class Lcom/metamoji/forSchool/ui/ScGroupingDialog$7;
.super Ljava/lang/Object;
.source "ScGroupingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 209
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog$7;->this$0:Lcom/metamoji/forSchool/ui/ScGroupingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 212
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog$7;->this$0:Lcom/metamoji/forSchool/ui/ScGroupingDialog;

    iget-object v0, p1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupingButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->onDone(Landroid/view/View;)V

    return-void
.end method
