.class Lcom/metamoji/ex/SendDialog$4;
.super Ljava/lang/Object;
.source "SendDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ex/SendDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ex/SendDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ex/SendDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 828
    iput-object p1, p0, Lcom/metamoji/ex/SendDialog$4;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 831
    sget p1, Lcom/metamoji/noteanytime/R$id;->pageNumRangeBtn:I

    .line 835
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog$4;->this$0:Lcom/metamoji/ex/SendDialog;

    if-ne p1, p2, :cond_0

    .line 832
    invoke-static {v0}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fget_pageNumRangeGroup(Lcom/metamoji/ex/SendDialog;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 835
    :cond_0
    invoke-static {v0}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fget_pageNumRangeGroup(Lcom/metamoji/ex/SendDialog;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 839
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$4;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {p1}, Lcom/metamoji/ex/SendDialog;->-$$Nest$mupdateView(Lcom/metamoji/ex/SendDialog;)V

    return-void
.end method
