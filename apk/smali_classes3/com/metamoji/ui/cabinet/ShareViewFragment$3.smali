.class Lcom/metamoji/ui/cabinet/ShareViewFragment$3;
.super Ljava/lang/Object;
.source "ShareViewFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 473
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$3;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$3;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_simpleView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fputthisViewWidth(Lcom/metamoji/ui/cabinet/ShareViewFragment;I)V

    .line 477
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$3;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_simpleView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$3;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_simpleView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;->_columns:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;->setNumColumns(I)V

    return-void
.end method
