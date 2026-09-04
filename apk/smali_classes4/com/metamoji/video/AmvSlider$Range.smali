.class public final Lcom/metamoji/video/AmvSlider$Range;
.super Ljava/lang/Object;
.source "AmvSlider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Range"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0007J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0010\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\t\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/metamoji/video/AmvSlider$Range;",
        "",
        "min",
        "",
        "max",
        "<init>",
        "(FF)V",
        "()V",
        "getMin",
        "()F",
        "setMin",
        "(F)V",
        "getMax",
        "setMax",
        "set",
        "",
        "range",
        "getRange",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "video"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private max:F

.field private min:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 340
    invoke-direct {p0, v0, v0}, Lcom/metamoji/video/AmvSlider$Range;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/metamoji/video/AmvSlider$Range;->min:F

    iput p2, p0, Lcom/metamoji/video/AmvSlider$Range;->max:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/video/AmvSlider$Range;FFILjava/lang/Object;)Lcom/metamoji/video/AmvSlider$Range;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/metamoji/video/AmvSlider$Range;->min:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/metamoji/video/AmvSlider$Range;->max:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/AmvSlider$Range;->copy(FF)Lcom/metamoji/video/AmvSlider$Range;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic set$default(Lcom/metamoji/video/AmvSlider$Range;FFILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move p2, p1

    .line 341
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/AmvSlider$Range;->set(FF)V

    return-void
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/metamoji/video/AmvSlider$Range;->min:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/metamoji/video/AmvSlider$Range;->max:F

    return v0
.end method

.method public final copy(FF)Lcom/metamoji/video/AmvSlider$Range;
    .locals 1

    new-instance v0, Lcom/metamoji/video/AmvSlider$Range;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/video/AmvSlider$Range;-><init>(FF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/video/AmvSlider$Range;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/video/AmvSlider$Range;

    iget v1, p0, Lcom/metamoji/video/AmvSlider$Range;->min:F

    iget v3, p1, Lcom/metamoji/video/AmvSlider$Range;->min:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/metamoji/video/AmvSlider$Range;->max:F

    iget p1, p1, Lcom/metamoji/video/AmvSlider$Range;->max:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMax()F
    .locals 1

    .line 339
    iget v0, p0, Lcom/metamoji/video/AmvSlider$Range;->max:F

    return v0
.end method

.method public final getMin()F
    .locals 1

    .line 339
    iget v0, p0, Lcom/metamoji/video/AmvSlider$Range;->min:F

    return v0
.end method

.method public final getRange()F
    .locals 2

    .line 346
    iget v0, p0, Lcom/metamoji/video/AmvSlider$Range;->max:F

    iget v1, p0, Lcom/metamoji/video/AmvSlider$Range;->min:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/metamoji/video/AmvSlider$Range;->min:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/metamoji/video/AmvSlider$Range;->max:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final set(FF)V
    .locals 0

    .line 342
    iput p1, p0, Lcom/metamoji/video/AmvSlider$Range;->min:F

    .line 343
    iput p2, p0, Lcom/metamoji/video/AmvSlider$Range;->max:F

    return-void
.end method

.method public final setMax(F)V
    .locals 0

    .line 339
    iput p1, p0, Lcom/metamoji/video/AmvSlider$Range;->max:F

    return-void
.end method

.method public final setMin(F)V
    .locals 0

    .line 339
    iput p1, p0, Lcom/metamoji/video/AmvSlider$Range;->min:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/metamoji/video/AmvSlider$Range;->min:F

    iget v1, p0, Lcom/metamoji/video/AmvSlider$Range;->max:F

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Range(min="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", max="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
