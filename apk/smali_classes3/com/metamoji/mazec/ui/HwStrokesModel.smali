.class public Lcom/metamoji/mazec/ui/HwStrokesModel;
.super Ljava/lang/Object;
.source "HwStrokesModel.java"


# static fields
.field private static final INPUT_LINEREDUCER_DELTA:D = 0.75

.field public static final MAX_VIEW_WIDTH_COEF:I = 0xa


# instance fields
.field private mBaseLine:F

.field private mGuidelineBottom:F

.field private mGuidelineTop:F

.field private mLastStrokeRelatedActionTime:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/mazec/ui/HwStrokeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

.field private mTopLine:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mListeners:Ljava/util/ArrayList;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mLastStrokeRelatedActionTime:J

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mTopLine:F

    const/high16 v1, 0x42c80000    # 100.0f

    .line 73
    iput v1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mBaseLine:F

    .line 75
    iput v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mGuidelineTop:F

    .line 76
    iput v1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mGuidelineBottom:F

    .line 78
    new-instance v0, Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-direct {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 79
    iget v1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mTopLine:F

    iget v2, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mBaseLine:F

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->setGuidelinesWithTop(FF)V

    return-void
.end method

.method private fireStrokeShiftedAndUpdated(FFLjava/lang/Object;)V
    .locals 4

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 657
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 658
    check-cast p3, Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 659
    invoke-direct {p0, p3, v0, v1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getStrokeDiffOnUpdate(Lcom/metamoji/mazec/stroke/HwStrokes;Ljava/util/List;Ljava/util/List;)V

    .line 660
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/ui/HwStrokeListener;

    .line 661
    invoke-interface {v3, p1, p2, p3}, Lcom/metamoji/mazec/ui/HwStrokeListener;->notifyStrokeShifted(FFLcom/metamoji/mazec/stroke/HwStrokes;)V

    .line 662
    invoke-interface {v3, v0, v1}, Lcom/metamoji/mazec/ui/HwStrokeListener;->notifyStrokeUpdated(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireStrokeUpdate(Ljava/lang/Object;)V
    .locals 3

    .line 647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 648
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 649
    check-cast p1, Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 650
    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getStrokeDiffOnUpdate(Lcom/metamoji/mazec/stroke/HwStrokes;Ljava/util/List;Ljava/util/List;)V

    .line 651
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/ui/HwStrokeListener;

    .line 652
    invoke-interface {v2, v0, v1}, Lcom/metamoji/mazec/ui/HwStrokeListener;->notifyStrokeUpdated(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getStrokeDiffOnUpdate(Lcom/metamoji/mazec/stroke/HwStrokes;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;)V"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 667
    iget-object v3, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v3, v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v3

    .line 669
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    .line 670
    invoke-virtual {p1, v5}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v6

    .line 671
    invoke-virtual {v6}, Lcom/metamoji/mazec/stroke/HwStroke;->strokeOrder()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/metamoji/mazec/stroke/HwStroke;->strokeOrder()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 677
    :cond_1
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 680
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result p2

    move v0, v1

    :goto_3
    if-ge v0, p2, :cond_5

    .line 681
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v2

    .line 683
    iget-object v3, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v3

    move v4, v1

    :goto_4
    if-ge v4, v3, :cond_4

    .line 684
    iget-object v5, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v5, v4}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v5

    .line 685
    invoke-virtual {v5}, Lcom/metamoji/mazec/stroke/HwStroke;->strokeOrder()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStroke;->strokeOrder()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 691
    :cond_4
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private getStrokeUpdateContext()Ljava/lang/Object;
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->clone()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    return-object v0
.end method

.method private splitStroke(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            "[",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 442
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 447
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 448
    iget-object v3, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/mazec/stroke/HwStrokes;->replaceStroke(Lcom/metamoji/mazec/stroke/HwStroke;[Lcom/metamoji/mazec/stroke/HwStroke;)V

    .line 450
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStroke;->strokeOrder()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    move-wide v0, v2

    goto :goto_0

    .line 457
    :cond_2
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_4

    .line 459
    iget-object v3, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v3, v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v3

    .line 460
    invoke-virtual {v3}, Lcom/metamoji/mazec/stroke/HwStroke;->strokeOrder()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-ltz v4, :cond_3

    .line 461
    invoke-virtual {v3}, Lcom/metamoji/mazec/stroke/HwStroke;->cloneWithNewStrokeOrder()Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v4

    .line 462
    iget-object v5, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v5, v3, v4}, Lcom/metamoji/mazec/stroke/HwStrokes;->replaceStroke(Lcom/metamoji/mazec/stroke/HwStroke;Lcom/metamoji/mazec/stroke/HwStroke;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private trim()V
    .locals 3

    .line 595
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 597
    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->shift(F)V

    .line 600
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->updateLastStrokeRelatedActionTime()J

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/metamoji/mazec/ui/HwStrokeListener;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->addStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/ui/HwStrokeListener;

    const/4 v2, 0x0

    .line 213
    invoke-interface {v1, v0, v2}, Lcom/metamoji/mazec/ui/HwStrokeListener;->notifyStrokeUpdated(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addStroke(Lcom/metamoji/mazec/stroke/HwStroke;FF)V
    .locals 3

    .line 184
    iget v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mTopLine:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mBaseLine:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 188
    iget v1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mBaseLine:F

    iget v2, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mTopLine:F

    sub-float/2addr v1, v2

    sub-float/2addr p3, p2

    div-float/2addr v1, p3

    neg-float p2, p2

    const/4 p3, 0x0

    .line 189
    invoke-virtual {v0, p3, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 190
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 191
    iget p2, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mTopLine:F

    invoke-virtual {v0, p3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 192
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/stroke/HwStroke;->transform(Landroid/graphics/Matrix;)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object p1

    .line 195
    :cond_1
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {p2, p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->addStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    .line 197
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->updateLastStrokeRelatedActionTime()J

    .line 199
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/mazec/ui/HwStrokeListener;

    const/4 v0, 0x0

    .line 202
    invoke-interface {p3, p2, v0}, Lcom/metamoji/mazec/ui/HwStrokeListener;->notifyStrokeUpdated(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 2

    .line 635
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getStrokeUpdateContext()Ljava/lang/Object;

    move-result-object v0

    .line 637
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->removeAllStrokes()V

    .line 639
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->updateLastStrokeRelatedActionTime()J

    .line 641
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->fireStrokeUpdate(Ljava/lang/Object;)V

    return-void
.end method

.method public clearListeners()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public deleteLastStroke(ZZ)Z
    .locals 10

    .line 473
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->removeLastStroke()Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getStrokeUpdateContext()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    .line 480
    iget p1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mBaseLine:F

    iget v4, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mTopLine:F

    sub-float/2addr p1, v4

    .line 481
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStroke;->bounds()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpl-float v4, v4, p1

    if-lez v4, :cond_5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p1, v4

    .line 483
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v4

    .line 484
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .line 486
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move v7, v6

    :cond_1
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_4

    .line 490
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    .line 491
    iget v9, v8, Landroid/graphics/PointF;->x:F

    cmpg-float v9, v9, v6

    if-gez v9, :cond_2

    .line 492
    iget v6, v8, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 493
    :cond_2
    iget v9, v8, Landroid/graphics/PointF;->x:F

    cmpg-float v9, v7, v9

    if-gez v9, :cond_3

    .line 494
    iget v7, v8, Landroid/graphics/PointF;->x:F

    :cond_3
    :goto_0
    sub-float v8, v7, v6

    cmpl-float v8, v8, p1

    if-ltz v8, :cond_1

    :cond_4
    const/4 p1, 0x3

    if-le v5, p1, :cond_5

    .line 503
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p1

    .line 504
    new-instance v6, Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStroke;->granularityType()I

    move-result v0

    invoke-direct {v6, p1, v0}, Lcom/metamoji/mazec/stroke/HwStroke;-><init>(Lcom/metamoji/mazec/stroke/StrokeStyle;I)V

    .line 505
    invoke-interface {v4, v1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    const-wide/16 v0, 0xa

    invoke-static {p1, v0, v1}, Lcom/metamoji/mazec/stroke/StrokeTouch;->makeStrokeTouchsWithFakeTime(Ljava/util/List;J)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/metamoji/mazec/stroke/HwStroke;->setPointsBeforeReduced(Ljava/util/List;)V

    .line 506
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {p1, v6}, Lcom/metamoji/mazec/stroke/HwStrokes;->addStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    .line 511
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->updateLastStrokeRelatedActionTime()J

    if-eqz p2, :cond_6

    .line 514
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->trim()V

    .line 516
    :cond_6
    invoke-direct {p0, v2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->fireStrokeUpdate(Ljava/lang/Object;)V

    return v3
.end method

.method public deleteLastStrokeBlock(Ljava/util/List;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeBlock;",
            ">;Z)Z"
        }
    .end annotation

    .line 525
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 534
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazec/stroke/StrokeBlock;

    .line 535
    iget-object v4, v4, Lcom/metamoji/mazec/stroke/StrokeBlock;->strokeOrders:[J

    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 537
    :cond_1
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v2

    if-eq v3, v2, :cond_2

    return v1

    .line 541
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getStrokeUpdateContext()Ljava/lang/Object;

    move-result-object v2

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    .line 544
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/stroke/StrokeBlock;

    .line 545
    iget-object v4, v3, Lcom/metamoji/mazec/stroke/StrokeBlock;->strokeOrders:[J

    array-length v4, v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v1, v4, :cond_4

    .line 551
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    iget-object v0, v3, Lcom/metamoji/mazec/stroke/StrokeBlock;->strokeOrders:[J

    aget-wide v5, v0, v1

    invoke-virtual {p1, v5, v6}, Lcom/metamoji/mazec/stroke/HwStrokes;->removeStroke(J)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 556
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->updateLastStrokeRelatedActionTime()J

    if-eqz p2, :cond_5

    .line 559
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->trim()V

    .line 561
    :cond_5
    invoke-direct {p0, v2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->fireStrokeUpdate(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_6
    return v1
.end method

.method public deleteSpace(FFLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            "[",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 425
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getStrokeUpdateContext()Ljava/lang/Object;

    move-result-object v0

    .line 427
    invoke-direct {p0, p3}, Lcom/metamoji/mazec/ui/HwStrokesModel;->splitStroke(Ljava/util/Map;)V

    .line 430
    iget-object p3, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/mazec/stroke/HwStrokes;->deleteSpace(FF)V

    .line 433
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->updateLastStrokeRelatedActionTime()J

    neg-float p2, p2

    .line 434
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->fireStrokeShiftedAndUpdated(FFLjava/lang/Object;)V

    return-void
.end method

.method public deleteStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;Z)V
    .locals 5

    .line 574
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getStrokeUpdateContext()Ljava/lang/Object;

    move-result-object v0

    .line 575
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 577
    iget-object v3, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {p1, v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/mazec/stroke/HwStrokes;->removeStroke(Lcom/metamoji/mazec/stroke/HwStroke;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->updateLastStrokeRelatedActionTime()J

    if-eqz p2, :cond_1

    .line 585
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->trim()V

    .line 587
    :cond_1
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->fireStrokeUpdate(Ljava/lang/Object;)V

    return-void
.end method

.method public diviedeStrokesListForKakinagashi(F)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;"
        }
    .end annotation

    .line 235
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getStrokeBlocks(F)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->diviededStrokesListByStrokeBlocks(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public diviededStrokesListByStrokeBlocks(Lcom/metamoji/mazec/stroke/HwStrokes;Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeBlock;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 247
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    .line 248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 253
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/mazec/stroke/StrokeBlock;

    .line 254
    new-instance v8, Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-direct {v8}, Lcom/metamoji/mazec/stroke/HwStrokes;-><init>()V

    .line 255
    iget v9, v0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mTopLine:F

    iget v10, v0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mBaseLine:F

    invoke-virtual {v8, v9, v10}, Lcom/metamoji/mazec/stroke/HwStrokes;->setGuidelinesWithTop(FF)V

    .line 256
    iget-object v9, v7, Lcom/metamoji/mazec/stroke/StrokeBlock;->strokeOrders:[J

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_5

    aget-wide v12, v9, v11

    move-object/from16 v14, p1

    .line 257
    invoke-virtual {v14, v12, v13}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStrokeByStrokeOrder(J)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v12

    if-nez v12, :cond_0

    move-object v5, v9

    move/from16 v16, v10

    const/4 v9, 0x0

    goto/16 :goto_5

    .line 261
    :cond_0
    invoke-virtual {v12}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getPenType()I

    move-result v13

    .line 262
    invoke-virtual {v12}, Lcom/metamoji/mazec/stroke/HwStroke;->getLineReduceOriginalPoints()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_4

    if-nez v6, :cond_2

    .line 266
    new-instance v6, Lcom/metamoji/ci/LineReducer;

    invoke-direct {v6}, Lcom/metamoji/ci/LineReducer;-><init>()V

    .line 267
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v6, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    .line 268
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v6, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    const/4 v5, 0x4

    if-ne v13, v5, :cond_1

    .line 270
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v6, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    :cond_1
    move-object v5, v9

    move/from16 v16, v10

    const-wide/high16 v9, 0x3fe8000000000000L    # 0.75

    .line 272
    iput-wide v9, v6, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    goto :goto_2

    :cond_2
    move-object v5, v9

    move/from16 v16, v10

    .line 274
    :goto_2
    invoke-virtual {v6}, Lcom/metamoji/ci/LineReducer;->initSequential()V

    const/4 v9, 0x4

    if-ne v13, v9, :cond_3

    .line 277
    invoke-static {v15}, Lcom/metamoji/mazec/stroke/StrokeTouch;->convertToPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-static {v15}, Lcom/metamoji/mazec/stroke/StrokeTouch;->convertToTimes(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/metamoji/ci/LineReducer;->reducePoints(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 279
    :cond_3
    invoke-static {v15}, Lcom/metamoji/mazec/stroke/StrokeTouch;->convertToPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/metamoji/ci/LineReducer;->reducePoints(Ljava/util/List;)Ljava/util/List;

    .line 281
    :goto_3
    invoke-virtual {v12}, Lcom/metamoji/mazec/stroke/HwStroke;->clone()Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v12

    .line 282
    iget-wide v9, v6, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    double-to-float v9, v9

    invoke-virtual {v12, v9}, Lcom/metamoji/mazec/stroke/HwStroke;->setLineReduceDelta(F)V

    .line 283
    iget-object v9, v6, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    invoke-virtual {v12, v9}, Lcom/metamoji/mazec/stroke/HwStroke;->setPoints(Ljava/util/List;)V

    .line 284
    iget-object v9, v6, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    invoke-virtual {v12, v9}, Lcom/metamoji/mazec/stroke/HwStroke;->setLineReduceSegmentAttr(Ljava/util/List;)V

    .line 285
    iget-object v9, v6, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    invoke-virtual {v12, v9}, Lcom/metamoji/mazec/stroke/HwStroke;->setLineReducePenAttr(Ljava/util/List;)V

    const/4 v9, 0x0

    .line 286
    invoke-virtual {v12, v9}, Lcom/metamoji/mazec/stroke/HwStroke;->setLineReduceOriginalPoints(Ljava/util/List;)V

    goto :goto_4

    :cond_4
    move-object v5, v9

    move/from16 v16, v10

    const/4 v9, 0x0

    .line 288
    :goto_4
    invoke-virtual {v8, v12}, Lcom/metamoji/mazec/stroke/HwStrokes;->addStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object v9, v5

    move/from16 v10, v16

    goto/16 :goto_1

    :cond_5
    move-object/from16 v14, p1

    const/4 v9, 0x0

    .line 291
    iget-object v5, v7, Lcom/metamoji/mazec/stroke/StrokeBlock;->outerBounds:Landroid/graphics/RectF;

    .line 292
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v8, v7}, Lcom/metamoji/mazec/stroke/HwStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    neg-float v4, v4

    .line 295
    iget v7, v0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mBaseLine:F

    neg-float v7, v7

    .line 296
    iget v5, v5, Landroid/graphics/RectF;->right:F

    .line 297
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 298
    invoke-virtual {v1, v4, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 300
    invoke-virtual {v8, v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->transform(Landroid/graphics/Matrix;)V

    .line 302
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto/16 :goto_0

    :cond_6
    return-object v2
.end method

.method public diviededStrokesListByStrokeBlocks(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeBlock;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->diviededStrokesListByStrokeBlocks(Lcom/metamoji/mazec/stroke/HwStrokes;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBaseLine()F
    .locals 1

    .line 332
    iget v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mBaseLine:F

    return v0
.end method

.method public getGuideline1()F
    .locals 1

    .line 316
    iget v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mGuidelineTop:F

    return v0
.end method

.method public getGuideline2()F
    .locals 1

    .line 320
    iget v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mTopLine:F

    return v0
.end method

.method public getGuideline3()F
    .locals 1

    .line 328
    iget v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mBaseLine:F

    return v0
.end method

.method public getGuideline4()F
    .locals 1

    .line 336
    iget v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mGuidelineBottom:F

    return v0
.end method

.method public getGuidelines()[F
    .locals 6

    .line 312
    iget v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mGuidelineTop:F

    iget v1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mTopLine:F

    iget v2, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mBaseLine:F

    iget v3, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mGuidelineBottom:F

    const/4 v4, 0x4

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v0, 0x1

    aput v1, v4, v0

    const/4 v0, 0x2

    aput v2, v4, v0

    const/4 v0, 0x3

    aput v3, v4, v0

    return-object v4
.end method

.method public getHeight()F
    .locals 2

    .line 339
    iget v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mGuidelineBottom:F

    iget v1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mGuidelineTop:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getHwStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    return-object v0
.end method

.method public getHwStrokes(Landroid/graphics/Matrix;)Lcom/metamoji/mazec/stroke/HwStrokes;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->clone()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->transform(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getLastStrokeRelatedActionTime()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mLastStrokeRelatedActionTime:J

    return-wide v0
.end method

.method public getStrokeBlocks(F)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeBlock;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 226
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    if-lez v0, :cond_0

    .line 224
    invoke-virtual {v1, p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->divideToWordStrokes(F)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 226
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->divideToCharStrokes()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTopLine()F
    .locals 1

    .line 324
    iget v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mTopLine:F

    return v0
.end method

.method public hasStrokes()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public insertSpace(FFLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            "[",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getStrokeUpdateContext()Ljava/lang/Object;

    move-result-object v0

    .line 410
    invoke-direct {p0, p3}, Lcom/metamoji/mazec/ui/HwStrokesModel;->splitStroke(Ljava/util/Map;)V

    .line 413
    iget-object p3, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/mazec/stroke/HwStrokes;->insertSpace(FF)V

    .line 416
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->updateLastStrokeRelatedActionTime()J

    .line 417
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->fireStrokeShiftedAndUpdated(FFLjava/lang/Object;)V

    return-void
.end method

.method public removeListener(Lcom/metamoji/mazec/ui/HwStrokeListener;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setGuidelines(FFFF)V
    .locals 1

    .line 346
    iget v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mTopLine:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mBaseLine:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mGuidelineTop:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mGuidelineBottom:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    goto :goto_1

    .line 351
    :cond_0
    iput p2, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mTopLine:F

    .line 352
    iput p3, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mBaseLine:F

    .line 354
    iput p1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mGuidelineTop:F

    .line 355
    iput p4, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mGuidelineBottom:F

    .line 358
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/mazec/stroke/HwStrokes;->updateGuidelinesWithTop(FF)V

    .line 359
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->updateLastStrokeRelatedActionTime()J

    .line 361
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/mazec/ui/HwStrokeListener;

    .line 362
    invoke-interface {p2}, Lcom/metamoji/mazec/ui/HwStrokeListener;->notifyGuidelineUpdated()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setStrokes(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;)I"
        }
    .end annotation

    .line 611
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getStrokeUpdateContext()Ljava/lang/Object;

    move-result-object v0

    .line 613
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->removeAllStrokes()V

    if-eqz p1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    iget v2, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mGuidelineBottom:F

    iget v3, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mGuidelineTop:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, p1, v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->mergeStrokesArray(Ljava/util/List;F)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 621
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->updateLastStrokeRelatedActionTime()J

    .line 623
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->fireStrokeUpdate(Ljava/lang/Object;)V

    return p1
.end method

.method public shiftStrokes(FILcom/metamoji/mazec/recognizer/HwRecognitionResult;)V
    .locals 5

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p3, :cond_1

    goto :goto_2

    .line 381
    :cond_1
    invoke-virtual {p3}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getCount()I

    move-result v0

    if-ltz p2, :cond_5

    if-lt p2, v0, :cond_2

    goto :goto_2

    .line 385
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getStrokeUpdateContext()Ljava/lang/Object;

    move-result-object v1

    .line 388
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge p2, v0, :cond_3

    .line 390
    invoke-virtual {p3, p2}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getCandidates(I)Lcom/metamoji/mazec/recognizer/HwCandidates;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v3, v4}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getTargetStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStrokes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 392
    :cond_3
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {p2, p1, v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->shiftStrokes(FLjava/util/List;)V

    .line 394
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->updateLastStrokeRelatedActionTime()J

    .line 396
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    const/4 p2, 0x0

    .line 397
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 398
    invoke-virtual {p2}, Lcom/metamoji/mazec/stroke/HwStroke;->bounds()Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    goto :goto_1

    :cond_4
    const/high16 p2, 0x7fc00000    # Float.NaN

    .line 400
    :goto_1
    invoke-direct {p0, p2, p1, v1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->fireStrokeShiftedAndUpdated(FFLjava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public updateLastStrokeRelatedActionTime()J
    .locals 4

    .line 88
    iget-wide v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mLastStrokeRelatedActionTime:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/mazec/ui/HwStrokesModel;->mLastStrokeRelatedActionTime:J

    return-wide v0
.end method
