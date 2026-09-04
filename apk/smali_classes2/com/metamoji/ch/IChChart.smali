.class public interface abstract Lcom/metamoji/ch/IChChart;
.super Ljava/lang/Object;
.source "IChChart.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u0003H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0018\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u0010X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/ch/IChChart;",
        "",
        "chartSize",
        "Lcom/metamoji/ch/ChSize;",
        "getChartSize",
        "()Lcom/metamoji/ch/ChSize;",
        "dataSource",
        "Lcom/metamoji/ch/IChDataSource;",
        "getDataSource",
        "()Lcom/metamoji/ch/IChDataSource;",
        "legendItems",
        "",
        "Lcom/metamoji/ch/ChLegend$Item;",
        "getLegendItems",
        "()Ljava/util/List;",
        "sprite",
        "Lcom/metamoji/df/sprite/Sprite;",
        "getSprite",
        "()Lcom/metamoji/df/sprite/Sprite;",
        "update",
        "",
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
.method public abstract getChartSize()Lcom/metamoji/ch/ChSize;
.end method

.method public abstract getDataSource()Lcom/metamoji/ch/IChDataSource;
.end method

.method public abstract getLegendItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/ChLegend$Item;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSprite()Lcom/metamoji/df/sprite/Sprite;
.end method

.method public abstract update(Lcom/metamoji/ch/IChDataSource;Lcom/metamoji/ch/ChSize;)V
.end method
