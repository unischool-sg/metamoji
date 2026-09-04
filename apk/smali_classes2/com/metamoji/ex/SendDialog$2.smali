.class Lcom/metamoji/ex/SendDialog$2;
.super Ljava/lang/Object;
.source "SendDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ex/SendDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 569
    iput-object p1, p0, Lcom/metamoji/ex/SendDialog$2;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 571
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$2;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {p1}, Lcom/metamoji/ex/SendDialog;->-$$Nest$mexecBtnClicked(Lcom/metamoji/ex/SendDialog;)V

    return-void
.end method
