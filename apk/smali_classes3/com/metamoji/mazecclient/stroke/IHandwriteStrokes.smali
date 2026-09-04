.class public interface abstract Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;
.super Ljava/lang/Object;
.source "IHandwriteStrokes.java"

# interfaces
.implements Lcom/metamoji/cm/ISerializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ISerializable;",
        "Ljava/lang/Iterable<",
        "Lcom/metamoji/mazecclient/stroke/HandwriteStroke;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract applyStyle(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Ljava/util/EnumSet;)V
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

.method public abstract getBaseLine()F
.end method

.method public abstract getBounds()Landroid/graphics/RectF;
.end method

.method public abstract getCountOfStroke()I
.end method

.method public abstract getStrokeAt(I)Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;
.end method

.method public abstract getTopLine()F
.end method
