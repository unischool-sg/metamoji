.class Lcom/metamoji/ex/SendDialog$5;
.super Ljava/lang/Object;
.source "SendDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 844
    iput-object p1, p0, Lcom/metamoji/ex/SendDialog$5;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 849
    iget-object v1, p0, Lcom/metamoji/ex/SendDialog$5;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {v1}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fget_toPageNum(Lcom/metamoji/ex/SendDialog;)I

    move-result v1

    const/4 v2, -0x1

    move v3, v1

    .line 850
    :goto_0
    iget-object v4, p0, Lcom/metamoji/ex/SendDialog$5;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {v4}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fget_minPageNum(Lcom/metamoji/ex/SendDialog;)I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 851
    new-instance v4, Lcom/metamoji/ui/UiMenuItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    iget-object v5, p0, Lcom/metamoji/ex/SendDialog$5;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {v5}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fget_fromPageNum(Lcom/metamoji/ex/SendDialog;)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 853
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->design1_check_34:I

    invoke-virtual {v4, v2}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 854
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->design1_check_34:I

    invoke-virtual {v4, v2}, Lcom/metamoji/ui/UiMenuItem;->set_PushIcon_resid(I)V

    sub-int v2, v1, v3

    .line 857
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 859
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ex/SendDialog$5;->this$0:Lcom/metamoji/ex/SendDialog;

    new-instance v3, Lcom/metamoji/ex/SendDialog$5$1;

    invoke-direct {v3, p0, p1}, Lcom/metamoji/ex/SendDialog$5$1;-><init>(Lcom/metamoji/ex/SendDialog$5;Landroid/view/View;)V

    invoke-static {v1, v0, v3, p1, v2}, Lcom/metamoji/ex/SendDialog;->-$$Nest$mshowActionMenu(Lcom/metamoji/ex/SendDialog;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/view/View;I)V

    return-void
.end method
