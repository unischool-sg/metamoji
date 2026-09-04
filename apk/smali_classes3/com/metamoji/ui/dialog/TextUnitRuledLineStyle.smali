.class public Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "TextUnitRuledLineStyle.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle$ListAdapter;
    }
.end annotation


# instance fields
.field private ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

.field private selIdx:I


# direct methods
.method static bridge synthetic -$$Nest$fgetselIdx(Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->selIdx:I

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/RuledLineStyle;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 71
    const-string v0, "TextUnitRuledLineStyleDialogParams"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/metamoji/un/text/DataUtil;->createRuledLineStyleFromString(Ljava/lang/String;)Lcom/metamoji/un/text/model/RuledLineStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    return-void
.end method


# virtual methods
.method public getRuledLineStyle()Lcom/metamoji/un/text/model/RuledLineStyle;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    if-eqz p3, :cond_0

    .line 42
    invoke-direct {p0, p3}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 44
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_textunit_ruledlinestyle:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->mViewId:I

    .line 45
    sget v0, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_RuledLine:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->mTitleId:I

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 52
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 56
    new-instance p3, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle$ListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle$ListAdapter;-><init>(Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;Landroid/content/Context;)V

    .line 57
    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 154
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/metamoji/un/text/model/RuledLineStyle;

    iput-object p4, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 157
    iget p4, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->selIdx:I

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p5

    sub-int/2addr p4, p5

    if-ltz p4, :cond_0

    .line 158
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_0

    .line 159
    invoke-virtual {p1, p4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget p4, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/view/View;->setActivated(Z)V

    .line 161
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 164
    iput p3, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->selIdx:I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 67
    invoke-static {v0}, Lcom/metamoji/un/text/DataUtil;->createRuledLineStyleString(Lcom/metamoji/un/text/model/RuledLineStyle;)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "TextUnitRuledLineStyleDialogParams"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 79
    sget v1, Lcom/metamoji/noteanytime/R$id;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 80
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle$ListAdapter;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle$ListAdapter;->getPosition(Lcom/metamoji/un/text/model/RuledLineStyle;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->selIdx:I

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 85
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onStart()V

    return-void
.end method
