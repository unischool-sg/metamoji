.class Lcom/metamoji/ui/dialog/HeaderFooter$1;
.super Ljava/lang/Object;
.source "HeaderFooter.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/HeaderFooter;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/HeaderFooter;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/HeaderFooter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/metamoji/ui/dialog/HeaderFooter$1;->this$0:Lcom/metamoji/ui/dialog/HeaderFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 2

    .line 86
    new-instance p1, Lcom/metamoji/ui/dialog/HeaderFooterCustom;

    invoke-direct {p1}, Lcom/metamoji/ui/dialog/HeaderFooterCustom;-><init>()V

    .line 87
    iget-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter$1;->this$0:Lcom/metamoji/ui/dialog/HeaderFooter;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/HeaderFooter;->-$$Nest$fget_dlgtitleid(Lcom/metamoji/ui/dialog/HeaderFooter;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->set_dlgtitleid(I)V

    .line 88
    iget-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter$1;->this$0:Lcom/metamoji/ui/dialog/HeaderFooter;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/HeaderFooter;->-$$Nest$fget_selectIndex(Lcom/metamoji/ui/dialog/HeaderFooter;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter$1;->this$0:Lcom/metamoji/ui/dialog/HeaderFooter;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/HeaderFooter;->-$$Nest$fget_text(Lcom/metamoji/ui/dialog/HeaderFooter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->set_text(Ljava/lang/String;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter$1;->this$0:Lcom/metamoji/ui/dialog/HeaderFooter;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/HeaderFooter;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "HeaderFooter"

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/dialog/HeaderFooterCustom;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method
