.class Lcom/metamoji/un/web/BookmarkListDialog$4;
.super Ljava/lang/Object;
.source "BookmarkListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/web/BookmarkListDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/web/BookmarkListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/un/web/BookmarkListDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$4;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

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

    .line 181
    iget-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$4;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-static {p1}, Lcom/metamoji/un/web/BookmarkListDialog;->-$$Nest$fget_isEditable(Lcom/metamoji/un/web/BookmarkListDialog;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 183
    iget-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$4;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-static {p1}, Lcom/metamoji/un/web/BookmarkListDialog;->-$$Nest$fget_deleteButton(Lcom/metamoji/un/web/BookmarkListDialog;)Lcom/metamoji/ui/common/UiButton;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog$4;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-static {p2}, Lcom/metamoji/un/web/BookmarkListDialog;->-$$Nest$fget_list(Lcom/metamoji/un/web/BookmarkListDialog;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method
