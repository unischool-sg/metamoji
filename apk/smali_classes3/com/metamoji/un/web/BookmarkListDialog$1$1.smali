.class Lcom/metamoji/un/web/BookmarkListDialog$1$1;
.super Ljava/lang/Object;
.source "BookmarkListDialog.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/web/BookmarkListDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/un/web/BookmarkListDialog$1;

.field final synthetic val$editDialog:Lcom/metamoji/un/web/BookmarkEditDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/un/web/BookmarkListDialog$1;Lcom/metamoji/un/web/BookmarkEditDialog;)V
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

    .line 127
    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$1$1;->this$1:Lcom/metamoji/un/web/BookmarkListDialog$1;

    iput-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog$1$1;->val$editDialog:Lcom/metamoji/un/web/BookmarkEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 131
    iget-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$1$1;->this$1:Lcom/metamoji/un/web/BookmarkListDialog$1;

    iget-object p1, p1, Lcom/metamoji/un/web/BookmarkListDialog$1;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    iget-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog$1$1;->val$editDialog:Lcom/metamoji/un/web/BookmarkEditDialog;

    invoke-virtual {p2}, Lcom/metamoji/un/web/BookmarkEditDialog;->getBookmarkTitle()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/un/web/BookmarkListDialog$1$1;->val$editDialog:Lcom/metamoji/un/web/BookmarkEditDialog;

    invoke-virtual {p3}, Lcom/metamoji/un/web/BookmarkEditDialog;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/metamoji/un/web/BookmarkListDialog;->-$$Nest$maddBookmark(Lcom/metamoji/un/web/BookmarkListDialog;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
