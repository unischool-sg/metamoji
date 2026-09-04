.class public interface abstract Lcom/metamoji/ch/radar/IChRadarChartSetting;
.super Ljava/lang/Object;
.source "IChRadarChartSetting.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u0010X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\u0010X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012\u00a8\u0006\u0015\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/ch/radar/IChRadarChartSetting;",
        "",
        "lineColor",
        "",
        "seriesIndex",
        "lineWidth",
        "",
        "markerType",
        "Lcom/metamoji/ch/ChMarker;",
        "markerSize",
        "markerColor",
        "valueScaleAxis",
        "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
        "getValueScaleAxis",
        "()Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
        "valueScaleGrid",
        "Lcom/metamoji/ch/IChScaleGridSetting;",
        "getValueScaleGrid",
        "()Lcom/metamoji/ch/IChScaleGridSetting;",
        "categoryScaleGrid",
        "getCategoryScaleGrid",
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
.method public abstract getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;
.end method

.method public abstract getValueScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;
.end method

.method public abstract getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;
.end method

.method public abstract lineColor(I)I
.end method

.method public abstract lineWidth(I)D
.end method

.method public abstract markerColor(I)I
.end method

.method public abstract markerSize(I)D
.end method

.method public abstract markerType(I)Lcom/metamoji/ch/ChMarker;
.end method
