.class public interface abstract Lcom/metamoji/mazecclient/stroke/IMutableStrokeStyle;
.super Ljava/lang/Object;
.source "IMutableStrokeStyle.java"

# interfaces
.implements Lcom/metamoji/mazecclient/stroke/IStrokeStyle;


# virtual methods
.method public abstract applyProperties(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Ljava/util/EnumSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCalliAngle(F)V
.end method

.method public abstract setCalliPaintType(Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;)V
.end method

.method public abstract setCalliRate(F)V
.end method

.method public abstract setFountainProperties(Lcom/metamoji/mazecclient/stroke/IFountainProperties;)V
.end method

.method public abstract setInk(Lcom/metamoji/mazecclient/stroke/IStrokeInk;)V
.end method

.method public abstract setLineColor(I)V
.end method

.method public abstract setLineDash(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLineWidthRatio(F)V
.end method

.method public abstract setPenType(Lcom/metamoji/mazecclient/stroke/StrokePenType;)V
.end method
