.class Lcom/metamoji/ex/SendDialog$6;
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

    .line 872
    iput-object p1, p0, Lcom/metamoji/ex/SendDialog$6;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 874
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 877
    iget-object v1, p0, Lcom/metamoji/ex/SendDialog$6;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {v1}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fget_fromPageNum(Lcom/metamoji/ex/SendDialog;)I

    move-result v1

    .line 878
    iget-object v2, p0, Lcom/metamoji/ex/SendDialog$6;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {v2}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fget_maxPageNum(Lcom/metamoji/ex/SendDialog;)I

    move-result v2

    const/4 v3, -0x1

    :goto_0
    if-lt v2, v1, :cond_1

    .line 879
    new-instance v4, Lcom/metamoji/ui/UiMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    iget-object v5, p0, Lcom/metamoji/ex/SendDialog$6;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {v5}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fget_toPageNum(Lcom/metamoji/ex/SendDialog;)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 881
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->design1_check_34:I

    invoke-virtual {v4, v3}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 882
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->design1_check_34:I

    invoke-virtual {v4, v3}, Lcom/metamoji/ui/UiMenuItem;->set_PushIcon_resid(I)V

    .line 883
    iget-object v3, p0, Lcom/metamoji/ex/SendDialog$6;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {v3}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fget_maxPageNum(Lcom/metamoji/ex/SendDialog;)I

    move-result v3

    sub-int/2addr v3, v2

    .line 885
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 887
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ex/SendDialog$6;->this$0:Lcom/metamoji/ex/SendDialog;

    new-instance v2, Lcom/metamoji/ex/SendDialog$6$1;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/ex/SendDialog$6$1;-><init>(Lcom/metamoji/ex/SendDialog$6;Landroid/view/View;)V

    invoke-static {v1, v0, v2, p1, v3}, Lcom/metamoji/ex/SendDialog;->-$$Nest$mshowActionMenu(Lcom/metamoji/ex/SendDialog;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/view/View;I)V

    return-void
.end method
