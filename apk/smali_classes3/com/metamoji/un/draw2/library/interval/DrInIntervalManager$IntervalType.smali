.class Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;
.super Ljava/lang/Object;
.source "DrInIntervalManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntervalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;",
        ">;"
    }
.end annotation


# instance fields
.field final end:D

.field final group:Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;

.field final id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field final start:D


# direct methods
.method constructor <init>(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DDLcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 31
    iput-wide p2, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->start:D

    .line 32
    iput-wide p4, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->end:D

    .line 33
    iput-object p6, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->group:Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalGroupType;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;)I
    .locals 4

    .line 39
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->start:D

    iget-wide v2, p1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->start:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 40
    :cond_0
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->end:D

    iget-wide v2, p1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->end:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 23
    check-cast p1, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->compareTo(Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 46
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    iget-wide v2, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->start:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager$IntervalType;->end:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ID=%s [%f, %f]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
