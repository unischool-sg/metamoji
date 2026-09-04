.class public Lcom/metamoji/ui/dialog/TextUnitAddForLabel;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "TextUnitAddForLabel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListAdapter;,
        Lcom/metamoji/ui/dialog/TextUnitAddForLabel$AddForLabelType;,
        Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListItemData;
    }
.end annotation


# instance fields
.field m_listDataAdapter:Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListAdapter;

.field m_listView:Landroid/widget/ListView;

.field m_result:I


# direct methods
.method static bridge synthetic -$$Nest$mhandleItemClicked(Lcom/metamoji/ui/dialog/TextUnitAddForLabel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->handleItemClicked(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 71
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->m_result:I

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 71
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->m_result:I

    .line 80
    new-instance v0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListAdapter;-><init>(Lcom/metamoji/ui/dialog/TextUnitAddForLabel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->m_listDataAdapter:Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListAdapter;

    return-void
.end method

.method private handleItemClicked(I)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->m_listDataAdapter:Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListItemData;

    .line 166
    iget p1, p1, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListItemData;->labelColor:I

    iput p1, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->m_result:I

    const/4 p1, 0x0

    .line 167
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->onDone(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getItemColor(I)I
    .locals 3

    .line 171
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 172
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 173
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 174
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 175
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method public getResultColor()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->m_result:I

    return v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 157
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 89
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_text_unit_add_for_label:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->mViewId:I

    .line 90
    sget v0, Lcom/metamoji/noteanytime/R$string;->DialogTitle_Add_TextLabel:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->mTitleId:I

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->mDone:Z

    .line 92
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 93
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->mCancel:Z

    goto :goto_0

    .line 95
    :cond_0
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->mCancel:Z

    .line 97
    :goto_0
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->mModal:Z

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 100
    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->mClosingOnReconstruction:Z

    if-eqz p2, :cond_1

    goto :goto_3

    .line 104
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->listView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->m_listView:Landroid/widget/ListView;

    .line 105
    iget-object p3, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->m_listDataAdapter:Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->m_listView:Landroid/widget/ListView;

    new-instance p3, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$1;-><init>(Lcom/metamoji/ui/dialog/TextUnitAddForLabel;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p2, 0x5

    .line 113
    new-array p2, p2, [Lcom/metamoji/ui/dialog/TextUnitAddForLabel$AddForLabelType;

    sget-object p3, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$AddForLabelType;->Type1:Lcom/metamoji/ui/dialog/TextUnitAddForLabel$AddForLabelType;

    aput-object p3, p2, v0

    sget-object p3, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$AddForLabelType;->Type2:Lcom/metamoji/ui/dialog/TextUnitAddForLabel$AddForLabelType;

    aput-object p3, p2, v2

    const/4 p3, 0x2

    sget-object v1, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$AddForLabelType;->Type3:Lcom/metamoji/ui/dialog/TextUnitAddForLabel$AddForLabelType;

    aput-object v1, p2, p3

    const/4 p3, 0x3

    sget-object v1, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$AddForLabelType;->Type4:Lcom/metamoji/ui/dialog/TextUnitAddForLabel$AddForLabelType;

    aput-object v1, p2, p3

    sget-object p3, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$AddForLabelType;->Type5:Lcom/metamoji/ui/dialog/TextUnitAddForLabel$AddForLabelType;

    const/4 v1, 0x4

    aput-object p3, p2, v1

    .line 114
    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->backgroundColorArray()[I

    move-result-object p3

    .line 117
    :goto_1
    array-length v3, p3

    if-ge v0, v3, :cond_3

    if-lt v0, v1, :cond_2

    goto :goto_2

    .line 123
    :cond_2
    new-instance v3, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListItemData;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListItemData;-><init>(Lcom/metamoji/ui/dialog/TextUnitAddForLabel;)V

    .line 124
    aget-object v4, p2, v0

    iput-object v4, v3, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListItemData;->labelType:Lcom/metamoji/ui/dialog/TextUnitAddForLabel$AddForLabelType;

    .line 125
    aget v4, p3, v0

    invoke-virtual {p0, v4}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->getItemColor(I)I

    move-result v4

    iput v4, v3, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListItemData;->labelColor:I

    .line 126
    iget-object v4, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->m_listDataAdapter:Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListAdapter;

    invoke-virtual {v4, v3}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_3
    :goto_2
    array-length v0, p3

    if-le v0, v1, :cond_4

    .line 132
    new-instance v3, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListItemData;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListItemData;-><init>(Lcom/metamoji/ui/dialog/TextUnitAddForLabel;)V

    .line 133
    aget-object p2, p2, v1

    iput-object p2, v3, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListItemData;->labelType:Lcom/metamoji/ui/dialog/TextUnitAddForLabel$AddForLabelType;

    sub-int/2addr v0, v2

    .line 134
    aget p2, p3, v0

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->getItemColor(I)I

    move-result p2

    iput p2, v3, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListItemData;->labelColor:I

    .line 135
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->m_listDataAdapter:Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListAdapter;

    invoke-virtual {p2, v3}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListAdapter;->add(Ljava/lang/Object;)V

    .line 138
    :cond_4
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    :cond_5
    :goto_3
    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 0

    .line 147
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method
