.class Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectBulletedListNumberedKind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;Landroid/content/Context;)V
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

    .line 73
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$ListAdapter;->this$0:Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$ListAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 79
    invoke-static {}, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;->-$$Nest$sfget_listItems()[Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 84
    invoke-static {}, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;->-$$Nest$sfget_listItems()[Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 99
    iget-object p2, p0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$ListAdapter;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 100
    sget v2, Lcom/metamoji/noteanytime/R$layout;->item_select_bulleted_list:I

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    .line 103
    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    const/4 p3, 0x3

    .line 105
    new-array p3, p3, [Landroid/widget/TextView;

    sget v2, Lcom/metamoji/noteanytime/R$id;->prefix_tv1:I

    .line 106
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, p3, v1

    sget v2, Lcom/metamoji/noteanytime/R$id;->prefix_tv2:I

    .line 107
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, p3, v0

    sget v2, Lcom/metamoji/noteanytime/R$id;->prefix_tv3:I

    .line 108
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x2

    aput-object v2, p3, v3

    .line 105
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    move v2, v1

    .line 109
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 110
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 111
    invoke-static {}, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;->-$$Nest$sfget_listItems()[Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;

    move-result-object v4

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;->_prefixStrings:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_1
    sget p3, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 115
    iget-object v2, p0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$ListAdapter;->this$0:Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;

    invoke-static {v2}, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;->-$$Nest$fget_selIdx(Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;)I

    move-result v2

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setActivated(Z)V

    return-object p2
.end method
