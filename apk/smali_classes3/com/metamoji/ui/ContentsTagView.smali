.class public Lcom/metamoji/ui/ContentsTagView;
.super Landroid/view/View;
.source "ContentsTagView.java"


# instance fields
.field private rect:Lcom/metamoji/cm/RectEx;

.field private tagInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance p1, Lcom/metamoji/cm/RectEx;

    invoke-direct {p1}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/ContentsTagView;->rect:Lcom/metamoji/cm/RectEx;

    .line 29
    invoke-virtual {p0}, Lcom/metamoji/ui/ContentsTagView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance p1, Lcom/metamoji/cm/RectEx;

    invoke-direct {p1}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/ContentsTagView;->rect:Lcom/metamoji/cm/RectEx;

    .line 34
    invoke-virtual {p0}, Lcom/metamoji/ui/ContentsTagView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p1, Lcom/metamoji/cm/RectEx;

    invoke-direct {p1}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/ContentsTagView;->rect:Lcom/metamoji/cm/RectEx;

    .line 39
    invoke-virtual {p0}, Lcom/metamoji/ui/ContentsTagView;->initialize()V

    return-void
.end method

.method private dpToPx(I)I
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/metamoji/ui/ContentsTagView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 87
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public getTagInstances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/metamoji/ui/ContentsTagView;->tagInstances:Ljava/util/List;

    return-object v0
.end method

.method initialize()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/ContentsTagView;->setBackgroundColor(I)V

    return-void
.end method

.method public isHit(Landroid/graphics/Point;)Z
    .locals 3

    .line 58
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    const/16 v1, 0x10

    .line 59
    invoke-direct {p0, v1}, Lcom/metamoji/ui/ContentsTagView;->dpToPx(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/metamoji/cm/RectEx;->width:F

    .line 60
    invoke-direct {p0, v1}, Lcom/metamoji/ui/ContentsTagView;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/metamoji/cm/RectEx;->height:F

    .line 61
    invoke-virtual {p0}, Lcom/metamoji/ui/ContentsTagView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/metamoji/ui/ContentsTagView;->rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/metamoji/cm/RectEx;->x:F

    .line 62
    invoke-virtual {p0}, Lcom/metamoji/ui/ContentsTagView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/metamoji/ui/ContentsTagView;->rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/metamoji/cm/RectEx;->y:F

    .line 63
    invoke-virtual {v0}, Lcom/metamoji/cm/RectEx;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    .line 72
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 73
    iget-object v0, p0, Lcom/metamoji/ui/ContentsTagView;->tagInstances:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 74
    invoke-virtual {v0}, Lcom/metamoji/ctold/tag/CtTagInstance;->getTagClass()Lcom/metamoji/ctold/tag/CtTagClass;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/metamoji/ui/ContentsTagView;->rect:Lcom/metamoji/cm/RectEx;

    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/metamoji/ui/ContentsTagView;->dpToPx(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Lcom/metamoji/cm/RectEx;->width:F

    .line 76
    iget-object v1, p0, Lcom/metamoji/ui/ContentsTagView;->rect:Lcom/metamoji/cm/RectEx;

    invoke-direct {p0, v2}, Lcom/metamoji/ui/ContentsTagView;->dpToPx(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/metamoji/cm/RectEx;->height:F

    .line 77
    iget-object v1, p0, Lcom/metamoji/ui/ContentsTagView;->rect:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0}, Lcom/metamoji/ui/ContentsTagView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/metamoji/ui/ContentsTagView;->rect:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->width:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/metamoji/cm/RectEx;->x:F

    .line 78
    iget-object v1, p0, Lcom/metamoji/ui/ContentsTagView;->rect:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0}, Lcom/metamoji/ui/ContentsTagView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/metamoji/ui/ContentsTagView;->rect:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->height:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/metamoji/cm/RectEx;->y:F

    .line 79
    iget-object v1, p0, Lcom/metamoji/ui/ContentsTagView;->rect:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/ctold/tag/CtTagClass;->drawForThumbnail(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;)V

    :cond_0
    return-void
.end method

.method public setTagInstances(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/ContentsTagView;->tagInstances:Ljava/util/List;

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/ContentsTagView;->invalidate()V

    return-void
.end method
