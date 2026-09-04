.class public interface abstract Lcom/metamoji/mazecclient/stroke/IStrokeStyle;
.super Ljava/lang/Object;
.source "IStrokeStyle.java"

# interfaces
.implements Lcom/metamoji/cm/ISerializable;


# virtual methods
.method public abstract cloneImmutable()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;
.end method

.method public abstract compare(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCalliAngle()F
.end method

.method public abstract getCalliPaintType()Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;
.end method

.method public abstract getCalliRate()F
.end method

.method public abstract getFountainProperties()Lcom/metamoji/mazecclient/stroke/IFountainProperties;
.end method

.method public abstract getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;
.end method

.method public abstract getLineColor()I
.end method

.method public abstract getLineDash()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLineWidthForHeight(F)F
.end method

.method public abstract getLineWidthRatio()F
.end method

.method public abstract getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;
.end method
