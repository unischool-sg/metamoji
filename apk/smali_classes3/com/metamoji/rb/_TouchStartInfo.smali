.class final Lcom/metamoji/rb/_TouchStartInfo;
.super Ljava/lang/Object;
.source "RbRubberBand.java"


# instance fields
.field public angle:F

.field public keepAspectRatio:Z

.field public maxScale:Landroid/graphics/PointF;

.field public minScale:Landroid/graphics/PointF;

.field public outset:Lcom/metamoji/rb/Insets;

.field public rect:Lcom/metamoji/cm/RectEx;

.field public x:F

.field public y:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/_TouchStartInfo;->rect:Lcom/metamoji/cm/RectEx;

    .line 58
    new-instance v0, Lcom/metamoji/rb/Insets;

    invoke-direct {v0}, Lcom/metamoji/rb/Insets;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/_TouchStartInfo;->outset:Lcom/metamoji/rb/Insets;

    .line 61
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/_TouchStartInfo;->minScale:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/rb/_TouchStartInfo;->maxScale:Landroid/graphics/PointF;

    return-void
.end method
