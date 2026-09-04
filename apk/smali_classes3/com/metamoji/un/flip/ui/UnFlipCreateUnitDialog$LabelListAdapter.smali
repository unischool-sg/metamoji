.class Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UnFlipCreateUnitDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LabelListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;",
        ">;"
    }
.end annotation


# instance fields
.field private final m_layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 52
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 59
    invoke-virtual {p0, p1}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;

    if-nez p2, :cond_0

    .line 62
    iget-object p2, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->dialog_flip_unit_create_unit:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 64
    :cond_0
    sget p3, Lcom/metamoji/noteanytime/R$id;->colorView:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 65
    iget p1, p1, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;->labelColor:I

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p2
.end method
