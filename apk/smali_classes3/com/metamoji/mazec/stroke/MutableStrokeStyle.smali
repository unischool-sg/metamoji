.class public Lcom/metamoji/mazec/stroke/MutableStrokeStyle;
.super Lcom/metamoji/mazec/stroke/StrokeStyle;
.source "MutableStrokeStyle.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/mazec/stroke/StrokeStyle;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;-><init>(Lcom/metamoji/mazec/stroke/StrokeStyle;)V

    return-void
.end method


# virtual methods
.method public cloneImmutable()Lcom/metamoji/mazec/stroke/StrokeStyle;
    .locals 1

    .line 27
    new-instance v0, Lcom/metamoji/mazec/stroke/StrokeStyle;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;-><init>(Lcom/metamoji/mazec/stroke/StrokeStyle;)V

    return-object v0
.end method

.method public setCalliAngle(D)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;->mCalliAngle:D

    return-void
.end method

.method public setCalliPaintType(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;->mCalliPaintType:I

    return-void
.end method

.method public setCalliRate(D)V
    .locals 0

    .line 81
    iput-wide p1, p0, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;->mCalliRate:D

    return-void
.end method

.method public setInk(Lcom/metamoji/mazec/stroke/StrokeInk;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;->mInk:Lcom/metamoji/mazec/stroke/StrokeInk;

    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;->mLineColor:I

    return-void
.end method

.method public setLineDash([D)V
    .locals 0

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;->mLineDash:[D

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;->mLineDash:[D

    return-void
.end method

.method public setLineWidthRatio(D)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;->mLineWidthRatio:D

    return-void
.end method

.method public setLineWidthType(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;->mLineWidthType:I

    return-void
.end method

.method public setPenType(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;->mPenType:I

    return-void
.end method
