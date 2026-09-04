.class public interface abstract Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;
.super Ljava/lang/Object;
.source "IHandwriteStroke.java"

# interfaces
.implements Lcom/metamoji/cm/ISerializable;


# virtual methods
.method public abstract clearPenInfo()V
.end method

.method public abstract getBounds()Landroid/graphics/RectF;
.end method

.method public abstract getCountOfPoints()I
.end method

.method public abstract getDelta()D
.end method

.method public abstract getPenAttr()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPenInfo()Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;
.end method

.method public abstract getPoints()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSegmentAttr()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStyle()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;
.end method

.method public abstract setStyle(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)V
.end method
