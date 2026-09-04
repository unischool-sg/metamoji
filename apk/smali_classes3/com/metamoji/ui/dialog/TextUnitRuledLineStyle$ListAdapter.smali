.class Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TextUnitRuledLineStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private ITEMS:[Lcom/metamoji/un/text/model/RuledLineStyle;

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;Landroid/content/Context;)V
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

    .line 107
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle$ListAdapter;->this$0:Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 p1, 0xb

    .line 91
    new-array p1, p1, [Lcom/metamoji/un/text/model/RuledLineStyle;

    const/4 v0, 0x0

    sget-object v1, Lcom/metamoji/un/text/model/RuledLineStyle;->None:Lcom/metamoji/un/text/model/RuledLineStyle;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/metamoji/un/text/model/RuledLineStyle;->L10:Lcom/metamoji/un/text/model/RuledLineStyle;

    aput-object v1, p1, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/metamoji/un/text/model/RuledLineStyle;->L11:Lcom/metamoji/un/text/model/RuledLineStyle;

    aput-object v1, p1, v0

    const/4 v0, 0x3

    sget-object v1, Lcom/metamoji/un/text/model/RuledLineStyle;->L12:Lcom/metamoji/un/text/model/RuledLineStyle;

    aput-object v1, p1, v0

    const/4 v0, 0x4

    sget-object v1, Lcom/metamoji/un/text/model/RuledLineStyle;->L13:Lcom/metamoji/un/text/model/RuledLineStyle;

    aput-object v1, p1, v0

    const/4 v0, 0x5

    sget-object v1, Lcom/metamoji/un/text/model/RuledLineStyle;->L14:Lcom/metamoji/un/text/model/RuledLineStyle;

    aput-object v1, p1, v0

    const/4 v0, 0x6

    sget-object v1, Lcom/metamoji/un/text/model/RuledLineStyle;->L15:Lcom/metamoji/un/text/model/RuledLineStyle;

    aput-object v1, p1, v0

    const/4 v0, 0x7

    sget-object v1, Lcom/metamoji/un/text/model/RuledLineStyle;->L16:Lcom/metamoji/un/text/model/RuledLineStyle;

    aput-object v1, p1, v0

    const/16 v0, 0x8

    sget-object v1, Lcom/metamoji/un/text/model/RuledLineStyle;->L17:Lcom/metamoji/un/text/model/RuledLineStyle;

    aput-object v1, p1, v0

    const/16 v0, 0x9

    sget-object v1, Lcom/metamoji/un/text/model/RuledLineStyle;->L20:Lcom/metamoji/un/text/model/RuledLineStyle;

    aput-object v1, p1, v0

    const/16 v0, 0xa

    sget-object v1, Lcom/metamoji/un/text/model/RuledLineStyle;->L22:Lcom/metamoji/un/text/model/RuledLineStyle;

    aput-object v1, p1, v0

    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle$ListAdapter;->ITEMS:[Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 108
    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle$ListAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle$ListAdapter;->ITEMS:[Lcom/metamoji/un/text/model/RuledLineStyle;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle$ListAdapter;->ITEMS:[Lcom/metamoji/un/text/model/RuledLineStyle;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(Lcom/metamoji/un/text/model/RuledLineStyle;)I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle$ListAdapter;->ITEMS:[Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 133
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle$ListAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 134
    sget v1, Lcom/metamoji/noteanytime/R$layout;->item_textunit_ruledlinestyle:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 138
    sget v1, Lcom/metamoji/noteanytime/R$id;->textview_for_none:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 139
    sget-object v2, Lcom/metamoji/un/text/model/RuledLineStyle;->None:Lcom/metamoji/un/text/model/RuledLineStyle;

    if-ne v2, p3, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    sget v1, Lcom/metamoji/noteanytime/R$id;->sampleview:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;

    .line 142
    invoke-virtual {v1, p3}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->setRuledLineStyle(Lcom/metamoji/un/text/model/RuledLineStyle;)V

    .line 144
    sget p3, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 145
    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle$ListAdapter;->this$0:Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->-$$Nest$fgetselIdx(Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;)I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/View;->setActivated(Z)V

    return-object p2
.end method
