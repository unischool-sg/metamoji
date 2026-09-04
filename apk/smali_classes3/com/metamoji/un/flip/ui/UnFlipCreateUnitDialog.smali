.class public Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "UnFlipCreateUnitDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;,
        Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;,
        Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;
    }
.end annotation


# instance fields
.field m_listDataAdapter:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;

.field m_listView:Landroid/widget/ListView;

.field m_result:I


# direct methods
.method public static synthetic $r8$lambda$99ra-0ABwgZ8edMBoGx3vAPNx30(Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->lambda$onCreateView$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 73
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->m_result:I

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 73
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->m_result:I

    .line 81
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_FLIP_UNIT_ADD:I

    iput v0, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->mTitleId:I

    .line 83
    new-instance v0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;

    invoke-direct {v0, p1}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->m_listDataAdapter:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;

    return-void
.end method

.method private handleItemClicked(I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->m_listDataAdapter:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;

    .line 176
    iget p1, p1, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;->labelColor:I

    iput p1, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->m_result:I

    const/4 p1, 0x0

    .line 177
    invoke-virtual {p0, p1}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 105
    invoke-direct {p0, p3}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->handleItemClicked(I)V

    return-void
.end method


# virtual methods
.method public getResultColor()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->m_result:I

    return v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 167
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 93
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_flip_unit_add:I

    iput v0, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->mViewId:I

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->mDone:Z

    .line 95
    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->mCancel:Z

    .line 96
    iput-boolean v0, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->mModal:Z

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 103
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->listView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->m_listView:Landroid/widget/ListView;

    .line 104
    iget-object p3, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->m_listDataAdapter:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object p2, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->m_listView:Landroid/widget/ListView;

    new-instance p3, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p2, 0x7

    .line 107
    new-array p2, p2, [Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;

    sget-object p3, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;->Type1:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;

    aput-object p3, p2, v0

    sget-object p3, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;->Type2:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;

    aput-object p3, p2, v2

    const/4 p3, 0x2

    sget-object v1, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;->Type3:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;

    aput-object v1, p2, p3

    const/4 p3, 0x3

    sget-object v1, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;->Type4:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;

    aput-object v1, p2, p3

    sget-object p3, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;->Type5:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;

    const/4 v1, 0x4

    aput-object p3, p2, v1

    sget-object p3, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;->Type6:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;

    const/4 v3, 0x5

    aput-object p3, p2, v3

    sget-object p3, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;->Type7:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;

    const/4 v4, 0x6

    aput-object p3, p2, v4

    .line 114
    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->backgroundColorArray()[I

    move-result-object p3

    move v5, v0

    .line 117
    :goto_0
    array-length v6, p3

    if-ge v5, v6, :cond_2

    if-lt v5, v1, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    new-instance v6, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;

    invoke-direct {v6}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;-><init>()V

    .line 124
    aget-object v7, p2, v5

    iput-object v7, v6, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;->labelType:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;

    .line 125
    aget v7, p3, v5

    iput v7, v6, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;->labelColor:I

    .line 126
    iget-object v7, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->m_listDataAdapter:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;

    invoke-virtual {v7, v6}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 130
    :cond_2
    :goto_1
    array-length v5, p3

    if-le v5, v1, :cond_3

    .line 132
    new-instance v6, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;

    invoke-direct {v6}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;-><init>()V

    .line 133
    aget-object v1, p2, v1

    iput-object v1, v6, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;->labelType:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;

    sub-int/2addr v5, v2

    .line 134
    aget p3, p3, v5

    iput p3, v6, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;->labelColor:I

    .line 135
    iget-object p3, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->m_listDataAdapter:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;

    invoke-virtual {p3, v6}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;->add(Ljava/lang/Object;)V

    .line 138
    :cond_3
    new-instance p3, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;

    invoke-direct {p3}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;-><init>()V

    .line 139
    aget-object v1, p2, v3

    iput-object v1, p3, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;->labelType:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;

    const/16 v1, 0xff

    .line 140
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, p3, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;->labelColor:I

    .line 141
    iget-object v2, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->m_listDataAdapter:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;

    invoke-virtual {v2, p3}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;->add(Ljava/lang/Object;)V

    .line 143
    new-instance p3, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;

    invoke-direct {p3}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;-><init>()V

    .line 144
    aget-object p2, p2, v4

    iput-object p2, p3, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;->labelType:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$FlipUnitColorType;

    .line 145
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    iput p2, p3, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListItemData;->labelColor:I

    .line 146
    iget-object p2, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->m_listDataAdapter:Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;

    invoke-virtual {p2, p3}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog$LabelListAdapter;->add(Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 0

    .line 157
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public setDlgTitleResourceId(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->mTitleId:I

    return-void
.end method
