.class Lcom/metamoji/ui/cabinet/ShareViewFragment$11;
.super Ljava/lang/Object;
.source "ShareViewFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 1280
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$11;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1283
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$11;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1, p3}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$mgetItem(Lcom/metamoji/ui/cabinet/ShareViewFragment;I)Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1284
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;->getType()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1288
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$11;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p2, p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fput_currentItem(Lcom/metamoji/ui/cabinet/ShareViewFragment;Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)V

    .line 1289
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$11;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_currentItem(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1290
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$11;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_currentItem(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$monItemClickCore(Lcom/metamoji/ui/cabinet/ShareViewFragment;Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)V

    :cond_1
    :goto_0
    return-void
.end method
