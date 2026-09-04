.class Lcom/metamoji/ui/dialog/PaperSelect$3;
.super Ljava/lang/Object;
.source "PaperSelect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PaperSelect;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/PaperSelect;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PaperSelect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PaperSelect$3;->this$0:Lcom/metamoji/ui/dialog/PaperSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperSelect$3;->this$0:Lcom/metamoji/ui/dialog/PaperSelect;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/PaperSelect;->-$$Nest$fget_selected(Lcom/metamoji/ui/dialog/PaperSelect;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperSelect$3;->this$0:Lcom/metamoji/ui/dialog/PaperSelect;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/PaperSelect;->-$$Nest$fget_paperSizeListView(Lcom/metamoji/ui/dialog/PaperSelect;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PaperSelect$3;->this$0:Lcom/metamoji/ui/dialog/PaperSelect;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/PaperSelect;->-$$Nest$fget_selected(Lcom/metamoji/ui/dialog/PaperSelect;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method
