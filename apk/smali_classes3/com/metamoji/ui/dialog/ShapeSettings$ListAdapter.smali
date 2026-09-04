.class Lcom/metamoji/ui/dialog/ShapeSettings$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShapeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/ShapeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private ITEMS:[I

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/metamoji/ui/dialog/ShapeSettings;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/ShapeSettings;Landroid/content/Context;)V
    .locals 3
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

    .line 1139
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$ListAdapter;->this$0:Lcom/metamoji/ui/dialog/ShapeSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x2

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1130
    filled-new-array {v1, v2, p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShapeSettings$ListAdapter;->ITEMS:[I

    .line 1140
    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings$ListAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1145
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings$ListAdapter;->ITEMS:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1150
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeSettings$ListAdapter;->ITEMS:[I

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1161
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShapeSettings$ListAdapter;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 1162
    sget v0, Lcom/metamoji/noteanytime/R$layout;->item_shape_arrow:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1164
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/ShapeSettings$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1166
    sget p3, Lcom/metamoji/noteanytime/R$id;->sampleview:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;

    .line 1167
    invoke-static {p1}, Lcom/metamoji/ui/UIUtils;->getArrowStyle(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->setArrowStyle(Lcom/metamoji/nt/share/NtPenStyle;)V

    return-object p2
.end method
