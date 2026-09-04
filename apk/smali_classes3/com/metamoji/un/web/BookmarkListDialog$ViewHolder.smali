.class Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;
.super Ljava/lang/Object;
.source "BookmarkListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/web/BookmarkListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field _checkView:Landroid/view/View;

.field _item:Lcom/metamoji/un/web/BookmarkListDialog$Item;

.field _titleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/metamoji/un/web/BookmarkListDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/web/BookmarkListDialog;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    sget v0, Lcom/metamoji/noteanytime/R$id;->bookmark_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;->_titleView:Landroid/widget/TextView;

    .line 299
    sget v0, Lcom/metamoji/noteanytime/R$id;->bookmark_check:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;->_checkView:Landroid/view/View;

    .line 301
    iget-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;->_titleView:Landroid/widget/TextView;

    new-instance v0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder$1;-><init>(Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;Lcom/metamoji/un/web/BookmarkListDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/metamoji/un/web/BookmarkListDialog$Item;)V
    .locals 1

    .line 316
    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;->_item:Lcom/metamoji/un/web/BookmarkListDialog$Item;

    .line 317
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;->_titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/metamoji/un/web/BookmarkListDialog$Item;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;->_checkView:Landroid/view/View;

    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-static {v0}, Lcom/metamoji/un/web/BookmarkListDialog;->-$$Nest$fget_isEditable(Lcom/metamoji/un/web/BookmarkListDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public update(Lcom/metamoji/un/web/BookmarkListDialog$Item;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;->_item:Lcom/metamoji/un/web/BookmarkListDialog$Item;

    if-ne v0, p1, :cond_0

    .line 324
    invoke-virtual {p0, p1}, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;->bindView(Lcom/metamoji/un/web/BookmarkListDialog$Item;)V

    :cond_0
    return-void
.end method
