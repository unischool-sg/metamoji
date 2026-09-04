.class Lcom/metamoji/ui/cabinet/ShareViewFragment$15;
.super Ljava/lang/Object;
.source "ShareViewFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;
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

    .line 1740
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$15;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1743
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$15;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1, p3}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$mgetItem(Lcom/metamoji/ui/cabinet/ShareViewFragment;I)Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;

    move-result-object p1

    .line 1744
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$15;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p3, p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fput_currentItem(Lcom/metamoji/ui/cabinet/ShareViewFragment;Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)V

    if-eqz p1, :cond_0

    .line 1745
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)I

    move-result p3

    if-nez p3, :cond_0

    .line 1746
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$15;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p3, p2, p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$mshowItemContextMenu(Lcom/metamoji/ui/cabinet/ShareViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
