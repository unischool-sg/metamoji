.class Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder$1;
.super Ljava/lang/Object;
.source "BookmarkListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;-><init>(Lcom/metamoji/un/web/BookmarkListDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;

.field final synthetic val$this$0:Lcom/metamoji/un/web/BookmarkListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;Lcom/metamoji/un/web/BookmarkListDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 301
    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder$1;->this$1:Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;

    iput-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder$1;->val$this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 304
    iget-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder$1;->this$1:Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;

    iget-object p1, p1, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-static {p1}, Lcom/metamoji/un/web/BookmarkListDialog;->-$$Nest$fget_isEditable(Lcom/metamoji/un/web/BookmarkListDialog;)Z

    move-result p1

    .line 309
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder$1;->this$1:Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;

    if-eqz p1, :cond_0

    .line 306
    iget-object p1, v0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder$1;->this$1:Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;

    iget-object v0, v0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;->_item:Lcom/metamoji/un/web/BookmarkListDialog$Item;

    iget-object v1, p0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder$1;->this$1:Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;

    invoke-static {p1, v0, v1}, Lcom/metamoji/un/web/BookmarkListDialog;->-$$Nest$meditItem(Lcom/metamoji/un/web/BookmarkListDialog;Lcom/metamoji/un/web/BookmarkListDialog$Item;Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;)V

    return-void

    .line 309
    :cond_0
    iget-object p1, v0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder$1;->this$1:Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;

    iget-object v0, v0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;->_item:Lcom/metamoji/un/web/BookmarkListDialog$Item;

    invoke-static {p1, v0}, Lcom/metamoji/un/web/BookmarkListDialog;->-$$Nest$mitemSelected(Lcom/metamoji/un/web/BookmarkListDialog;Lcom/metamoji/un/web/BookmarkListDialog$Item;)V

    return-void
.end method
