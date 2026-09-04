.class public Lcom/metamoji/ui/common/UiFitInParentLinearLayout;
.super Landroid/widget/LinearLayout;
.source "UiFitInParentLinearLayout.java"


# instance fields
.field private final RELAYOUT_HEIGHT_MIN_ERROR:I

.field private final RELAYOUT_WIDTH_MIN_ERROR:I

.field mMinHeight:I

.field mMinWidth:I

.field mReLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x5

    .line 20
    iput p3, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->RELAYOUT_WIDTH_MIN_ERROR:I

    .line 21
    iput p3, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->RELAYOUT_HEIGHT_MIN_ERROR:I

    const/4 p3, 0x0

    .line 23
    iput p3, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mMinHeight:I

    .line 24
    iput p3, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mMinWidth:I

    .line 25
    iput-boolean p3, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mReLayout:Z

    .line 37
    sget-object v0, Lcom/metamoji/noteanytime/R$styleable;->UiFitInParentLinearLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 40
    :try_start_0
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->UiFitInParentLinearLayout_android_minHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mMinHeight:I

    .line 42
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->UiFitInParentLinearLayout_android_minWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mMinWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    throw p2
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 10

    .line 76
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 78
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 79
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 80
    check-cast v0, Landroid/view/ViewGroup;

    .line 81
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    .line 82
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    .line 83
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    .line 84
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    .line 85
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, 0x0

    cmpl-float v6, v0, v5

    if-lez v6, :cond_c

    cmpl-float v5, v3, v5

    if-lez v5, :cond_c

    mul-float v5, v1, v0

    mul-float v6, v2, v3

    cmpl-float v7, v5, v6

    const/4 v8, 0x5

    const/4 v9, 0x1

    if-lez v7, :cond_5

    .line 88
    iget v5, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mMinHeight:I

    if-lez v5, :cond_2

    div-float/2addr v6, v1

    .line 90
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 91
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 93
    iget p2, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mMinHeight:I

    if-le p2, p1, :cond_0

    move p1, p2

    .line 96
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-ge p2, p1, :cond_1

    .line 97
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_1
    move p2, p1

    int-to-float p1, p2

    mul-float/2addr p1, v1

    div-float/2addr p1, v2

    .line 99
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p1, v9

    .line 100
    iput p2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 101
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v8, :cond_b

    .line 102
    iput-boolean v9, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mReLayout:Z

    goto/16 :goto_0

    .line 105
    :cond_2
    iget v0, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mMinWidth:I

    if-lez v0, :cond_b

    div-float/2addr v6, v1

    .line 107
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 108
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 109
    iget p2, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mMinWidth:I

    if-le p2, p1, :cond_3

    move p1, p2

    .line 112
    :cond_3
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-ge p2, p1, :cond_4

    .line 113
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_4
    int-to-float p2, p1

    mul-float/2addr p2, v2

    div-float/2addr p2, v1

    .line 115
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p2, v9

    .line 116
    iput p1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v8, :cond_b

    .line 118
    iput-boolean v9, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mReLayout:Z

    goto :goto_0

    :cond_5
    cmpg-float v6, v5, v6

    if-gez v6, :cond_b

    .line 123
    iget v6, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mMinHeight:I

    if-lez v6, :cond_8

    div-float/2addr v5, v2

    .line 125
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 126
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 128
    iget p2, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mMinHeight:I

    if-le p2, p1, :cond_6

    move p1, p2

    .line 131
    :cond_6
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-ge p2, p1, :cond_7

    .line 132
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_7
    move p2, p1

    int-to-float p1, p2

    mul-float/2addr p1, v1

    div-float/2addr p1, v2

    .line 134
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p1, v9

    .line 135
    iput p2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 136
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v8, :cond_b

    .line 137
    iput-boolean v9, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mReLayout:Z

    goto :goto_0

    .line 140
    :cond_8
    iget v6, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mMinWidth:I

    if-lez v6, :cond_b

    div-float/2addr v5, v2

    .line 142
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 143
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 144
    iget p2, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mMinWidth:I

    if-le p2, p1, :cond_9

    move p1, p2

    .line 147
    :cond_9
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-ge p2, p1, :cond_a

    .line 148
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_a
    int-to-float p2, p1

    mul-float/2addr p2, v2

    div-float/2addr p2, v1

    .line 150
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p2, v9

    .line 151
    iput p1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v8, :cond_b

    .line 153
    iput-boolean v9, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mReLayout:Z

    .line 157
    :cond_b
    :goto_0
    invoke-virtual {p0, v4}, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->setMeasuredDimension(II)V

    :cond_c
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 63
    iget-boolean p1, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mReLayout:Z

    if-eqz p1, :cond_0

    .line 64
    new-instance p1, Lcom/metamoji/ui/common/UiFitInParentLinearLayout$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/common/UiFitInParentLinearLayout$1;-><init>(Lcom/metamoji/ui/common/UiFitInParentLinearLayout;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mReLayout:Z

    :cond_0
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 51
    iput p1, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mMinHeight:I

    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 57
    iput p1, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->mMinWidth:I

    return-void
.end method
