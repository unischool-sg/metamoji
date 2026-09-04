.class public Lcom/metamoji/mazec/ui/MenuSelectInputMode;
.super Lcom/metamoji/mazec/ui/MenuSelectBase;
.source "MenuSelectInputMode.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/MenuSelectBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public initView(I)V
    .locals 7

    .line 37
    invoke-super {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectBase;->initView(I)V

    .line 38
    const-string p1, "id.input_mode_stroke"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    .line 39
    const-string v0, "id.input_mode_text"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    .line 40
    const-string v1, "id.input_mode_keyboard"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    .line 41
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/metamoji/mazec/MazecIms;->canInputStroke()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4, v3}, Lcom/metamoji/mazec/ui/MenuSelectInputMode;->setOnClickListener(IIZ)V

    .line 43
    invoke-virtual {v2}, Lcom/metamoji/mazec/MazecIms;->getLanguage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x2

    invoke-virtual {p0, v0, v5, v3}, Lcom/metamoji/mazec/ui/MenuSelectInputMode;->setOnClickListener(IIZ)V

    .line 44
    invoke-virtual {v2}, Lcom/metamoji/mazec/MazecIms;->isInReedit()Z

    move-result v2

    xor-int/2addr v2, v4

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3, v2}, Lcom/metamoji/mazec/ui/MenuSelectInputMode;->setOnClickListener(IIZ)V

    .line 45
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 46
    iget v6, p0, Lcom/metamoji/mazec/ui/MenuSelectInputMode;->mSelected:I

    if-ne v6, v4, :cond_1

    .line 47
    const-string v4, "drawable.im_stroke_s"

    .line 48
    invoke-static {v4}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    .line 47
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 49
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectInputMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 52
    :cond_1
    const-string v4, "drawable.im_stroke_n"

    .line 53
    invoke-static {v4}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    .line 52
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 54
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectInputMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 55
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    :goto_1
    iget p1, p0, Lcom/metamoji/mazec/ui/MenuSelectInputMode;->mSelected:I

    if-ne p1, v5, :cond_2

    .line 59
    const-string p1, "drawable.im_text_s"

    .line 60
    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    .line 59
    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 61
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/MenuSelectInputMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 62
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 65
    :cond_2
    const-string p1, "drawable.im_text_n"

    .line 66
    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    .line 65
    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 67
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/MenuSelectInputMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 68
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    :goto_2
    iget p1, p0, Lcom/metamoji/mazec/ui/MenuSelectInputMode;->mSelected:I

    if-ne p1, v3, :cond_3

    .line 71
    const-string p1, "drawable.im_keyboard_s"

    .line 72
    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    .line 71
    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 73
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/MenuSelectInputMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 74
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 76
    :cond_3
    const-string p1, "drawable.im_keyboard_n"

    .line 77
    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    .line 76
    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 78
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/MenuSelectInputMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 79
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onSelect(I)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectBase;->onSelect(I)V

    return-void
.end method
