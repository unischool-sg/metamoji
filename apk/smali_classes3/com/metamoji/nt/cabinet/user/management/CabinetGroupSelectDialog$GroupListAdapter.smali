.class Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog$GroupListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CabinetGroupSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private m_layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;Landroid/content/Context;)V
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

    .line 41
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog$GroupListAdapter;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;

    const/4 p1, 0x0

    .line 42
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 43
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog$GroupListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 50
    iget-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog$GroupListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->dialog_cabinet_user_select_listitem:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog$GroupListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 57
    sget p3, Lcom/metamoji/noteanytime/R$id;->labelText:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 58
    const-string v0, "group"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 63
    sget p3, Lcom/metamoji/noteanytime/R$id;->checkBox:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    const/16 v0, 0x8

    .line 64
    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 67
    sget p3, Lcom/metamoji/noteanytime/R$id;->selectedLabel:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 68
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    new-instance p3, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog$GroupListAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog$GroupListAdapter$1;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog$GroupListAdapter;Ljava/util/Map;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
