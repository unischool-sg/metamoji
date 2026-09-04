.class Lcom/metamoji/un/web/BookmarkListDialog$5;
.super Ljava/lang/Object;
.source "BookmarkListDialog.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/web/BookmarkListDialog;->editItem(Lcom/metamoji/un/web/BookmarkListDialog$Item;Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/web/BookmarkListDialog;

.field final synthetic val$editDialog:Lcom/metamoji/un/web/BookmarkEditDialog;

.field final synthetic val$holder:Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;

.field final synthetic val$item:Lcom/metamoji/un/web/BookmarkListDialog$Item;


# direct methods
.method constructor <init>(Lcom/metamoji/un/web/BookmarkListDialog;Lcom/metamoji/un/web/BookmarkEditDialog;Lcom/metamoji/un/web/BookmarkListDialog$Item;Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$5;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    iput-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog$5;->val$editDialog:Lcom/metamoji/un/web/BookmarkEditDialog;

    iput-object p3, p0, Lcom/metamoji/un/web/BookmarkListDialog$5;->val$item:Lcom/metamoji/un/web/BookmarkListDialog$Item;

    iput-object p4, p0, Lcom/metamoji/un/web/BookmarkListDialog$5;->val$holder:Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_1

    .line 249
    iget-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$5;->val$editDialog:Lcom/metamoji/un/web/BookmarkEditDialog;

    invoke-virtual {p1}, Lcom/metamoji/un/web/BookmarkEditDialog;->getBookmarkTitle()Ljava/lang/String;

    move-result-object p1

    .line 250
    iget-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog$5;->val$editDialog:Lcom/metamoji/un/web/BookmarkEditDialog;

    invoke-virtual {p2}, Lcom/metamoji/un/web/BookmarkEditDialog;->getAddress()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    iget-object p3, p0, Lcom/metamoji/un/web/BookmarkListDialog$5;->val$item:Lcom/metamoji/un/web/BookmarkListDialog$Item;

    invoke-virtual {p3, p1}, Lcom/metamoji/un/web/BookmarkListDialog$Item;->setName(Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$5;->val$item:Lcom/metamoji/un/web/BookmarkListDialog$Item;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/web/BookmarkListDialog$Item;->setUrl(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object p1

    new-instance p2, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {p2}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtSystemSettings;->ensureSaved(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 259
    iget-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$5;->val$holder:Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;

    iget-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog$5;->val$item:Lcom/metamoji/un/web/BookmarkListDialog$Item;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;->update(Lcom/metamoji/un/web/BookmarkListDialog$Item;)V

    :cond_1
    :goto_0
    return-void
.end method
