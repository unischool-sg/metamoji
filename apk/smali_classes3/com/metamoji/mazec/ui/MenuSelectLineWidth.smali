.class public Lcom/metamoji/mazec/ui/MenuSelectLineWidth;
.super Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;
.source "MenuSelectLineWidth.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;->mSelected:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;->mSelected:I

    return-void
.end method

.method private static getWidthes()[I
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 47
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getButtonId(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 60
    const-string p1, "id.width_palette_thin"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    .line 62
    const-string p1, "id.width_palette_normal"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 64
    const-string p1, "id.width_palette_semibold"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 66
    const-string p1, "id.width_palette_bold"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public getSelectedLineWidth()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;->mSelected:I

    return v0
.end method

.method public initView(I)V
    .locals 4

    .line 38
    invoke-super {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->initView(I)V

    .line 39
    invoke-static {}, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;->getWidthes()[I

    move-result-object p1

    .line 40
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 41
    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;->getButtonId(I)I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;->setOnClickListener(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_0
    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;->setCountOfItemSpace(I)V

    return-void
.end method

.method protected setCountOfItemSpace(I)V
    .locals 3

    .line 73
    invoke-super {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->setCountOfItemSpace(I)V

    .line 74
    invoke-static {}, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;->getWidthes()[I

    move-result-object v0

    .line 75
    array-length v0, v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "id.width_palette_dummy_%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    .line 80
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
