.class Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PoisonousMushroomCreatorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;Landroid/content/Context;)V
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

    .line 88
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$ListAdapter;->this$0:Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$ListAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 94
    sget-object v0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->mushroomList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 99
    sget-object v0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->mushroomList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 111
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$ListAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 112
    sget v1, Lcom/metamoji/noteanytime/R$layout;->item_poisonousmushroom_creator:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 116
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    .line 119
    sget v1, Lcom/metamoji/noteanytime/R$id;->title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 120
    const-string v2, "TITLE"

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    sget p3, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 124
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$ListAdapter;->this$0:Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->-$$Nest$fgetm_selectIndex(Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;)I

    move-result v1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setActivated(Z)V

    return-object p2
.end method
