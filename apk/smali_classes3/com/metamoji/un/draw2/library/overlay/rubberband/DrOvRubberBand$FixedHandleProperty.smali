.class Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;
.super Ljava/lang/Object;
.source "DrOvRubberBand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedHandleProperty"
.end annotation


# instance fields
.field final offset:Landroid/graphics/PointF;

.field final origin:Landroid/graphics/PointF;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->origin:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->offset:Landroid/graphics/PointF;

    return-void
.end method

.method static create(FFFF)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;
    .locals 2

    .line 33
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;-><init>()V

    .line 34
    iget-object v1, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->origin:Landroid/graphics/PointF;

    invoke-virtual {v1, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 35
    iget-object p0, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand$FixedHandleProperty;->offset:Landroid/graphics/PointF;

    invoke-virtual {p0, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    return-object v0
.end method
