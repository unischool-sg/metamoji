.class public final Lcom/metamoji/ch/ChNullDataSource;
.super Ljava/lang/Object;
.source "IChDataSource.kt"

# interfaces
.implements Lcom/metamoji/ch/IChDataSource;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u0017\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\n\u001a\u00020\u0005H\u0016\u00a2\u0006\u0002\u0010\rJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u0017\u0010\u0011\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\n\u001a\u00020\u0005H\u0016\u00a2\u0006\u0002\u0010\rJ\u001f\u0010\u0012\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0005H\u0016\u00a2\u0006\u0002\u0010\u0015R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u000e\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/ch/ChNullDataSource;",
        "Lcom/metamoji/ch/IChDataSource;",
        "<init>",
        "()V",
        "categoryCount",
        "",
        "getCategoryCount",
        "()I",
        "categoryTitle",
        "",
        "index",
        "categoryTitleAsNumber",
        "",
        "(I)Ljava/lang/Double;",
        "seriesCount",
        "getSeriesCount",
        "seriesTitle",
        "seriesTitleAsNumber",
        "data",
        "categoryIndex",
        "seriesIndex",
        "(II)Ljava/lang/Double;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public categoryTitle(I)Ljava/lang/String;
    .locals 0

    .line 52
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public categoryTitleAsNumber(I)Ljava/lang/Double;
    .locals 0

    .line 56
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public data(II)Ljava/lang/Double;
    .locals 0

    .line 71
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getCategoryCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSeriesCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public seriesTitle(I)Ljava/lang/String;
    .locals 0

    .line 63
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public seriesTitleAsNumber(I)Ljava/lang/Double;
    .locals 0

    .line 67
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
