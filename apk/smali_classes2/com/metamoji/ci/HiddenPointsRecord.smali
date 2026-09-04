.class Lcom/metamoji/ci/HiddenPointsRecord;
.super Ljava/lang/Object;
.source "HiddenPointsRecord.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field magic:B

.field offset:F

.field param:F

.field point1:Landroid/graphics/PointF;

.field point2:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p2, 0x1

    .line 31
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, p0, Lcom/metamoji/ci/HiddenPointsRecord;->magic:B

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ci/HiddenPointsRecord;->bytesToFloat(Ljava/util/List;I)F

    move-result v0

    add-int/lit8 v1, p2, 0x5

    .line 34
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ci/HiddenPointsRecord;->bytesToFloat(Ljava/util/List;I)F

    move-result v1

    add-int/lit8 v2, p2, 0x9

    .line 35
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, p0, Lcom/metamoji/ci/HiddenPointsRecord;->point1:Landroid/graphics/PointF;

    .line 36
    invoke-virtual {p0, p1, v2}, Lcom/metamoji/ci/HiddenPointsRecord;->bytesToFloat(Ljava/util/List;I)F

    move-result v0

    add-int/lit8 v1, p2, 0xd

    .line 37
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ci/HiddenPointsRecord;->bytesToFloat(Ljava/util/List;I)F

    move-result v1

    add-int/lit8 v2, p2, 0x11

    .line 38
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, p0, Lcom/metamoji/ci/HiddenPointsRecord;->point2:Landroid/graphics/PointF;

    .line 39
    invoke-virtual {p0, p1, v2}, Lcom/metamoji/ci/HiddenPointsRecord;->bytesToFloat(Ljava/util/List;I)F

    move-result v0

    iput v0, p0, Lcom/metamoji/ci/HiddenPointsRecord;->param:F

    add-int/lit8 p2, p2, 0x15

    .line 40
    iget-byte v0, p0, Lcom/metamoji/ci/HiddenPointsRecord;->magic:B

    invoke-static {v0}, Lcom/metamoji/ci/CI;->isHiddenOldRecord(B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ci/HiddenPointsRecord;->bytesToFloat(Ljava/util/List;I)F

    move-result p1

    iput p1, p0, Lcom/metamoji/ci/HiddenPointsRecord;->offset:F

    :cond_0
    return-void
.end method


# virtual methods
.method bytesToFloat(Ljava/util/List;I)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;I)F"
        }
    .end annotation

    add-int/lit8 v0, p2, 0x3

    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x2

    .line 24
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    .line 25
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 26
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 27
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method floatToBytes(FLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    int-to-byte v0, p1

    .line 47
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    .line 48
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    .line 49
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 50
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method isRegalMagic(B)Z
    .locals 1

    .line 18
    invoke-static {p1}, Lcom/metamoji/ci/CI;->isHiddenHeadRecord(B)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/metamoji/ci/CI;->isHiddenTailRecord(B)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method toBytes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-byte v0, p0, Lcom/metamoji/ci/HiddenPointsRecord;->magic:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/metamoji/ci/HiddenPointsRecord;->point1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ci/HiddenPointsRecord;->floatToBytes(FLjava/util/List;)V

    .line 56
    iget-object v0, p0, Lcom/metamoji/ci/HiddenPointsRecord;->point1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ci/HiddenPointsRecord;->floatToBytes(FLjava/util/List;)V

    .line 57
    iget-object v0, p0, Lcom/metamoji/ci/HiddenPointsRecord;->point2:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ci/HiddenPointsRecord;->floatToBytes(FLjava/util/List;)V

    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ci/HiddenPointsRecord;->floatToBytes(FLjava/util/List;)V

    goto :goto_0

    .line 61
    :cond_0
    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ci/HiddenPointsRecord;->floatToBytes(FLjava/util/List;)V

    .line 62
    iget-object v0, p0, Lcom/metamoji/ci/HiddenPointsRecord;->point2:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ci/HiddenPointsRecord;->floatToBytes(FLjava/util/List;)V

    .line 64
    :goto_0
    iget v0, p0, Lcom/metamoji/ci/HiddenPointsRecord;->param:F

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ci/HiddenPointsRecord;->floatToBytes(FLjava/util/List;)V

    .line 65
    iget-byte v0, p0, Lcom/metamoji/ci/HiddenPointsRecord;->magic:B

    invoke-static {v0}, Lcom/metamoji/ci/CI;->isHiddenOldRecord(B)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/metamoji/ci/HiddenPointsRecord;->offset:F

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ci/HiddenPointsRecord;->floatToBytes(FLjava/util/List;)V

    :cond_1
    return-void
.end method
