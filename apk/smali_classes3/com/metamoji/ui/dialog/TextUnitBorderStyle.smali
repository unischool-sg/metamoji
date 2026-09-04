.class public Lcom/metamoji/ui/dialog/TextUnitBorderStyle;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "TextUnitBorderStyle.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/TextUnitBorderStyle$ListAdapter;
    }
.end annotation


# instance fields
.field private selIdx:I

.field private unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;


# direct methods
.method static bridge synthetic -$$Nest$fgetselIdx(Lcom/metamoji/ui/dialog/TextUnitBorderStyle;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;->selIdx:I

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/UnitBorderStyle;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 71
    const-string v0, "TextUnitBorderStyleDialogParams"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/metamoji/un/text/DataUtil;->createBorderStyleFromString(Ljava/lang/String;)Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    return-void
.end method


# virtual methods
.method public getUnitBorderStyle()Lcom/metamoji/un/text/model/UnitBorderStyle;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    if-eqz p3, :cond_0

    .line 42
    invoke-direct {p0, p3}, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 44
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_textunit_unitborderstyle:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;->mViewId:I

    .line 45
    sget v0, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_BorderLine:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;->mTitleId:I

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
    new-instance p3, Lcom/metamoji/ui/dialog/TextUnitBorderStyle$ListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/metamoji/ui/dialog/TextUnitBorderStyle$ListAdapter;-><init>(Lcom/metamoji/ui/dialog/TextUnitBorderStyle;Landroid/content/Context;)V

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

    .line 151
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/metamoji/un/text/model/UnitBorderStyle;

    iput-object p4, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 154
    iget p4, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;->selIdx:I

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p5

    sub-int/2addr p4, p5

    if-ltz p4, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_0

    .line 156
    invoke-virtual {p1, p4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget p4, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/view/View;->setActivated(Z)V

    .line 158
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 161
    iput p3, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;->selIdx:I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 67
    invoke-static {v0}, Lcom/metamoji/un/text/DataUtil;->createTextUnitBorderStyleString(Lcom/metamoji/un/text/model/UnitBorderStyle;)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "TextUnitBorderStyleDialogParams"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 79
    sget v1, Lcom/metamoji/noteanytime/R$id;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 80
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/dialog/TextUnitBorderStyle$ListAdapter;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/dialog/TextUnitBorderStyle$ListAdapter;->getPosition(Lcom/metamoji/un/text/model/UnitBorderStyle;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;->selIdx:I

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 85
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onStart()V

    return-void
.end method
