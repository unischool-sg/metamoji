.class Lcom/metamoji/ui/dialog/DocumentSettings2$2;
.super Ljava/lang/Object;
.source "DocumentSettings2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentSettings2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentSettings2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$2;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 384
    const-class p1, Lcom/metamoji/ui/dialog/DocumentPassword;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 389
    new-instance v0, Lcom/metamoji/ui/dialog/DocumentPassword;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/DocumentPassword;-><init>()V

    .line 391
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$2;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_passwordHash(Lcom/metamoji/ui/dialog/DocumentSettings2;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/DocumentPassword;->setPasswordHash(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$2;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/ui/dialog/DocumentPassword;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method
