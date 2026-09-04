.class public final Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;
.super Ljava/lang/Object;
.source "UtManipulationAgent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/gesture/UtManipulationAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScrollAndScaleState"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0014\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014H\u00d6\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0016H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;",
        "",
        "translationX",
        "",
        "translationY",
        "scale",
        "<init>",
        "(FFF)V",
        "getTranslationX",
        "()F",
        "getTranslationY",
        "getScale",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final scale:F

.field private final translationX:F

.field private final translationY:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->translationX:F

    .line 390
    iput p2, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->translationY:F

    .line 391
    iput p3, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->scale:F

    return-void
.end method

.method public static synthetic copy$default(Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;FFFILjava/lang/Object;)Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->translationX:F

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->translationY:F

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->scale:F

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->copy(FFF)Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->translationX:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->translationY:F

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->scale:F

    return v0
.end method

.method public final copy(FFF)Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;
    .locals 1

    new-instance v0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;

    invoke-direct {v0, p1, p2, p3}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;-><init>(FFF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;

    iget v1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->translationX:F

    iget v3, p1, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->translationX:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->translationY:F

    iget v3, p1, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->translationY:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->scale:F

    iget p1, p1, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->scale:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getScale()F
    .locals 1

    .line 391
    iget v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->scale:F

    return v0
.end method

.method public final getTranslationX()F
    .locals 1

    .line 389
    iget v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->translationX:F

    return v0
.end method

.method public final getTranslationY()F
    .locals 1

    .line 390
    iget v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->translationY:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->translationX:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->translationY:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->scale:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->translationX:F

    iget v1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->translationY:F

    iget v2, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->scale:F

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ScrollAndScaleState(translationX="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", translationY="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
