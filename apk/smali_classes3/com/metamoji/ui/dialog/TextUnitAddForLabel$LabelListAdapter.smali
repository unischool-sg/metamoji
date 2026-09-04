.class Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TextUnitAddForLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/TextUnitAddForLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LabelListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListItemData;",
        ">;"
    }
.end annotation


# instance fields
.field private m_layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/metamoji/ui/dialog/TextUnitAddForLabel;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/TextUnitAddForLabel;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListAdapter;->this$0:Lcom/metamoji/ui/dialog/TextUnitAddForLabel;

    const/4 p1, 0x0

    .line 50
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 51
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 57
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListItemData;

    if-nez p2, :cond_0

    .line 60
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->dialog_text_unit_add_for_label_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    :cond_0
    sget p3, Lcom/metamoji/noteanytime/R$id;->colorView:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 63
    iget p1, p1, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListItemData;->labelColor:I

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p2
.end method
