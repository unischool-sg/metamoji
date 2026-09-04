.class public Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;
.super Landroid/widget/LinearLayout;
.source "TextAndBackgroundColor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/TextAndBackgroundColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextColorLayout"
.end annotation


# instance fields
.field bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

.field colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

.field final synthetic this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    .line 107
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 109
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->setOrientation(I)V

    .line 110
    sget v0, Lcom/metamoji/noteanytime/R$layout;->control_textandbackgroundcolor_color:I

    invoke-static {p2, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 112
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 114
    sget v0, Lcom/metamoji/noteanytime/R$id;->toDefault:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    .line 115
    invoke-virtual {v0, p0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget v0, Lcom/metamoji/noteanytime/R$id;->label_color:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x40200000    # 2.5f

    .line 118
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, v1

    .line 119
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p2, v3, v4

    aput p2, v3, p3

    const/4 p3, 0x2

    aput p2, v3, p3

    const/4 p3, 0x3

    aput p2, v3, p3

    const/4 p3, 0x4

    aput p2, v3, p3

    const/4 p3, 0x5

    aput p2, v3, p3

    const/4 p3, 0x6

    aput p2, v3, p3

    const/4 p3, 0x7

    aput p2, v3, p3

    const/4 p2, 0x0

    invoke-direct {v2, v3, p2, p2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 120
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-static {p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object p1

    iget p1, p1, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textDefColor:I

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-nez p1, :cond_0

    .line 125
    sget p1, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiColorSelectionView2;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 131
    :cond_0
    new-instance p1, Lcom/metamoji/ui/common/UiRadioContoller;

    sget p2, Lcom/metamoji/noteanytime/R$id;->bottle0:I

    sget p3, Lcom/metamoji/noteanytime/R$id;->bottle1:I

    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/metamoji/ui/common/UiRadioContoller;-><init>(Landroid/view/View;[I)V

    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    .line 132
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    sget p2, Lcom/metamoji/noteanytime/R$id;->paletteLeftButton:I

    .line 133
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    sget p3, Lcom/metamoji/noteanytime/R$id;->paletteRightButton:I

    .line 134
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    .line 132
    invoke-virtual {p1, p2, p3, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setUIParts(Landroid/view/View;Landroid/view/View;Lcom/metamoji/ui/common/UiRadioContoller;)V

    .line 136
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {p1, p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setSelectionChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;)V

    .line 138
    invoke-direct {p0, v4}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->initControl(Z)V

    return-void
.end method

.method private colorChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object v0

    iput-object p1, v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textInkColors:Ljava/util/List;

    .line 235
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-nez p1, :cond_0

    .line 236
    sget p1, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiColorSelectionView2;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->getGroupNameNumber(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->getInkId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fput_textColorInkId(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_textColorInkId(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->getInkType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fput_textColorInkType(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;Ljava/lang/String;)V

    return-void
.end method

.method private initControl(Z)V
    .locals 3

    .line 169
    sget v0, Lcom/metamoji/noteanytime/R$id;->toDefault:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    .line 170
    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object v1

    iget-boolean v1, v1, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textColorToDefault:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    .line 172
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object v0

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textColorToDefault:Z

    invoke-direct {p0, v0, p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->toDefaultChanged(ZZ)V

    .line 177
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-nez v0, :cond_0

    .line 178
    sget v0, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiColorSelectionView2;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->getGroupNameNumber(Ljava/lang/String;)I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 195
    sget v0, Lcom/metamoji/noteanytime/R$id;->bottle0:I

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    goto :goto_0

    .line 191
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->bottle1:I

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    :goto_0
    if-nez p1, :cond_2

    .line 199
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object p1

    iget-object p1, p1, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textInkColors:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->colorChanged(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private toDefaultChanged(ZZ)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object v0

    iput-boolean p1, v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textColorToDefault:Z

    if-nez p2, :cond_2

    .line 250
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-nez p2, :cond_0

    .line 251
    sget p2, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiColorSelectionView2;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 257
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-eqz p1, :cond_1

    .line 254
    invoke-virtual {p2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const/4 v1, -0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItem(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object p1

    iget-object p1, p1, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textInkColors:Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(Ljava/util/List;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 258
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textInkColors:Ljava/util/List;

    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->toDefault:I

    if-ne v0, v1, :cond_0

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->toDefaultChanged(ZZ)V

    :cond_0
    return-void
.end method

.method public onColorSelected(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 145
    new-instance p1, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout$1;

    invoke-direct {p1, p0, p4}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout$1;-><init>(Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;I)V

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->colorChanged(Ljava/util/List;)V

    .line 149
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textColorToDefault:Z

    const/4 p1, 0x1

    .line 150
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->initControl(Z)V

    return-void
.end method

.method public onGradationColorSelected(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 158
    new-instance p1, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout$2;

    invoke-direct {p1, p0, p4, p5}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout$2;-><init>(Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;II)V

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->colorChanged(Ljava/util/List;)V

    .line 164
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textColorToDefault:Z

    const/4 p1, 0x1

    .line 165
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->initControl(Z)V

    return-void
.end method

.method public saveColorHistory()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object v0

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textColorToDefault:Z

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-eqz v0, :cond_0

    .line 273
    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->saveColorHistoryStandard(Lcom/metamoji/ui/common/UiColorSelectionView2;)V

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .line 211
    sget v0, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 212
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(I)Z

    .line 218
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/nt/NtInkManager;->getGroupNameNumber(Ljava/lang/String;)I

    move-result p1

    .line 220
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 224
    sget p1, Lcom/metamoji/noteanytime/R$id;->bottle0:I

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    return-void

    .line 220
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->bottle1:I

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    return-void
.end method
