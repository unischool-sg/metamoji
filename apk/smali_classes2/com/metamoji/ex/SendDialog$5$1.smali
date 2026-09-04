.class Lcom/metamoji/ex/SendDialog$5$1;
.super Ljava/lang/Object;
.source "SendDialog.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ex/SendDialog$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ex/SendDialog$5;

.field final synthetic val$clickedView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/ex/SendDialog$5;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 859
    iput-object p1, p0, Lcom/metamoji/ex/SendDialog$5$1;->this$1:Lcom/metamoji/ex/SendDialog$5;

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog$5$1;->val$clickedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 861
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$5$1;->this$1:Lcom/metamoji/ex/SendDialog$5;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog$5;->this$0:Lcom/metamoji/ex/SendDialog;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fput_fromPageNum(Lcom/metamoji/ex/SendDialog;I)V

    .line 862
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$5$1;->val$clickedView:Landroid/view/View;

    check-cast p1, Landroid/widget/Button;

    iget-object p2, p0, Lcom/metamoji/ex/SendDialog$5$1;->this$1:Lcom/metamoji/ex/SendDialog$5;

    iget-object p2, p2, Lcom/metamoji/ex/SendDialog$5;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {p2}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fget_fromPageNum(Lcom/metamoji/ex/SendDialog;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$5$1;->this$1:Lcom/metamoji/ex/SendDialog$5;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog$5;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {p1}, Lcom/metamoji/ex/SendDialog;->-$$Nest$mupdateView(Lcom/metamoji/ex/SendDialog;)V

    return-void
.end method
