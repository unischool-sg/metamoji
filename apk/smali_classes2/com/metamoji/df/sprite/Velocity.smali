.class Lcom/metamoji/df/sprite/Velocity;
.super Ljava/lang/Object;
.source "Velocity.java"


# instance fields
.field private array:[Landroid/graphics/PointF;

.field private prev:Landroid/graphics/PointF;

.field private prevTime:J

.field private size:I

.field value:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Velocity;->prev:Landroid/graphics/PointF;

    .line 23
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Velocity;->value:Landroid/graphics/PointF;

    .line 29
    new-array p1, p1, [Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/metamoji/df/sprite/Velocity;->array:[Landroid/graphics/PointF;

    return-void
.end method

.method private add(FF)V
    .locals 3

    .line 35
    iget v0, p0, Lcom/metamoji/df/sprite/Velocity;->size:I

    iget-object v1, p0, Lcom/metamoji/df/sprite/Velocity;->array:[Landroid/graphics/PointF;

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 36
    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 39
    iget-object p1, p0, Lcom/metamoji/df/sprite/Velocity;->array:[Landroid/graphics/PointF;

    aput-object v1, p1, v0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v1, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 43
    :goto_0
    iget p1, p0, Lcom/metamoji/df/sprite/Velocity;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/metamoji/df/sprite/Velocity;->size:I

    return-void
.end method


# virtual methods
.method end(FFJ)V
    .locals 2

    .line 82
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/df/sprite/Velocity;->move(FFJ)V

    .line 84
    iget-object p1, p0, Lcom/metamoji/df/sprite/Velocity;->value:Landroid/graphics/PointF;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 85
    iget p1, p0, Lcom/metamoji/df/sprite/Velocity;->size:I

    iget-object p2, p0, Lcom/metamoji/df/sprite/Velocity;->array:[Landroid/graphics/PointF;

    array-length p3, p2

    if-ge p1, p3, :cond_0

    goto :goto_0

    :cond_0
    array-length p1, p2

    :goto_0
    if-lez p1, :cond_2

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_1

    .line 88
    iget-object p3, p0, Lcom/metamoji/df/sprite/Velocity;->array:[Landroid/graphics/PointF;

    aget-object p3, p3, p2

    .line 89
    iget-object p4, p0, Lcom/metamoji/df/sprite/Velocity;->value:Landroid/graphics/PointF;

    iget v0, p4, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p4, Landroid/graphics/PointF;->x:F

    .line 90
    iget-object p4, p0, Lcom/metamoji/df/sprite/Velocity;->value:Landroid/graphics/PointF;

    iget v0, p4, Landroid/graphics/PointF;->y:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p3

    iput v0, p4, Landroid/graphics/PointF;->y:F

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 92
    :cond_1
    iget-object p2, p0, Lcom/metamoji/df/sprite/Velocity;->value:Landroid/graphics/PointF;

    iget p3, p2, Landroid/graphics/PointF;->x:F

    int-to-float p1, p1

    div-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/PointF;->x:F

    .line 93
    iget-object p2, p0, Lcom/metamoji/df/sprite/Velocity;->value:Landroid/graphics/PointF;

    iget p3, p2, Landroid/graphics/PointF;->y:F

    div-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/PointF;->y:F

    :cond_2
    return-void
.end method

.method public getLastTime()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/metamoji/df/sprite/Velocity;->prevTime:J

    return-wide v0
.end method

.method move(FFJ)V
    .locals 4

    .line 64
    iget-wide v0, p0, Lcom/metamoji/df/sprite/Velocity;->prevTime:J

    sub-long v0, p3, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/metamoji/df/sprite/Velocity;->prev:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, p1, v2

    long-to-float v0, v0

    div-float/2addr v2, v0

    .line 69
    iget-object v1, p0, Lcom/metamoji/df/sprite/Velocity;->prev:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, p2, v1

    div-float/2addr v1, v0

    .line 71
    invoke-direct {p0, v2, v1}, Lcom/metamoji/df/sprite/Velocity;->add(FF)V

    .line 72
    iget-object v0, p0, Lcom/metamoji/df/sprite/Velocity;->prev:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 73
    iput-wide p3, p0, Lcom/metamoji/df/sprite/Velocity;->prevTime:J

    return-void
.end method

.method start(FFJ)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/metamoji/df/sprite/Velocity;->size:I

    .line 54
    iget-object v0, p0, Lcom/metamoji/df/sprite/Velocity;->prev:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 55
    iput-wide p3, p0, Lcom/metamoji/df/sprite/Velocity;->prevTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Velocity "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    iget v1, p0, Lcom/metamoji/df/sprite/Velocity;->size:I

    iget-object v2, p0, Lcom/metamoji/df/sprite/Velocity;->array:[Landroid/graphics/PointF;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, v2

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 111
    iget-object v3, p0, Lcom/metamoji/df/sprite/Velocity;->array:[Landroid/graphics/PointF;

    aget-object v3, v3, v2

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "v"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/metamoji/df/sprite/Geometry;->toString(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 114
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/df/sprite/Velocity;->value:Landroid/graphics/PointF;

    invoke-static {v2}, Lcom/metamoji/df/sprite/Geometry;->toString(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
