.class public Lcom/google/android/material/shape/TriangleEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "TriangleEdgeTreatment.java"


# instance fields
.field private final inside:Z

.field private final size:F


# direct methods
.method public constructor <init>(FZ)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 43
    iput p1, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    .line 44
    iput-boolean p2, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->inside:Z

    return-void
.end method


# virtual methods
.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 3

    .line 50
    iget-boolean v0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->inside:Z

    .line 55
    iget v1, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    mul-float/2addr v1, p3

    sub-float v0, p2, v1

    .line 51
    invoke-virtual {p4, v0, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 52
    iget v0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    mul-float v1, v0, p3

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    invoke-virtual {p4, p2, v1, v0, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FFFF)V

    .line 53
    invoke-virtual {p4, p1, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    return-void

    :cond_0
    mul-float v0, v1, p3

    sub-float v0, p2, v0

    neg-float v1, v1

    mul-float/2addr v1, p3

    .line 55
    invoke-virtual {p4, v0, v2, p2, v1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FFFF)V

    .line 56
    iget v0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    mul-float/2addr v0, p3

    add-float/2addr p2, v0

    invoke-virtual {p4, p2, v2, p1, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FFFF)V

    return-void
.end method
