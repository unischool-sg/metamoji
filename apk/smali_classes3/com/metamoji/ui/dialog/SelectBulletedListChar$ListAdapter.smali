.class Lcom/metamoji/ui/dialog/SelectBulletedListChar$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectBulletedListChar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/SelectBulletedListChar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/metamoji/ui/dialog/SelectBulletedListChar;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/SelectBulletedListChar;Landroid/content/Context;)V
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

    .line 58
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectBulletedListChar$ListAdapter;->this$0:Lcom/metamoji/ui/dialog/SelectBulletedListChar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/metamoji/ui/dialog/SelectBulletedListChar$ListAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 64
    invoke-static {}, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->-$$Nest$sfget_listItems()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-static {}, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->-$$Nest$sfget_listItems()[Ljava/lang/String;

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
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 84
    iget-object p2, p0, Lcom/metamoji/ui/dialog/SelectBulletedListChar$ListAdapter;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 85
    sget v2, Lcom/metamoji/noteanytime/R$layout;->item_select_bulleted_list:I

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    .line 88
    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    const/4 p3, 0x3

    .line 90
    new-array p3, p3, [Landroid/widget/TextView;

    sget v2, Lcom/metamoji/noteanytime/R$id;->prefix_tv1:I

    .line 91
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, p3, v1

    sget v2, Lcom/metamoji/noteanytime/R$id;->prefix_tv2:I

    .line 92
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, p3, v0

    sget v2, Lcom/metamoji/noteanytime/R$id;->prefix_tv3:I

    .line 93
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x2

    aput-object v2, p3, v3

    .line 90
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 94
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 95
    invoke-static {}, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->-$$Nest$sfget_listItems()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    :cond_1
    sget p3, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 99
    iget-object v2, p0, Lcom/metamoji/ui/dialog/SelectBulletedListChar$ListAdapter;->this$0:Lcom/metamoji/ui/dialog/SelectBulletedListChar;

    invoke-static {v2}, Lcom/metamoji/ui/dialog/SelectBulletedListChar;->-$$Nest$fget_selIdx(Lcom/metamoji/ui/dialog/SelectBulletedListChar;)I

    move-result v2

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setActivated(Z)V

    return-object p2
.end method
