.class Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UiHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/UiHeaderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UiHeaderListItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    const-class v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/forSchool/ui/UiHeaderListView;Landroid/content/Context;)V
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

    .line 132
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    const/4 p1, 0x0

    .line 133
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private setupSubViews(Landroid/view/View;)Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    .line 172
    instance-of v2, v1, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 175
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget v3, v3, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_tag:I

    if-ne v2, v3, :cond_0

    .line 176
    check-cast v1, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;

    return-object v1

    .line 180
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 181
    new-instance v2, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;

    iget-object v3, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    invoke-direct {v2, v3, v1}, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;-><init>(Lcom/metamoji/forSchool/ui/UiHeaderListView;Landroid/content/Context;)V

    .line 183
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 186
    invoke-virtual {v2, v3}, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-virtual {v2, v3}, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;->setTextViewArray(Ljava/util/List;)V

    .line 190
    iget-object v4, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget v4, v4, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_tag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;->setTag(Ljava/lang/Object;)V

    .line 191
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->uiheaderlistview_item:I

    invoke-virtual {v2, v4}, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;->setBackgroundResource(I)V

    .line 193
    iget-object v4, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget-object v4, v4, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_coupledColumnInfoDicArray:Ljava/util/List;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 203
    :goto_0
    const-string v7, "span"

    if-eqz v4, :cond_4

    .line 204
    iget-object v9, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget-object v9, v9, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_coupledColumnInfoDicArray:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, -0x1

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    add-int/lit8 v10, v10, 0x1

    if-eqz v11, :cond_2

    .line 208
    invoke-interface {v11, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 210
    :try_start_0
    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_3
    const/4 v11, 0x0

    :goto_2
    add-int/2addr v10, v11

    goto :goto_1

    :cond_4
    const/4 v10, -0x1

    .line 219
    :cond_5
    iget-object v9, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget-object v9, v9, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_columnInfoDicArray:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    if-eqz v4, :cond_a

    if-lez v11, :cond_6

    add-int/lit8 v11, v11, -0x1

    goto :goto_7

    .line 233
    :cond_6
    iget-object v13, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget-object v13, v13, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_coupledColumnInfoDicArray:Ljava/util/List;

    add-int/lit8 v16, v12, 0x1

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    if-nez v12, :cond_7

    const/4 v11, 0x0

    :goto_4
    const/4 v12, 0x1

    :goto_5
    const/4 v13, 0x0

    goto :goto_8

    .line 241
    :cond_7
    invoke-interface {v12, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 243
    :try_start_1
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    :cond_8
    const/4 v12, 0x0

    :goto_6
    add-int/2addr v11, v12

    if-eqz v14, :cond_9

    goto :goto_4

    :cond_9
    const/4 v12, 0x0

    goto :goto_5

    :cond_a
    :goto_7
    move/from16 v16, v12

    const/4 v12, 0x0

    .line 254
    :goto_8
    const-string v8, "align"

    invoke-interface {v15, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 256
    :try_start_2
    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    :cond_b
    const/4 v8, 0x2

    .line 261
    :goto_9
    const-string v5, "width"

    invoke-interface {v15, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 263
    :try_start_3
    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    :catch_3
    :cond_c
    const/4 v5, 0x0

    .line 268
    :goto_a
    const-string v6, "bold"

    invoke-interface {v15, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 270
    :try_start_4
    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_b

    :catch_4
    :cond_d
    const/4 v6, 0x0

    .line 276
    :goto_b
    new-instance v15, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v15, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x10

    or-int/2addr v8, v0

    .line 277
    invoke-virtual {v15, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    if-eqz v6, :cond_e

    .line 278
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_c

    :cond_e
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_c
    invoke-virtual {v15, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v6, 0x0

    .line 279
    invoke-virtual {v15, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundColor(I)V

    const/4 v8, 0x1

    .line 280
    invoke-virtual {v15, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setMaxLines(I)V

    const/16 v0, 0xe

    .line 281
    invoke-static {v15, v8, v0, v8, v8}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 282
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v8

    float-to-int v8, v8

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v15, v8, v6, v0, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 284
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 285
    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v5

    float-to-int v5, v5

    const/high16 v6, 0x42200000    # 40.0f

    .line 286
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x10

    .line 287
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 288
    invoke-virtual {v15, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    invoke-virtual {v2, v15}, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;->addView(Landroid/view/View;)V

    .line 291
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 295
    rem-int/lit8 v5, v13, 0x2

    if-lez v5, :cond_f

    sget v6, Lcom/metamoji/forSchool/ui/UiHeaderListView;->OVERLAY_COLOR:I

    goto :goto_d

    :cond_f
    const/4 v6, 0x0

    :goto_d
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 296
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v8, 0x1

    new-array v6, v8, [Landroid/graphics/drawable/Drawable;

    const/16 v18, 0x0

    aput-object v0, v6, v18

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    if-lez v10, :cond_10

    if-gt v10, v14, :cond_10

    const/4 v6, 0x1

    goto :goto_e

    :cond_10
    move/from16 v6, v18

    :goto_e
    move-object v8, v1

    move-object/from16 v25, v2

    int-to-double v1, v6

    const-wide/16 v19, 0x0

    if-gtz v12, :cond_12

    cmpl-double v6, v1, v19

    if-lez v6, :cond_11

    goto :goto_f

    :cond_11
    move-object v0, v5

    const/4 v1, 0x1

    goto :goto_12

    .line 300
    :cond_12
    :goto_f
    sget v6, Lcom/metamoji/forSchool/ui/UiHeaderListView;->BORDER_COLOR:I

    move-wide/from16 v21, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    if-lez v12, :cond_13

    move/from16 v6, v18

    goto :goto_10

    :cond_13
    const/4 v6, -0x1

    :goto_10
    cmpl-double v0, v21, v19

    if-lez v0, :cond_14

    move/from16 v23, v18

    goto :goto_11

    :cond_14
    const/16 v23, -0x1

    :goto_11
    const/16 v24, -0x1

    const/16 v20, 0x0

    const/16 v22, -0x1

    move-object/from16 v19, v5

    move/from16 v21, v6

    .line 301
    invoke-virtual/range {v19 .. v24}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move-object/from16 v0, v19

    .line 303
    :goto_12
    invoke-virtual {v15, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v12, v16

    move-object/from16 v2, v25

    goto/16 :goto_3

    :cond_15
    move-object/from16 v25, v2

    return-object v25
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 139
    invoke-direct {p0, p2}, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;->setupSubViews(Landroid/view/View;)Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;

    move-result-object p2

    .line 140
    invoke-virtual {p2}, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;->getTextViewArray()Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_0

    return-object p2

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    .line 150
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 151
    const-string v0, ""

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 157
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    if-lt v1, v0, :cond_2

    return-object p2

    .line 162
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 163
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 164
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p2
.end method
