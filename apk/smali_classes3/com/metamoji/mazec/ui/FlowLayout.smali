.class public Lcom/metamoji/mazec/ui/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private horizontalSpacing:I

.field private orientation:I

.field private verticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/metamoji/mazec/ui/FlowLayout;->horizontalSpacing:I

    .line 68
    iput v0, p0, Lcom/metamoji/mazec/ui/FlowLayout;->verticalSpacing:I

    .line 69
    iput v0, p0, Lcom/metamoji/mazec/ui/FlowLayout;->orientation:I

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazec/ui/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/metamoji/mazec/ui/FlowLayout;->horizontalSpacing:I

    .line 68
    iput v0, p0, Lcom/metamoji/mazec/ui/FlowLayout;->verticalSpacing:I

    .line 69
    iput v0, p0, Lcom/metamoji/mazec/ui/FlowLayout;->orientation:I

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 67
    iput p3, p0, Lcom/metamoji/mazec/ui/FlowLayout;->horizontalSpacing:I

    .line 68
    iput p3, p0, Lcom/metamoji/mazec/ui/FlowLayout;->verticalSpacing:I

    .line 69
    iput p3, p0, Lcom/metamoji/mazec/ui/FlowLayout;->orientation:I

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getHorizontalSpacing(Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;)I
    .locals 1

    .line 233
    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->horizontalSpacingSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-static {p1}, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->-$$Nest$fgethorizontalSpacing(Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;)I

    move-result p1

    return p1

    .line 236
    :cond_0
    iget p1, p0, Lcom/metamoji/mazec/ui/FlowLayout;->horizontalSpacing:I

    return p1
.end method

.method private getVerticalSpacing(Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;)I
    .locals 1

    .line 223
    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->verticalSpacingSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {p1}, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->-$$Nest$fgetverticalSpacing(Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;)I

    move-result p1

    return p1

    .line 226
    :cond_0
    iget p1, p0, Lcom/metamoji/mazec/ui/FlowLayout;->verticalSpacing:I

    return p1
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 279
    const-string/jumbo v0, "styleable.FlowLayout"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResourceIds(Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 281
    :try_start_0
    const-string/jumbo p2, "styleable.FlowLayout_horizontalSpacing"

    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/metamoji/mazec/ui/FlowLayout;->horizontalSpacing:I

    .line 282
    const-string/jumbo p2, "styleable.FlowLayout_verticalSpacing"

    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/metamoji/mazec/ui/FlowLayout;->verticalSpacing:I

    .line 283
    const-string/jumbo p2, "styleable.FlowLayout_orientation"

    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/metamoji/mazec/ui/FlowLayout;->orientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 287
    throw p2
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 260
    instance-of p1, p1, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;

    return p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/FlowLayout;->generateDefaultLayoutParams()Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;
    .locals 2

    .line 265
    new-instance v0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/FlowLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/FlowLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;
    .locals 2

    .line 270
    new-instance v0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;

    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;
    .locals 1

    .line 275
    new-instance v0, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;

    invoke-direct {v0, p1}, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/metamoji/mazec/ui/FlowLayout;->horizontalSpacing:I

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/metamoji/mazec/ui/FlowLayout;->verticalSpacing:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 243
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/FlowLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 245
    invoke-virtual {p0, p2}, Lcom/metamoji/mazec/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 246
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;

    .line 247
    invoke-static {p4}, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->-$$Nest$fgetx(Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;)I

    move-result p5

    invoke-static {p4}, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->-$$Nest$fgety(Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;)I

    move-result v0

    invoke-static {p4}, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->-$$Nest$fgetx(Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;)I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p4}, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->-$$Nest$fgety(Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;)I

    move-result p4

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr p4, v2

    invoke-virtual {p3, p5, v0, v1, p4}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 92
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 93
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    .line 95
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 96
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 101
    iget v7, v0, Lcom/metamoji/mazec/ui/FlowLayout;->orientation:I

    if-nez v7, :cond_0

    move v8, v3

    move v7, v5

    goto :goto_0

    :cond_0
    move v8, v4

    move v7, v6

    .line 119
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    :goto_1
    if-ge v10, v9, :cond_8

    move/from16 v17, v7

    .line 121
    invoke-virtual {v0, v10}, Lcom/metamoji/mazec/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move/from16 v18, v9

    .line 122
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v19, v10

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    move/from16 v21, v3

    goto/16 :goto_6

    :cond_1
    const/high16 v9, -0x80000000

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v5, v10, :cond_2

    move v12, v9

    goto :goto_2

    :cond_2
    move v12, v5

    .line 127
    :goto_2
    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    if-ne v6, v10, :cond_3

    goto :goto_3

    :cond_3
    move v9, v6

    .line 128
    :goto_3
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 126
    invoke-virtual {v7, v12, v9}, Landroid/view/View;->measure(II)V

    .line 131
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;

    .line 133
    invoke-direct {v0, v9}, Lcom/metamoji/mazec/ui/FlowLayout;->getHorizontalSpacing(Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;)I

    move-result v10

    .line 134
    invoke-direct {v0, v9}, Lcom/metamoji/mazec/ui/FlowLayout;->getVerticalSpacing(Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;)I

    move-result v12

    .line 136
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 137
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    move/from16 v21, v3

    .line 144
    iget v3, v0, Lcom/metamoji/mazec/ui/FlowLayout;->orientation:I

    if-nez v3, :cond_4

    move v3, v7

    goto :goto_4

    :cond_4
    move v3, v12

    move v12, v10

    move v10, v3

    move/from16 v3, v20

    move/from16 v20, v7

    :goto_4
    add-int v13, v13, v20

    add-int v22, v13, v10

    .line 159
    invoke-static {v9}, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->-$$Nest$fgetnewLine(Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;)Z

    move-result v23

    if-nez v23, :cond_5

    if-eqz v17, :cond_6

    if-le v13, v8, :cond_6

    :cond_5
    add-int v16, v16, v14

    add-int v14, v3, v12

    add-int v22, v20, v10

    move v15, v3

    move/from16 v13, v20

    :cond_6
    add-int/2addr v12, v3

    .line 169
    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 170
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 174
    iget v12, v0, Lcom/metamoji/mazec/ui/FlowLayout;->orientation:I

    if-nez v12, :cond_7

    .line 175
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v13

    sub-int v7, v7, v20

    .line 176
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getPaddingTop()I

    move-result v12

    add-int v12, v12, v16

    goto :goto_5

    .line 178
    :cond_7
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getPaddingLeft()I

    move-result v12

    add-int v12, v12, v16

    .line 179
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getPaddingTop()I

    move-result v14

    add-int/2addr v14, v13

    sub-int v7, v14, v7

    move/from16 v24, v12

    move v12, v7

    move/from16 v7, v24

    .line 181
    :goto_5
    invoke-virtual {v9, v7, v12}, Lcom/metamoji/mazec/ui/FlowLayout$FlowLayoutParams;->setPosition(II)V

    .line 183
    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v9, v16, v3

    move v15, v3

    move v11, v7

    move v12, v9

    move v14, v10

    move/from16 v13, v22

    :goto_6
    add-int/lit8 v10, v19, 0x1

    move/from16 v7, v17

    move/from16 v9, v18

    move/from16 v3, v21

    goto/16 :goto_1

    .line 188
    :cond_8
    iget v3, v0, Lcom/metamoji/mazec/ui/FlowLayout;->orientation:I

    if-nez v3, :cond_9

    .line 189
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v11, v3

    .line 190
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getPaddingTop()I

    move-result v4

    goto :goto_7

    .line 192
    :cond_9
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v11, v3

    .line 193
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getPaddingRight()I

    move-result v4

    :goto_7
    add-int/2addr v3, v4

    add-int/2addr v12, v3

    .line 196
    iget v3, v0, Lcom/metamoji/mazec/ui/FlowLayout;->orientation:I

    if-nez v3, :cond_a

    .line 197
    invoke-static {v11, v1}, Lcom/metamoji/mazec/ui/FlowLayout;->resolveSize(II)I

    move-result v1

    invoke-static {v12, v2}, Lcom/metamoji/mazec/ui/FlowLayout;->resolveSize(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/mazec/ui/FlowLayout;->setMeasuredDimension(II)V

    return-void

    .line 199
    :cond_a
    invoke-static {v12, v1}, Lcom/metamoji/mazec/ui/FlowLayout;->resolveSize(II)I

    move-result v1

    invoke-static {v11, v2}, Lcom/metamoji/mazec/ui/FlowLayout;->resolveSize(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/mazec/ui/FlowLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0

    .line 216
    iput p1, p0, Lcom/metamoji/mazec/ui/FlowLayout;->horizontalSpacing:I

    .line 217
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/FlowLayout;->requestLayout()V

    .line 218
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/FlowLayout;->invalidate()V

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/metamoji/mazec/ui/FlowLayout;->verticalSpacing:I

    .line 208
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/FlowLayout;->requestLayout()V

    .line 209
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/FlowLayout;->invalidate()V

    return-void
.end method
