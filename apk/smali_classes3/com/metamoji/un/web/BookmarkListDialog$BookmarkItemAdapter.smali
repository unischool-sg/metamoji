.class Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BookmarkListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/web/BookmarkListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BookmarkItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/un/web/BookmarkListDialog$Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/web/BookmarkListDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/web/BookmarkListDialog;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/web/BookmarkListDialog$Item;",
            ">;)V"
        }
    .end annotation

    .line 330
    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    const/4 p1, 0x0

    .line 331
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 336
    invoke-virtual {p0}, Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_0

    .line 340
    const-string p2, "layout_inflater"

    invoke-virtual {v0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 341
    sget v0, Lcom/metamoji/noteanytime/R$layout;->bookmark_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 342
    new-instance p3, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;

    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;->this$0:Lcom/metamoji/un/web/BookmarkListDialog;

    invoke-direct {p3, v0, p2}, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;-><init>(Lcom/metamoji/un/web/BookmarkListDialog;Landroid/view/View;)V

    .line 343
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;

    .line 348
    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/web/BookmarkListDialog$Item;

    .line 349
    invoke-virtual {p3, p1}, Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;->bindView(Lcom/metamoji/un/web/BookmarkListDialog$Item;)V

    return-object p2
.end method
