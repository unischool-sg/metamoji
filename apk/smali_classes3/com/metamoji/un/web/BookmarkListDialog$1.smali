.class Lcom/metamoji/un/web/BookmarkListDialog$1;
.super Ljava/lang/Object;
.source "BookmarkListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 121
    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$1;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 124
    new-instance p1, Lcom/metamoji/un/web/BookmarkEditDialog;

    invoke-direct {p1}, Lcom/metamoji/un/web/BookmarkEditDialog;-><init>()V

    .line 125
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog$1;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-static {v0}, Lcom/metamoji/un/web/BookmarkListDialog;->-$$Nest$fget_addedBookmarkName(Lcom/metamoji/un/web/BookmarkListDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/web/BookmarkEditDialog;->setBookmarkTitle(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog$1;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-static {v0}, Lcom/metamoji/un/web/BookmarkListDialog;->-$$Nest$fget_addedBookmarkUrl(Lcom/metamoji/un/web/BookmarkListDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/web/BookmarkEditDialog;->setAddress(Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/metamoji/un/web/BookmarkListDialog$1$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/un/web/BookmarkListDialog$1$1;-><init>(Lcom/metamoji/un/web/BookmarkListDialog$1;Lcom/metamoji/un/web/BookmarkEditDialog;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/un/web/BookmarkEditDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 138
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog$1;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-virtual {v0}, Lcom/metamoji/un/web/BookmarkListDialog;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "BookmarkEdit"

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/web/BookmarkEditDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
