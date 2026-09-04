.class Lcom/metamoji/ex/user/ScUserSelectDialog$1;
.super Ljava/lang/Object;
.source "ScUserSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ex/user/ScUserSelectDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ex/user/ScUserSelectDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ex/user/ScUserSelectDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$1;->this$0:Lcom/metamoji/ex/user/ScUserSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 193
    iget-object p1, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$1;->this$0:Lcom/metamoji/ex/user/ScUserSelectDialog;

    invoke-virtual {p1}, Lcom/metamoji/ex/user/ScUserSelectDialog;->handleSelectAllButtonTap()V

    return-void
.end method
