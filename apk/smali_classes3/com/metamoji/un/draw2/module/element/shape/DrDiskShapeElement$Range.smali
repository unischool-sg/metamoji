.class Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;
.super Ljava/lang/Object;
.source "DrDiskShapeElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Range"
.end annotation


# instance fields
.field end:F

.field start:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(FF)V
    .locals 0

    .line 2645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2646
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 2647
    iput p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    return-void
.end method
