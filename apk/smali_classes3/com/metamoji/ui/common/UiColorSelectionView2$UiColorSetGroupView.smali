.class public Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;
.super Landroid/widget/ScrollView;
.source "UiColorSelectionView2.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiColorSelectionView2$IPaletteColorSelected;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiColorSelectionView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UiColorSetGroupView"
.end annotation


# static fields
.field private static final mTextMarginBottom:I = 0x0

.field private static final mTextMarginLeft:I = 0xf

.field private static final mTextMarginTop:I = 0xa


# instance fields
.field private mColorPaletteViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;",
            ">;"
        }
    .end annotation
.end field

.field private mColorSetGroup:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

.field mDisallow:Z

.field private mGroupAndColorSelectedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;

.field mPrevX:F

.field mPrevY:F

.field private mSelectIndex:I

.field private mSelectKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/common/UiColorSelectionView2;Landroid/content/Context;)V
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

    .line 2136
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 2137
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2126
    const-string p1, ""

    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mSelectKey:Ljava/lang/String;

    const/4 p1, -0x1

    .line 2127
    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mSelectIndex:I

    const/4 p1, 0x0

    .line 2321
    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mPrevX:F

    .line 2322
    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mPrevY:F

    const/4 p1, 0x0

    .line 2323
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mDisallow:Z

    const/4 p1, 0x1

    .line 2138
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->setFillViewport(Z)V

    return-void
.end method


# virtual methods
.method public createContents(Lcom/metamoji/ui/common/UiColorSelectionView2;Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 2158
    iput-object v1, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mColorSetGroup:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-object/from16 v3, p3

    .line 2159
    iput-object v3, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mGroupAndColorSelectedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;

    .line 2160
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mColorPaletteViews:Ljava/util/ArrayList;

    .line 2161
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, -0x1

    .line 2162
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/16 v5, 0x64

    move v8, v4

    const/4 v7, 0x0

    .line 2164
    :goto_0
    iget-object v9, v1, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    array-length v9, v9

    const/4 v10, -0x2

    if-ge v7, v9, :cond_4

    .line 2167
    iget-object v9, v1, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    aget-object v9, v9, v7

    .line 2168
    iget-object v11, v9, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    add-int/lit8 v11, v5, 0x1

    .line 2170
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2171
    iget-object v6, v9, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->name:Ljava/lang/String;

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2172
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/high16 v6, -0x1000000

    .line 2173
    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2174
    iget-object v6, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v6}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmTextShadowRadius(Lcom/metamoji/ui/common/UiColorSelectionView2;)F

    move-result v6

    iget-object v13, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v13}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmTextShadowDxy(Lcom/metamoji/ui/common/UiColorSelectionView2;)F

    move-result v13

    iget-object v14, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v14}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmTextShadowDxy(Lcom/metamoji/ui/common/UiColorSelectionView2;)F

    move-result v14

    const v12, -0x7f7f7f80

    invoke-virtual {v15, v6, v13, v14, v12}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 2175
    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setId(I)V

    .line 2176
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x9

    .line 2177
    invoke-virtual {v6, v12, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-lez v8, :cond_0

    const/4 v12, 0x3

    .line 2179
    invoke-virtual {v6, v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v8, 0xa

    goto :goto_1

    :cond_0
    const/16 v8, 0xa

    .line 2181
    invoke-virtual {v6, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_1
    const/16 v12, 0xf

    const/4 v13, 0x0

    .line 2183
    invoke-virtual {v6, v12, v8, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2184
    invoke-virtual {v3, v15, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v8, v11

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    move v8, v5

    move v5, v4

    .line 2188
    :goto_2
    new-instance v6, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;

    iget-object v11, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-direct {v6, v11, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;-><init>(Lcom/metamoji/ui/common/UiColorSelectionView2;Landroid/content/Context;)V

    .line 2189
    iget-object v11, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mColorPaletteViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v8, 0x1

    .line 2191
    invoke-virtual {v6, v8}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->setId(I)V

    move-object/from16 v12, p1

    .line 2192
    invoke-virtual {v6, v12, v9, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->createContent(Lcom/metamoji/ui/common/UiColorSelectionView2;Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;Lcom/metamoji/ui/common/UiColorSelectionView2$IPaletteColorSelected;)V

    .line 2193
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x9

    .line 2194
    invoke-virtual {v9, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-lez v5, :cond_2

    const/4 v10, 0x3

    .line 2196
    invoke-virtual {v9, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_3

    :cond_2
    const/4 v10, 0x3

    if-nez v7, :cond_3

    const/16 v5, 0xa

    .line 2198
    invoke-virtual {v9, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v8, -0x1

    .line 2200
    invoke-virtual {v9, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2202
    :goto_3
    invoke-virtual {v3, v6, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v7, v7, 0x1

    move v5, v11

    goto/16 :goto_0

    .line 2204
    :cond_4
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public deselectItem()V
    .locals 5

    const/4 v0, -0x1

    .line 2255
    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mSelectIndex:I

    .line 2256
    const-string v1, ""

    iput-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mSelectKey:Ljava/lang/String;

    .line 2257
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mColorPaletteViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 2258
    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mColorPaletteViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;

    .line 2259
    invoke-virtual {v4, v0, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->selectItem(IZ)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ensureVisible(Ljava/lang/String;)V
    .locals 5

    .line 2288
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mColorPaletteViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2289
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mColorPaletteViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;

    .line 2290
    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->getColorSet()Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    move-result-object v3

    .line 2291
    iget-object v3, v3, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2292
    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->getId()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2294
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result p1

    .line 2295
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedIndex()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    if-ltz v0, :cond_1

    .line 2297
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->getScrollY()I

    move-result v1

    .line 2298
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->getHeight()I

    move-result v3

    .line 2299
    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->getRowHeight()I

    move-result v4

    mul-int/2addr v0, v4

    add-int/2addr v0, p1

    .line 2300
    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->getRowHeight()I

    move-result v4

    add-int/2addr v4, v0

    if-gt v1, v0, :cond_0

    add-int/2addr v1, v3

    if-gt v4, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int v0, p1, v3

    if-ge v0, v4, :cond_1

    sub-int/2addr v4, v3

    .line 2307
    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->getTopMargin()I

    move-result p1

    add-int/2addr p1, v4

    .line 2310
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->setScrollY(I)V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public getColorSetGroup()Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;
    .locals 1

    .line 2147
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mColorSetGroup:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    return-object v0
.end method

.method public isGradation(Ljava/lang/String;I)Z
    .locals 5

    .line 2271
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mColorPaletteViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2272
    iget-object v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mColorPaletteViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;

    .line 2273
    invoke-virtual {v3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->getColorSet()Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    move-result-object v4

    .line 2274
    iget-object v4, v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->key:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2275
    invoke-virtual {v3, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->isGradation(I)Z

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onColorItemSelectionChanged(Ljava/lang/String;II)V
    .locals 2

    .line 2213
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->selectItem(Ljava/lang/String;I)Z

    .line 2214
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mGroupAndColorSelectedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;

    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mColorSetGroup:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v1, v1, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;->onColorSelected(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public onColorItemSelectionChanged(Ljava/lang/String;III)V
    .locals 6

    .line 2223
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->selectItem(Ljava/lang/String;I)Z

    .line 2224
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mGroupAndColorSelectedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;

    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mColorSetGroup:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v1, v1, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;->onGradationColorSelected(Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 2327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_2

    .line 2341
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 2343
    iget v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mPrevX:F

    sub-float v4, v0, v4

    .line 2344
    iget v5, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mPrevY:F

    sub-float v5, v3, v5

    .line 2345
    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mPrevX:F

    .line 2346
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mPrevY:F

    .line 2347
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_1

    .line 2350
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_2

    :goto_0
    move v1, v2

    goto :goto_1

    .line 2353
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_2

    goto :goto_0

    .line 2358
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mDisallow:Z

    if-eq v1, v0, :cond_4

    .line 2359
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 2329
    :cond_3
    iput-boolean v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mDisallow:Z

    .line 2334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mPrevX:F

    .line 2335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mPrevY:F

    .line 2365
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public selectItem(Ljava/lang/String;I)Z
    .locals 5

    .line 2235
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mSelectIndex:I

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mSelectKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2239
    :cond_0
    iput p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mSelectIndex:I

    .line 2240
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mSelectKey:Ljava/lang/String;

    .line 2242
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mColorPaletteViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2243
    iget-object v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->mColorPaletteViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;

    .line 2244
    invoke-virtual {v3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->getColorSet()Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    move-result-object v4

    .line 2245
    iget-object v4, v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->key:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2246
    invoke-virtual {v3, p2, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->selectItem(IZ)Z

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    .line 2248
    invoke-virtual {v3, v4, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->selectItem(IZ)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
