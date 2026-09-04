.class Lcom/metamoji/mazecclient/stroke/StrokeCompareBySerialNumber;
.super Ljava/lang/Object;
.source "HandwriteStrokes.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/metamoji/mazecclient/stroke/HandwriteStroke;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/mazecclient/stroke/HandwriteStroke;Lcom/metamoji/mazecclient/stroke/HandwriteStroke;)I
    .locals 3

    .line 1362
    invoke-virtual {p1}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->getSerialNumber()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->getSerialNumber()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmp-long p1, p1, v0

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1359
    check-cast p1, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    check-cast p2, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/mazecclient/stroke/StrokeCompareBySerialNumber;->compare(Lcom/metamoji/mazecclient/stroke/HandwriteStroke;Lcom/metamoji/mazecclient/stroke/HandwriteStroke;)I

    move-result p1

    return p1
.end method
