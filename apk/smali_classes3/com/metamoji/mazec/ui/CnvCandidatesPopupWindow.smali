.class public Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;
.super Landroid/widget/PopupWindow;
.source "CnvCandidatesPopupWindow.java"

# interfaces
.implements Lcom/metamoji/mazec/ui/CnvCandidatesView$OnSelectListener;


# static fields
.field private static mScrollerEdgeColor:I


# instance fields
.field private mCnvCandView:Lcom/metamoji/mazec/ui/CnvCandidatesView;

.field private mScrollView:Lcom/metamoji/mazec/ui/ExtScrollView;

.field private mSelectedWord:Lcom/metamoji/mazec/converter/MmjiWord;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    const-string v1, "color.color_cnv_candidates_fading_edge"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->mScrollerEdgeColor:I

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/mazec/MazecIms;)V
    .locals 3

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->mScrollView:Lcom/metamoji/mazec/ui/ExtScrollView;

    .line 37
    iput-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->mCnvCandView:Lcom/metamoji/mazec/ui/CnvCandidatesView;

    .line 38
    iput-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->mSelectedWord:Lcom/metamoji/mazec/converter/MmjiWord;

    .line 47
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 48
    const-string v1, "layout.cnv_candidates_popup_na"

    .line 49
    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 52
    new-instance v1, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow$1;-><init>(Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    const-string v1, "id.linearLayoutTop"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 60
    new-instance v2, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow$2;

    invoke-direct {v2, p0}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow$2;-><init>(Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->setContentView(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->setTouchable(Z)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->setOutsideTouchable(Z)V

    .line 73
    const-string v0, "id.btn_candi_close"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 75
    new-instance v1, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow$3;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow$3;-><init>(Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :cond_0
    const-string v0, "id.scrollView"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/ExtScrollView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->mScrollView:Lcom/metamoji/mazec/ui/ExtScrollView;

    if-eqz v0, :cond_1

    .line 85
    sget v1, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->mScrollerEdgeColor:I

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/ExtScrollView;->setFadingEdgeColor(I)V

    .line 89
    :cond_1
    const-string v0, "id.cnv_candidates_view"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/ui/CnvCandidatesView;

    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->mCnvCandView:Lcom/metamoji/mazec/ui/CnvCandidatesView;

    return-void
.end method


# virtual methods
.method public getSelectedWord()Lcom/metamoji/mazec/converter/MmjiWord;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->mSelectedWord:Lcom/metamoji/mazec/converter/MmjiWord;

    return-object v0
.end method

.method public onSelect(Lcom/metamoji/mazec/converter/MmjiWord;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->mSelectedWord:Lcom/metamoji/mazec/converter/MmjiWord;

    .line 148
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->dismiss()V

    return-void
.end method

.method public popup(Landroid/view/View;Lcom/metamoji/mazec/converter/ConvertResult;[I)V
    .locals 7

    .line 108
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 109
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 110
    const-string v1, "dimen.cnv_result_list_height"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 112
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/lit8 v0, v1, 0x5a

    .line 115
    div-int/lit8 v0, v0, 0x64

    .line 118
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 119
    invoke-virtual {p1, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    .line 124
    const-string v6, "id.linearLayoutTop"

    invoke-static {v6}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 125
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 126
    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v5, p0, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->mCnvCandView:Lcom/metamoji/mazec/ui/CnvCandidatesView;

    invoke-virtual {v5, p2, p3, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->initView(Lcom/metamoji/mazec/converter/ConvertResult;[II)V

    .line 131
    iget-object p2, p0, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->mCnvCandView:Lcom/metamoji/mazec/ui/CnvCandidatesView;

    invoke-virtual {p2, p0}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->setOnSelectListener(Lcom/metamoji/mazec/ui/CnvCandidatesView$OnSelectListener;)V

    .line 133
    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->setClippingEnabled(Z)V

    .line 136
    iget p2, v4, Landroid/graphics/Rect;->left:I

    iget p3, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 138
    invoke-virtual {p0, v1, v3}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->update(II)V

    :cond_1
    return-void
.end method

.method public setCurrentCandidateIndex(I)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->mCnvCandView:Lcom/metamoji/mazec/ui/CnvCandidatesView;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->setCurrentCandidateIndex(I)V

    .line 154
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->mCnvCandView:Lcom/metamoji/mazec/ui/CnvCandidatesView;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->getCandidateRect(I)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->mScrollView:Lcom/metamoji/mazec/ui/ExtScrollView;

    iget-object v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->mCnvCandView:Lcom/metamoji/mazec/ui/CnvCandidatesView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/metamoji/mazec/ui/ExtScrollView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    :cond_0
    return-void
.end method
