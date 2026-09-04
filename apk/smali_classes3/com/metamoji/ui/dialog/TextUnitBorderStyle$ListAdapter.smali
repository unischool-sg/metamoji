.class Lcom/metamoji/ui/dialog/TextUnitBorderStyle$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TextUnitBorderStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/TextUnitBorderStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private ITEMS:[Lcom/metamoji/un/text/model/UnitBorderStyle;

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/metamoji/ui/dialog/TextUnitBorderStyle;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/TextUnitBorderStyle;Landroid/content/Context;)V
    .locals 2
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

    .line 104
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle$ListAdapter;->this$0:Lcom/metamoji/ui/dialog/TextUnitBorderStyle;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 p1, 0x8

    .line 91
    new-array p1, p1, [Lcom/metamoji/un/text/model/UnitBorderStyle;

    const/4 v0, 0x0

    sget-object v1, Lcom/metamoji/un/text/model/UnitBorderStyle;->None:Lcom/metamoji/un/text/model/UnitBorderStyle;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style1:Lcom/metamoji/un/text/model/UnitBorderStyle;

    aput-object v1, p1, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style2:Lcom/metamoji/un/text/model/UnitBorderStyle;

    aput-object v1, p1, v0

    const/4 v0, 0x3

    sget-object v1, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style3:Lcom/metamoji/un/text/model/UnitBorderStyle;

    aput-object v1, p1, v0

    const/4 v0, 0x4

    sget-object v1, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style4:Lcom/metamoji/un/text/model/UnitBorderStyle;

    aput-object v1, p1, v0

    const/4 v0, 0x5

    sget-object v1, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style5:Lcom/metamoji/un/text/model/UnitBorderStyle;

    aput-object v1, p1, v0

    const/4 v0, 0x6

    sget-object v1, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style6:Lcom/metamoji/un/text/model/UnitBorderStyle;

    aput-object v1, p1, v0

    const/4 v0, 0x7

    sget-object v1, Lcom/metamoji/un/text/model/UnitBorderStyle;->Style7:Lcom/metamoji/un/text/model/UnitBorderStyle;

    aput-object v1, p1, v0

    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle$ListAdapter;->ITEMS:[Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 105
    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle$ListAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle$ListAdapter;->ITEMS:[Lcom/metamoji/un/text/model/UnitBorderStyle;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle$ListAdapter;->ITEMS:[Lcom/metamoji/un/text/model/UnitBorderStyle;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(Lcom/metamoji/un/text/model/UnitBorderStyle;)I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle$ListAdapter;->ITEMS:[Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 130
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle$ListAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 131
    sget v1, Lcom/metamoji/noteanytime/R$layout;->item_textunit_unitborderstyle:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 133
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitBorderStyle$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 135
    sget v1, Lcom/metamoji/noteanytime/R$id;->textview_for_none:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 136
    sget-object v2, Lcom/metamoji/un/text/model/UnitBorderStyle;->None:Lcom/metamoji/un/text/model/UnitBorderStyle;

    if-ne v2, p3, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    const/4 p3, 0x4

    :goto_0
    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 138
    sget p3, Lcom/metamoji/noteanytime/R$id;->sampleview:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;

    .line 139
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitBorderStyle$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->setUnitBorderStyle(Lcom/metamoji/un/text/model/UnitBorderStyle;)V

    .line 141
    sget p3, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 142
    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle$ListAdapter;->this$0:Lcom/metamoji/ui/dialog/TextUnitBorderStyle;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;->-$$Nest$fgetselIdx(Lcom/metamoji/ui/dialog/TextUnitBorderStyle;)I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/View;->setActivated(Z)V

    return-object p2
.end method
