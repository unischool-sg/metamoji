.class public interface abstract Lcom/metamoji/ch/pie/IChPieChartSetting;
.super Ljava/lang/Object;
.source "IChPieChartSetting.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0004\u001a\u00020\u0003H&R\u0012\u0010\u0008\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\u0006X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000e\u001a\u00020\u0006X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0015\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/ch/pie/IChPieChartSetting;",
        "",
        "lineColor",
        "",
        "categoryIndex",
        "lineWidth",
        "",
        "fillColor",
        "valueSelectSeries",
        "getValueSelectSeries",
        "()I",
        "donutHoleRatio",
        "getDonutHoleRatio",
        "()D",
        "chartWidthRatio",
        "getChartWidthRatio",
        "piePopoutRatio",
        "valueLabel",
        "Lcom/metamoji/ch/IChDecimalLabelSetting;",
        "dataLabel",
        "Lcom/metamoji/ch/pie/IChPieDataLabelSetting;",
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
.method public abstract dataLabel(I)Lcom/metamoji/ch/pie/IChPieDataLabelSetting;
.end method

.method public abstract fillColor(I)I
.end method

.method public abstract getChartWidthRatio()D
.end method

.method public abstract getDonutHoleRatio()D
.end method

.method public abstract getValueSelectSeries()I
.end method

.method public abstract lineColor(I)I
.end method

.method public abstract lineWidth(I)D
.end method

.method public abstract piePopoutRatio(I)D
.end method

.method public abstract valueLabel(I)Lcom/metamoji/ch/IChDecimalLabelSetting;
.end method
