.class Lcom/metamoji/forSchool/ui/ScGroupingDialog$4;
.super Ljava/lang/Object;
.source "ScGroupingDialog.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;


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

    .line 170
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog$4;->this$0:Lcom/metamoji/forSchool/ui/ScGroupingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1

    .line 173
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog$4;->this$0:Lcom/metamoji/forSchool/ui/ScGroupingDialog;

    const/4 v0, 0x1

    iput v0, p1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupingStartType:I

    return-void
.end method
