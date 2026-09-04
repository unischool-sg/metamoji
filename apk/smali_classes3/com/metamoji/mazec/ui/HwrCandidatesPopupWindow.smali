.class public Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;
.super Landroid/widget/PopupWindow;
.source "HwrCandidatesPopupWindow.java"


# instance fields
.field private mAltCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwCandidates;",
            ">;"
        }
    .end annotation
.end field

.field private mHwrCandidateClickListener:Lcom/metamoji/mazec/ui/HwrCandidatesView$OnClickListener;

.field private mIsOkResult:Z

.field private mRegisterButtonTapped:Z

.field private mSelectedStr:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fputmAltCandidates(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->mAltCandidates:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsOkResult(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->mIsOkResult:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRegisterButtonTapped(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->mRegisterButtonTapped:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSelectedStr(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->mSelectedStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->mIsOkResult:Z

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->mSelectedStr:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->mAltCandidates:Ljava/util/List;

    .line 33
    iput-boolean v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->mRegisterButtonTapped:Z

    .line 36
    new-instance v2, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$1;

    invoke-direct {v2, p0}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$1;-><init>(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;)V

    iput-object v2, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->mHwrCandidateClickListener:Lcom/metamoji/mazec/ui/HwrCandidatesView$OnClickListener;

    .line 52
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 53
    const-string v2, "layout.hwr_candidates_popup_na"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    .line 54
    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 55
    new-instance v2, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$2;

    invoke-direct {v2, p0}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$2;-><init>(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 64
    const-string v2, "id.linearLayoutTop"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 65
    new-instance v3, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$3;

    invoke-direct {v3, p0}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$3;-><init>(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->setContentView(Landroid/view/View;)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    .line 74
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->setTouchable(Z)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->setOutsideTouchable(Z)V

    .line 84
    const-string v1, "id.btn_candi_clear"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 86
    new-instance v2, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$4;

    invoke-direct {v2, p0}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$4;-><init>(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_0
    const-string v1, "id.btn_candi_close"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 98
    new-instance v2, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$5;

    invoke-direct {v2, p0}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$5;-><init>(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_1
    const-string v1, "id.btn_candi_register"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 107
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/metamoji/mazec/MazecIms;->isUserCharFormRegisterEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    invoke-virtual {v1}, Lcom/metamoji/mazec/MazecIms;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/mazec/MazecConfig;->isRecognitionExplicitLearningEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    new-instance v0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$6;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$6;-><init>(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    const/4 v0, 0x4

    .line 122
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getAltCandidates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwCandidates;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->mAltCandidates:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedString()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->mSelectedStr:Ljava/lang/String;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->mIsOkResult:Z

    return v0
.end method

.method public isRegisterButtonTapped()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->mRegisterButtonTapped:Z

    return v0
.end method

.method public popup(Landroid/view/View;FFLcom/metamoji/mazec/recognizer/HwRecognitionResult;IILjava/lang/String;)V
    .locals 13

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v2, v0, 0x5a

    .line 167
    div-int/lit8 v2, v2, 0x64

    .line 169
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 171
    const-string v4, "dimen.hwr_candidates_popup_max_width"

    invoke-static {v4}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v2

    cmpl-float v5, v5, v4

    if-lez v5, :cond_0

    float-to-int v2, v4

    :cond_0
    move v8, v2

    .line 180
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 181
    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 182
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v10

    .line 184
    const-string v4, "id.linearLayoutTop"

    invoke-static {v4}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/LinearLayout;

    .line 185
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 187
    const-string v4, "id.hwr_candidates_view"

    invoke-static {v4}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazec/ui/HwrCandidatesView;

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    .line 188
    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->initView(Lcom/metamoji/mazec/recognizer/HwRecognitionResult;IIILjava/lang/String;)V

    .line 189
    iget-object v5, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->mHwrCandidateClickListener:Lcom/metamoji/mazec/ui/HwrCandidatesView$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->setOnClickListener(Lcom/metamoji/mazec/ui/HwrCandidatesView$OnClickListener;)V

    .line 191
    invoke-virtual {v4}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getDispWidth()I

    move-result v4

    .line 196
    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float v5, p2, v5

    div-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 197
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, p2

    sub-float/2addr v7, v6

    float-to-int v6, v7

    const/4 v7, 0x4

    if-gez v5, :cond_1

    .line 200
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v4

    add-int/lit8 v6, v5, -0x4

    move v5, v7

    :cond_1
    if-gez v6, :cond_2

    .line 204
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_0
    const/4 v4, 0x0

    .line 208
    invoke-virtual {v12, v5, v4, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 210
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    sget-object v5, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v6, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v5, v6, :cond_3

    .line 214
    const-string v5, "dimen.cnv_result_list_height"

    invoke-static {v5}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v4

    .line 217
    :goto_1
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v3

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->showAtLocation(Landroid/view/View;III)V

    add-int p1, v1, v3

    .line 219
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->update(II)V

    .line 222
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 223
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 222
    invoke-virtual {v10, v5, v4}, Landroid/view/View;->measure(II)V

    .line 224
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-le v4, p1, :cond_4

    .line 226
    iget p1, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int v1, v4, v1

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v2, v0, v4}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->update(IIII)V

    :cond_4
    return-void
.end method
