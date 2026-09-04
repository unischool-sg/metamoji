.class public final Lcom/metamoji/video/MuSize;
.super Ljava/lang/Object;
.source "AmvUtils.kt"

# interfaces
.implements Lcom/metamoji/video/ImSize;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0007B\u0011\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\tB\u0011\u0008\u0016\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0005\u0010\u000cB\u0011\u0008\u0016\u0012\u0006\u0010\n\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0005\u0010\u000eJ\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\u0000J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003J\u0006\u0010\u0017\u001a\u00020\u0015J\u0006\u0010!\u001a\u00020\u0015J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010%\u001a\u00020\u001f2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u00d6\u0003J\t\u0010(\u001a\u00020)H\u00d6\u0001J\t\u0010*\u001a\u00020+H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010\"\u0004\u0008\u0013\u0010\tR\u0014\u0010\u0018\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010 \u00a8\u0006,"
    }
    d2 = {
        "Lcom/metamoji/video/MuSize;",
        "Lcom/metamoji/video/ImSize;",
        "width",
        "",
        "height",
        "<init>",
        "(FF)V",
        "()V",
        "v",
        "(F)V",
        "s",
        "Landroid/util/SizeF;",
        "(Landroid/util/SizeF;)V",
        "Landroid/util/Size;",
        "(Landroid/util/Size;)V",
        "getWidth",
        "()F",
        "setWidth",
        "getHeight",
        "setHeight",
        "copyFrom",
        "",
        "set",
        "rotate",
        "asSizeF",
        "getAsSizeF",
        "()Landroid/util/SizeF;",
        "asSize",
        "getAsSize",
        "()Landroid/util/Size;",
        "isEmpty",
        "",
        "()Z",
        "empty",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "",
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
.field private height:F

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0, v0}, Lcom/metamoji/video/MuSize;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p1}, Lcom/metamoji/video/MuSize;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/metamoji/video/MuSize;->width:F

    iput p2, p0, Lcom/metamoji/video/MuSize;->height:F

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, v0, p1}, Lcom/metamoji/video/MuSize;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(Landroid/util/SizeF;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/metamoji/video/MuSize;-><init>(FF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/video/MuSize;FFILjava/lang/Object;)Lcom/metamoji/video/MuSize;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/metamoji/video/MuSize;->width:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/metamoji/video/MuSize;->height:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/MuSize;->copy(FF)Lcom/metamoji/video/MuSize;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/metamoji/video/MuSize;->width:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/metamoji/video/MuSize;->height:F

    return v0
.end method

.method public final copy(FF)Lcom/metamoji/video/MuSize;
    .locals 1

    new-instance v0, Lcom/metamoji/video/MuSize;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/video/MuSize;-><init>(FF)V

    return-object v0
.end method

.method public final copyFrom(Landroid/util/SizeF;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/video/MuSize;->setWidth(F)V

    .line 46
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/video/MuSize;->setHeight(F)V

    return-void
.end method

.method public final copyFrom(Lcom/metamoji/video/MuSize;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/metamoji/video/MuSize;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/video/MuSize;->setWidth(F)V

    .line 42
    invoke-virtual {p1}, Lcom/metamoji/video/MuSize;->getHeight()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/video/MuSize;->setHeight(F)V

    return-void
.end method

.method public final empty()V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0, v0}, Lcom/metamoji/video/MuSize;->set(FF)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/video/MuSize;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/video/MuSize;

    iget v1, p0, Lcom/metamoji/video/MuSize;->width:F

    iget v3, p1, Lcom/metamoji/video/MuSize;->width:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/metamoji/video/MuSize;->height:F

    iget p1, p1, Lcom/metamoji/video/MuSize;->height:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getAsSize()Landroid/util/Size;
    .locals 3

    .line 63
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Lcom/metamoji/video/MuSize;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/metamoji/video/MuSize;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getAsSizeF()Landroid/util/SizeF;
    .locals 3

    .line 60
    new-instance v0, Landroid/util/SizeF;

    invoke-virtual {p0}, Lcom/metamoji/video/MuSize;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/video/MuSize;->getHeight()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/SizeF;-><init>(FF)V

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/metamoji/video/MuSize;->height:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/metamoji/video/MuSize;->width:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/metamoji/video/MuSize;->width:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/metamoji/video/MuSize;->height:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/metamoji/video/MuSize;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/video/MuSize;->getHeight()F

    move-result v0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final rotate()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/metamoji/video/MuSize;->getWidth()F

    move-result v0

    .line 55
    invoke-virtual {p0}, Lcom/metamoji/video/MuSize;->getHeight()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/metamoji/video/MuSize;->setWidth(F)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/metamoji/video/MuSize;->setHeight(F)V

    return-void
.end method

.method public final set(FF)V
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/metamoji/video/MuSize;->setWidth(F)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/metamoji/video/MuSize;->setHeight(F)V

    return-void
.end method

.method public setHeight(F)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/metamoji/video/MuSize;->height:F

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/metamoji/video/MuSize;->width:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/metamoji/video/MuSize;->width:F

    iget v1, p0, Lcom/metamoji/video/MuSize;->height:F

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MuSize(width="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", height="

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
