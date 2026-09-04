.class Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "StoreServerSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ListAdapter;->this$0:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 238
    iput-object p2, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ListAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ListAdapter;->this$0:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;

    invoke-static {v0}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->-$$Nest$fgetm_serverURLArray(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ListAdapter;->this$0:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;

    invoke-static {v0}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->-$$Nest$fgetm_serverURLArray(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ListAdapter;->this$0:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;

    invoke-static {v1}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->-$$Nest$fgetm_serverURLArray(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ListAdapter;->this$0:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;

    invoke-static {v1}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->-$$Nest$fgetm_serverURLArray(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 271
    iget-object p2, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ListAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 272
    sget v1, Lcom/metamoji/noteanytime/R$layout;->item_store_server_select:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 276
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 277
    sget v1, Lcom/metamoji/noteanytime/R$id;->url:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 278
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object p3, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ListAdapter;->this$0:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;

    invoke-static {p3}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->-$$Nest$fgetm_serverNamesArray(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 281
    sget v1, Lcom/metamoji/noteanytime/R$id;->name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 282
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    sget p3, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 286
    iget-object v1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ListAdapter;->this$0:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;

    invoke-static {v1}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->-$$Nest$fgetm_selectIndex(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;)I

    move-result v1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setActivated(Z)V

    return-object p2
.end method
