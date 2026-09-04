.class public Lcom/metamoji/cv/CvConvertProgress;
.super Ljava/lang/Object;
.source "CvConvertProgress.java"


# instance fields
.field _current:F

.field final _div:F

.field _progress:Lcom/metamoji/nt/INtProgressUI;

.field _remain:F

.field final _total:F


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/INtProgressUI;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 13
    iput v0, p0, Lcom/metamoji/cv/CvConvertProgress;->_total:F

    const/high16 v1, 0x41200000    # 10.0f

    .line 14
    iput v1, p0, Lcom/metamoji/cv/CvConvertProgress;->_div:F

    .line 23
    iput-object p1, p0, Lcom/metamoji/cv/CvConvertProgress;->_progress:Lcom/metamoji/nt/INtProgressUI;

    .line 24
    iput v0, p0, Lcom/metamoji/cv/CvConvertProgress;->_remain:F

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/metamoji/cv/CvConvertProgress;->_current:F

    return-void
.end method


# virtual methods
.method public fill()V
    .locals 2

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/metamoji/cv/CvConvertProgress;->_remain:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 41
    iput v0, p0, Lcom/metamoji/cv/CvConvertProgress;->_current:F

    .line 42
    iget-object v0, p0, Lcom/metamoji/cv/CvConvertProgress;->_progress:Lcom/metamoji/nt/INtProgressUI;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/metamoji/nt/INtProgressUI;->progress(F)V

    return-void
.end method

.method threshold()D
    .locals 4

    .line 19
    iget v0, p0, Lcom/metamoji/cv/CvConvertProgress;->_remain:F

    float-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public update()V
    .locals 8

    .line 29
    iget v0, p0, Lcom/metamoji/cv/CvConvertProgress;->_remain:F

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    .line 30
    iget v0, p0, Lcom/metamoji/cv/CvConvertProgress;->_current:F

    float-to-double v4, v0

    add-double/2addr v4, v2

    invoke-virtual {p0}, Lcom/metamoji/cv/CvConvertProgress;->threshold()D

    move-result-wide v6

    cmpl-double v0, v4, v6

    const/high16 v4, 0x42c80000    # 100.0f

    if-lez v0, :cond_0

    .line 31
    iget v0, p0, Lcom/metamoji/cv/CvConvertProgress;->_current:F

    sub-float v0, v4, v0

    iput v0, p0, Lcom/metamoji/cv/CvConvertProgress;->_remain:F

    div-float/2addr v0, v1

    float-to-double v2, v0

    .line 35
    :cond_0
    iget v0, p0, Lcom/metamoji/cv/CvConvertProgress;->_current:F

    float-to-double v0, v0

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/metamoji/cv/CvConvertProgress;->_current:F

    .line 36
    iget-object v1, p0, Lcom/metamoji/cv/CvConvertProgress;->_progress:Lcom/metamoji/nt/INtProgressUI;

    div-float/2addr v0, v4

    invoke-interface {v1, v0}, Lcom/metamoji/nt/INtProgressUI;->progress(F)V

    return-void
.end method
