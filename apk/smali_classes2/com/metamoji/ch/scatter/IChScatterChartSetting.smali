.class public interface abstract Lcom/metamoji/ch/scatter/IChScatterChartSetting;
.super Ljava/lang/Object;
.source "IChScatterChartSetting.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005H&R\u0012\u0010\u0011\u001a\u00020\u0012X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0012\u0010\u0019\u001a\u00020\u0012X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0014R\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0018\u00a8\u0006\u001d\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/ch/scatter/IChScatterChartSetting;",
        "",
        "isLineDraw",
        "",
        "seriesIndex",
        "",
        "lineColor",
        "lineWidth",
        "",
        "lineCap",
        "Lcom/metamoji/df/sprite/LineCap;",
        "lineJoin",
        "Lcom/metamoji/df/sprite/LineJoin;",
        "markerType",
        "Lcom/metamoji/ch/ChMarker;",
        "markerSize",
        "markerColor",
        "valueScaleGrid",
        "Lcom/metamoji/ch/IChScaleGridSetting;",
        "getValueScaleGrid",
        "()Lcom/metamoji/ch/IChScaleGridSetting;",
        "valueScaleAxis",
        "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
        "getValueScaleAxis",
        "()Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
        "categoryScaleGrid",
        "getCategoryScaleGrid",
        "categoryScaleAxis",
        "getCategoryScaleAxis",
        "chart"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getCategoryScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;
.end method

.method public abstract getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;
.end method

.method public abstract getValueScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;
.end method

.method public abstract getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;
.end method

.method public abstract isLineDraw(I)Z
.end method

.method public abstract lineCap(I)Lcom/metamoji/df/sprite/LineCap;
.end method

.method public abstract lineColor(I)I
.end method

.method public abstract lineJoin(I)Lcom/metamoji/df/sprite/LineJoin;
.end method

.method public abstract lineWidth(I)D
.end method

.method public abstract markerColor(I)I
.end method

.method public abstract markerSize(I)D
.end method

.method public abstract markerType(I)Lcom/metamoji/ch/ChMarker;
.end method
