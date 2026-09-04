.class public Lcom/metamoji/mazecclient/stroke/StrokeStyle;
.super Ljava/lang/Object;
.source "StrokeStyle.java"

# interfaces
.implements Lcom/metamoji/mazecclient/stroke/IStrokeStyle;


# static fields
.field public static final DEFAULT_LINE_WIDTH_RATIO:F = 0.2f

.field private static final STANDARD_HEIGHT:F = 12.0f

.field private static __stylePoolCalligraphy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyle;",
            ">;>;"
        }
    .end annotation
.end field

.field private static __stylePoolCalligraphyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static __stylePoolFountain:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyle;",
            ">;>;"
        }
    .end annotation
.end field

.field private static __stylePoolFountainLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static __stylePoolStandard:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyle;",
            ">;>;"
        }
    .end annotation
.end field

.field private static __stylePoolStandardLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# instance fields
.field protected _calliAngle:F

.field protected _calliPaintType:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

.field protected _calliRate:F

.field protected _fountainProps:Lcom/metamoji/mazecclient/stroke/IFountainProperties;

.field protected _ink:Lcom/metamoji/mazecclient/stroke/IStrokeInk;

.field protected _lineColor:I

.field protected _lineDash:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected _lineWidthRatio:F

.field protected _penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->__stylePoolStandard:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->__stylePoolStandardLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->__stylePoolCalligraphy:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->__stylePoolCalligraphyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->__stylePoolFountain:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->__stylePoolFountainLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    .line 298
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    iput-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    const/high16 v1, -0x1000000

    .line 300
    iput v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineColor:I

    const v1, 0x3e4ccccd    # 0.2f

    .line 301
    iput v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineWidthRatio:F

    .line 302
    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cm/DataArchiver;)V
    .locals 0

    .line 511
    invoke-direct {p0}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;-><init>()V

    .line 512
    invoke-virtual {p0, p1}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    return-void
.end method

.method protected constructor <init>(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)V
    .locals 2

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    .line 309
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    .line 310
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_ink:Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    .line 311
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineColor()I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineColor:I

    .line 312
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineWidthRatio()F

    move-result v0

    iput v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineWidthRatio:F

    .line 313
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineDash()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineDash()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    .line 317
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliAngle()F

    move-result v0

    iput v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliAngle:F

    .line 318
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliRate()F

    move-result v0

    iput v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliRate:F

    .line 319
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliPaintType()Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliPaintType:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    .line 321
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getFountainProperties()Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_fountainProps:Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    return-void
.end method

.method public static calligraphyStyle(Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;FFIFLcom/metamoji/mazecclient/stroke/IStrokeInk;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;
    .locals 2

    .line 75
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    invoke-direct {v0}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;-><init>()V

    .line 76
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    iput-object v1, v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    .line 77
    iput-object p0, v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliPaintType:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    .line 78
    iput p1, v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliAngle:F

    .line 79
    iput p2, v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliRate:F

    .line 80
    iput p3, v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineColor:I

    .line 81
    iput p4, v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineWidthRatio:F

    .line 82
    iput-object p5, v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_ink:Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    .line 84
    sget-object p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->__stylePoolStandard:Ljava/util/ArrayList;

    sget-object p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->__stylePoolStandardLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p0, p1, v0}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->searchStyleInProol(Ljava/util/List;Ljava/util/concurrent/locks/ReentrantReadWriteLock;Lcom/metamoji/mazecclient/stroke/StrokeStyle;)Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    move-result-object p0

    return-object p0
.end method

.method public static fountainStyle(IFLcom/metamoji/mazecclient/stroke/IStrokeInk;Lcom/metamoji/mazecclient/stroke/IFountainProperties;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;
    .locals 2

    .line 104
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    invoke-direct {v0}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;-><init>()V

    .line 105
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    iput-object v1, v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    .line 106
    iput p0, v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineColor:I

    .line 107
    iput p1, v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineWidthRatio:F

    .line 108
    iput-object p2, v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_ink:Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    .line 109
    iput-object p3, v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_fountainProps:Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    .line 111
    sget-object p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->__stylePoolFountain:Ljava/util/ArrayList;

    sget-object p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->__stylePoolFountainLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p0, p1, v0}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->searchStyleInProol(Ljava/util/List;Ljava/util/concurrent/locks/ReentrantReadWriteLock;Lcom/metamoji/mazecclient/stroke/StrokeStyle;)Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    move-result-object p0

    return-object p0
.end method

.method protected static searchStyle(Lcom/metamoji/mazecclient/stroke/StrokeStyle;)Lcom/metamoji/mazecclient/stroke/StrokeStyle;
    .locals 2

    .line 188
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v0, v1, :cond_0

    .line 189
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->__stylePoolStandard:Ljava/util/ArrayList;

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->__stylePoolStandardLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v0, v1, p0}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->searchStyleInProol(Ljava/util/List;Ljava/util/concurrent/locks/ReentrantReadWriteLock;Lcom/metamoji/mazecclient/stroke/StrokeStyle;)Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    move-result-object p0

    return-object p0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v0, v1, :cond_1

    .line 193
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->__stylePoolCalligraphy:Ljava/util/ArrayList;

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->__stylePoolCalligraphyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v0, v1, p0}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->searchStyleInProol(Ljava/util/List;Ljava/util/concurrent/locks/ReentrantReadWriteLock;Lcom/metamoji/mazecclient/stroke/StrokeStyle;)Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    move-result-object p0

    return-object p0

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v0, v1, :cond_2

    .line 197
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->__stylePoolFountain:Ljava/util/ArrayList;

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->__stylePoolFountainLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v0, v1, p0}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->searchStyleInProol(Ljava/util/List;Ljava/util/concurrent/locks/ReentrantReadWriteLock;Lcom/metamoji/mazecclient/stroke/StrokeStyle;)Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static searchStyleInProol(Ljava/util/List;Ljava/util/concurrent/locks/ReentrantReadWriteLock;Lcom/metamoji/mazecclient/stroke/StrokeStyle;)Lcom/metamoji/mazecclient/stroke/StrokeStyle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyle;",
            ">;>;",
            "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyle;",
            ")",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyle;"
        }
    .end annotation

    .line 216
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 218
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 219
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 220
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 221
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    move v3, v5

    goto :goto_1

    .line 227
    :cond_0
    invoke-virtual {v4, p2}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_1

    move-object p2, v4

    move v2, v5

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz v2, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    return-object p2

    .line 238
    :cond_4
    :goto_2
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    .line 240
    :try_start_1
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    if-eqz v3, :cond_6

    .line 243
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 244
    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 245
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 246
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    if-nez v1, :cond_5

    .line 248
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_6
    if-nez v2, :cond_8

    .line 255
    instance-of v0, p2, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;

    if-eqz v0, :cond_7

    .line 258
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    invoke-direct {v0, p2}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;-><init>(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)V

    move-object p2, v0

    .line 260
    :cond_7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :cond_8
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object p2

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 265
    throw p0

    :catchall_1
    move-exception p0

    .line 234
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 235
    throw p0
.end method

.method public static standartStyle(IFLcom/metamoji/mazecclient/stroke/IStrokeInk;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;
    .locals 2

    .line 46
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    invoke-direct {v0}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;-><init>()V

    .line 47
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    iput-object v1, v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    .line 48
    iput p0, v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineColor:I

    .line 49
    iput p1, v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineWidthRatio:F

    .line 50
    iput-object p2, v0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_ink:Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    .line 52
    sget-object p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->__stylePoolStandard:Ljava/util/ArrayList;

    sget-object p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->__stylePoolStandardLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p0, p1, v0}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->searchStyleInProol(Ljava/util/List;Ljava/util/concurrent/locks/ReentrantReadWriteLock;Lcom/metamoji/mazecclient/stroke/StrokeStyle;)Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cloneImmutable()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;
    .locals 0

    return-object p0
.end method

.method public compare(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)Ljava/util/EnumSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;",
            ">;"
        }
    .end annotation

    .line 664
    instance-of v0, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    if-nez v0, :cond_0

    .line 665
    const-class p1, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1

    .line 667
    :cond_0
    check-cast p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    .line 668
    const-class v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 669
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    iget-object v2, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v1, v2, :cond_4

    .line 670
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->PenType:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 679
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v1, v2, :cond_3

    .line 680
    iget v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliAngle:F

    iget v2, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliAngle:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 681
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineCalliAngle:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_1
    iget v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliRate:F

    iget v2, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 684
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineCalliRate:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_2
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliPaintType:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    iget-object v2, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliPaintType:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    if-eq v1, v2, :cond_3

    .line 687
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineCalliPaintType:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_3
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v1, v2, :cond_4

    .line 693
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_fountainProps:Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    if-eqz v1, :cond_4

    iget-object v2, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_fountainProps:Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 694
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->FountainProps:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_4
    iget v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineColor:I

    iget v2, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineColor:I

    if-ne v1, v2, :cond_5

    .line 700
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineColor:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_5
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v1, v2, :cond_c

    :cond_6
    iget-object v1, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v1, v2, :cond_7

    iget-object v1, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v1, v2, :cond_7

    iget-object v1, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v1, v2, :cond_c

    .line 711
    :cond_7
    iget v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineWidthRatio:F

    iget v2, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineWidthRatio:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_8

    .line 712
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineWidthRatio:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_8
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    if-eqz v1, :cond_b

    iget-object v2, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    if-eqz v2, :cond_b

    .line 715
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 716
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_a

    .line 719
    iget-object v3, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_9

    goto :goto_1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    :goto_1
    if-ne v2, v1, :cond_b

    .line 725
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineDash:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 728
    :cond_b
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_ink:Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    if-eqz v1, :cond_c

    iget-object p1, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_ink:Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    if-eqz p1, :cond_c

    .line 729
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 730
    sget-object p1, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->Ink:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_c
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 399
    :cond_0
    instance-of v1, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 402
    :cond_1
    check-cast p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    .line 404
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    iget-object v3, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v1, v3, :cond_2

    return v2

    .line 409
    :cond_2
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_ink:Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    if-nez v1, :cond_3

    .line 410
    iget-object v1, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_ink:Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    if-eqz v1, :cond_5

    return v2

    .line 413
    :cond_3
    iget-object v3, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_ink:Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    if-nez v3, :cond_4

    return v2

    .line 415
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 419
    :cond_5
    iget v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineColor:I

    iget v3, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineColor:I

    if-eq v1, v3, :cond_6

    return v2

    .line 423
    :cond_6
    iget v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineWidthRatio:F

    iget v3, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineWidthRatio:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_7

    return v2

    .line 427
    :cond_7
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    if-nez v1, :cond_8

    .line 428
    iget-object v1, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    if-eqz v1, :cond_c

    return v2

    .line 431
    :cond_8
    iget-object v3, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    if-nez v3, :cond_9

    return v2

    .line 434
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 435
    iget-object v3, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_c

    .line 440
    iget-object v4, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_b

    return v2

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 447
    :cond_c
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v1, v3, :cond_f

    .line 448
    iget v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliAngle:F

    iget v3, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliAngle:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_d

    return v2

    .line 453
    :cond_d
    iget v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliRate:F

    iget v3, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliRate:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_e

    return v2

    .line 457
    :cond_e
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliPaintType:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    iget-object v3, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliPaintType:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    if-eq v1, v3, :cond_f

    return v2

    .line 463
    :cond_f
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v1, v3, :cond_10

    .line 464
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_fountainProps:Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    if-eqz v1, :cond_10

    iget-object p1, p1, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_fountainProps:Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    .line 465
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public getCalliAngle()F
    .locals 1

    .line 357
    iget v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliAngle:F

    return v0
.end method

.method public getCalliPaintType()Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliPaintType:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    return-object v0
.end method

.method public getCalliRate()F
    .locals 1

    .line 362
    iget v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliRate:F

    return v0
.end method

.method public getFountainProperties()Lcom/metamoji/mazecclient/stroke/IFountainProperties;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_fountainProps:Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    return-object v0
.end method

.method public getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_ink:Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    return-object v0
.end method

.method public getLineColor()I
    .locals 1

    .line 336
    iget v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineColor:I

    return v0
.end method

.method public getLineDash()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    return-object v0
.end method

.method public getLineWidthForHeight(F)F
    .locals 1

    .line 346
    iget v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineWidthRatio:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x41400000    # 12.0f

    div-float/2addr p1, v0

    return p1
.end method

.method public getLineWidthRatio()F
    .locals 1

    .line 341
    iget v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineWidthRatio:F

    return v0
.end method

.method public getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 477
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    invoke-virtual {v0}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->getInt16Value()S

    move-result v0

    .line 479
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_ink:Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    if-eqz v1, :cond_0

    .line 480
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 483
    :cond_0
    iget v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineColor:I

    xor-int/2addr v0, v1

    .line 485
    iget v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineWidthRatio:F

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    add-double/2addr v3, v1

    .line 487
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 488
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v5, v2

    add-double/2addr v3, v5

    goto :goto_0

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v1, v2, :cond_2

    .line 494
    iget v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliAngle:F

    float-to-double v1, v1

    add-double/2addr v3, v1

    .line 496
    iget v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliRate:F

    float-to-double v1, v1

    add-double/2addr v3, v1

    .line 498
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliPaintType:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    invoke-virtual {v1}, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->getInt16Value()S

    move-result v1

    xor-int/2addr v0, v1

    .line 501
    :cond_2
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_fountainProps:Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    if-eqz v1, :cond_3

    .line 502
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 505
    :cond_3
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public serialize(Lcom/metamoji/cm/DataArchiver;)I
    .locals 9

    .line 523
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 526
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataToTemporary()Z

    .line 527
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    invoke-virtual {v0}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->getInt16Value()S

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    .line 529
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v0, v3, :cond_1

    .line 536
    :cond_0
    iget v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 537
    iget v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineColor:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 538
    iget v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineColor:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 539
    iget v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v0, v1, :cond_3

    .line 546
    :cond_2
    iget v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineWidthRatio:F

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 553
    :cond_3
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v0, v1, :cond_4

    .line 554
    iget v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliAngle:F

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 555
    iget v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliRate:F

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 556
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliPaintType:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    invoke-virtual {v0}, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->getInt16Value()S

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    .line 559
    :cond_4
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v2

    :goto_0
    int-to-short v0, v0

    .line 560
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    .line 561
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 562
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 563
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    goto :goto_1

    .line 567
    :cond_6
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_ink:Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    if-eqz v0, :cond_7

    .line 568
    invoke-interface {v0, p1}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    goto :goto_2

    .line 570
    :cond_7
    invoke-virtual {p1, v2}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    .line 573
    :goto_2
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_fountainProps:Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    if-eqz v0, :cond_8

    .line 574
    invoke-interface {v0, p1}, Lcom/metamoji/cm/ISerializable;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    goto :goto_3

    .line 576
    :cond_8
    invoke-virtual {p1, v2}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    .line 579
    :goto_3
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataBackToMain()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-short v2, v1

    .line 582
    invoke-virtual {p1, v2}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    move-result v2

    add-int/2addr v1, v2

    .line 584
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->appendData(Ljava/io/ByteArrayOutputStream;)I

    return v1

    .line 587
    :cond_9
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v0

    .line 589
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getReadPointer()I

    move-result v3

    .line 590
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v4

    invoke-static {v4}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->valueOf(S)Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    .line 592
    sget-object v5, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v4, v5, :cond_a

    iget-object v4, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v5, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v4, v5, :cond_a

    iget-object v4, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v5, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v4, v5, :cond_b

    .line 599
    :cond_a
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    const/16 v5, 0xff

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 600
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v6

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 601
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v7

    mul-float/2addr v7, v1

    float-to-int v7, v7

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 602
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v8

    mul-float/2addr v8, v1

    float-to-int v1, v8

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 603
    invoke-static {v1, v4, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineColor:I

    .line 606
    :cond_b
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v4, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v1, v4, :cond_c

    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v4, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v1, v4, :cond_c

    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v4, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v1, v4, :cond_d

    .line 610
    :cond_c
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v1

    iput v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineWidthRatio:F

    .line 617
    :cond_d
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v4, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v1, v4, :cond_e

    .line 618
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v1

    iput v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliAngle:F

    .line 619
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v1

    iput v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliRate:F

    .line 620
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v1

    invoke-static {v1}, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->valueOf(S)Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_calliPaintType:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    .line 623
    :cond_e
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v1

    const/4 v4, 0x0

    if-lez v1, :cond_10

    .line 625
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v2

    :goto_4
    if-ge v6, v1, :cond_f

    .line 627
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v7

    .line 628
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 630
    :cond_f
    iput-object v5, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    goto :goto_5

    .line 633
    :cond_10
    iput-object v4, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_lineDash:Ljava/util/List;

    .line 636
    :goto_5
    new-instance v1, Lcom/metamoji/mazecclient/stroke/StrokeInk;

    invoke-direct {v1, p1}, Lcom/metamoji/mazecclient/stroke/StrokeInk;-><init>(Lcom/metamoji/cm/DataArchiver;)V

    .line 637
    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getType()Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    move-result-object v5

    sget-object v6, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->NONE:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    if-eq v5, v6, :cond_11

    .line 638
    iput-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_ink:Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    goto :goto_6

    .line 640
    :cond_11
    iput-object v4, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_ink:Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    .line 643
    :goto_6
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getReadPointer()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v1, v0, :cond_12

    .line 645
    new-instance v1, Lcom/metamoji/mazecclient/stroke/FountainProperties;

    invoke-direct {v1, p1}, Lcom/metamoji/mazecclient/stroke/FountainProperties;-><init>(Lcom/metamoji/cm/DataArchiver;)V

    .line 646
    invoke-virtual {v1}, Lcom/metamoji/mazecclient/stroke/FountainProperties;->isValid()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 647
    iput-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->_fountainProps:Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    :cond_12
    add-int/2addr v3, v0

    .line 651
    invoke-virtual {p1, v3}, Lcom/metamoji/cm/DataArchiver;->setReadPointer(I)V

    return v2
.end method
