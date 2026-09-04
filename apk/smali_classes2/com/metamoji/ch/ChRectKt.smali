.class public final Lcom/metamoji/ch/ChRectKt;
.super Ljava/lang/Object;
.source "ChRect.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "toChRect",
        "Lcom/metamoji/ch/ChRect;",
        "Landroid/graphics/RectF;",
        "getChOrigin",
        "Lcom/metamoji/ch/ChPoint;",
        "getChSize",
        "Lcom/metamoji/ch/ChSize;",
        "chart"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getChOrigin(Landroid/graphics/RectF;)Lcom/metamoji/ch/ChPoint;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/metamoji/ch/ChPoint;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    iget p0, p0, Landroid/graphics/RectF;->top:F

    float-to-double v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    return-object v0
.end method

.method public static final getChSize(Landroid/graphics/RectF;)Lcom/metamoji/ch/ChSize;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/metamoji/ch/ChSize;

    iget v1, p0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p0

    float-to-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/metamoji/ch/ChSize;-><init>(DD)V

    return-object v0
.end method

.method public static final toChRect(Landroid/graphics/RectF;)Lcom/metamoji/ch/ChRect;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/metamoji/ch/ChRect;

    invoke-direct {v0, p0}, Lcom/metamoji/ch/ChRect;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method
