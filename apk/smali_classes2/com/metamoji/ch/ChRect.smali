.class public final Lcom/metamoji/ch/ChRect;
.super Ljava/lang/Object;
.source "ChRect.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ch/ChRect$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 =2\u00020\u0001:\u0001=B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u0019\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0007\u0010\u000cB\u0019\u0008\u0016\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0007\u0010\u0010B\u0011\u0008\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0012B\u0011\u0008\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0007\u0010\u0014J\u000e\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0000J\u000e\u0010.\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u0000J\u0006\u0010/\u001a\u00020\u0000J\u0006\u00100\u001a\u00020\nJ\u0006\u00101\u001a\u00020\u000fJ\u0006\u00102\u001a\u00020\u0013J\t\u00103\u001a\u00020\u0003H\u00c6\u0003J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\u0003H\u00c6\u0003J\t\u00106\u001a\u00020\u0003H\u00c6\u0003J1\u00107\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u00108\u001a\u00020,2\u0008\u0010-\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00109\u001a\u00020:H\u00d6\u0001J\t\u0010;\u001a\u00020<H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016\"\u0004\u0008\u001a\u0010\u0018R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0016\"\u0004\u0008\u001c\u0010\u0018R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0016\"\u0004\u0008\u001e\u0010\u0018R\u0011\u0010\u001f\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u0016R\u0011\u0010!\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u0016R\u0011\u0010#\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u0016R\u0011\u0010%\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u0016R\u0011\u0010\'\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\u0016R\u0011\u0010)\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u0016\u00a8\u0006>"
    }
    d2 = {
        "Lcom/metamoji/ch/ChRect;",
        "",
        "x",
        "",
        "y",
        "width",
        "height",
        "<init>",
        "(DDDD)V",
        "point1",
        "Lcom/metamoji/ch/ChPoint;",
        "point2",
        "(Lcom/metamoji/ch/ChPoint;Lcom/metamoji/ch/ChPoint;)V",
        "point",
        "size",
        "Lcom/metamoji/ch/ChSize;",
        "(Lcom/metamoji/ch/ChPoint;Lcom/metamoji/ch/ChSize;)V",
        "rect",
        "(Lcom/metamoji/ch/ChRect;)V",
        "Landroid/graphics/RectF;",
        "(Landroid/graphics/RectF;)V",
        "getX",
        "()D",
        "setX",
        "(D)V",
        "getY",
        "setY",
        "getWidth",
        "setWidth",
        "getHeight",
        "setHeight",
        "minX",
        "getMinX",
        "minY",
        "getMinY",
        "maxX",
        "getMaxX",
        "maxY",
        "getMaxY",
        "midX",
        "getMidX",
        "midY",
        "getMidY",
        "intersects",
        "",
        "other",
        "intersection",
        "standardized",
        "getOrigin",
        "getSize",
        "toRectF",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/ch/ChRect$Companion;


# instance fields
.field private height:D

.field private width:D

.field private x:D

.field private y:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ch/ChRect$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ch/ChRect$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ch/ChRect;->Companion:Lcom/metamoji/ch/ChRect$Companion;

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/metamoji/ch/ChRect;->x:D

    iput-wide p3, p0, Lcom/metamoji/ch/ChRect;->y:D

    iput-wide p5, p0, Lcom/metamoji/ch/ChRect;->width:D

    iput-wide p7, p0, Lcom/metamoji/ch/ChRect;->height:D

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 10

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-double v4, v0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    float-to-double v6, v0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    float-to-double v8, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ch/ChPoint;Lcom/metamoji/ch/ChPoint;)V
    .locals 10

    const-string v0, "point1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v6

    sub-double v6, v0, v6

    invoke-virtual {p2}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide p1

    sub-double v8, v0, p1

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ch/ChPoint;Lcom/metamoji/ch/ChSize;)V
    .locals 10

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v6

    invoke-virtual {p2}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v8

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ch/ChRect;)V
    .locals 10

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-wide v2, p1, Lcom/metamoji/ch/ChRect;->x:D

    iget-wide v4, p1, Lcom/metamoji/ch/ChRect;->y:D

    iget-wide v6, p1, Lcom/metamoji/ch/ChRect;->width:D

    iget-wide v8, p1, Lcom/metamoji/ch/ChRect;->height:D

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/ch/ChRect;DDDDILjava/lang/Object;)Lcom/metamoji/ch/ChRect;
    .locals 9

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    iget-wide p1, p0, Lcom/metamoji/ch/ChRect;->x:D

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p9, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/metamoji/ch/ChRect;->y:D

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p9, 0x4

    if-eqz p1, :cond_2

    iget-wide p5, p0, Lcom/metamoji/ch/ChRect;->width:D

    :cond_2
    move-wide v5, p5

    and-int/lit8 p1, p9, 0x8

    if-eqz p1, :cond_3

    iget-wide p1, p0, Lcom/metamoji/ch/ChRect;->height:D

    move-wide v7, p1

    goto :goto_0

    :cond_3
    move-wide/from16 v7, p7

    :goto_0
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/ch/ChRect;->copy(DDDD)Lcom/metamoji/ch/ChRect;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->x:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->y:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->width:D

    return-wide v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->height:D

    return-wide v0
.end method

.method public final copy(DDDD)Lcom/metamoji/ch/ChRect;
    .locals 9

    new-instance v0, Lcom/metamoji/ch/ChRect;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/ch/ChRect;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/ch/ChRect;

    iget-wide v3, p0, Lcom/metamoji/ch/ChRect;->x:D

    iget-wide v5, p1, Lcom/metamoji/ch/ChRect;->x:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/metamoji/ch/ChRect;->y:D

    iget-wide v5, p1, Lcom/metamoji/ch/ChRect;->y:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/metamoji/ch/ChRect;->width:D

    iget-wide v5, p1, Lcom/metamoji/ch/ChRect;->width:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/metamoji/ch/ChRect;->height:D

    iget-wide v5, p1, Lcom/metamoji/ch/ChRect;->height:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getHeight()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->height:D

    return-wide v0
.end method

.method public final getMaxX()D
    .locals 4

    .line 34
    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->x:D

    iget-wide v2, p0, Lcom/metamoji/ch/ChRect;->width:D

    add-double/2addr v2, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getMaxY()D
    .locals 4

    .line 35
    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->y:D

    iget-wide v2, p0, Lcom/metamoji/ch/ChRect;->height:D

    add-double/2addr v2, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getMidX()D
    .locals 6

    .line 37
    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->x:D

    iget-wide v2, p0, Lcom/metamoji/ch/ChRect;->width:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final getMidY()D
    .locals 6

    .line 38
    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->y:D

    iget-wide v2, p0, Lcom/metamoji/ch/ChRect;->height:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final getMinX()D
    .locals 4

    .line 31
    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->x:D

    iget-wide v2, p0, Lcom/metamoji/ch/ChRect;->width:D

    add-double/2addr v2, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getMinY()D
    .locals 4

    .line 32
    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->y:D

    iget-wide v2, p0, Lcom/metamoji/ch/ChRect;->height:D

    add-double/2addr v2, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getOrigin()Lcom/metamoji/ch/ChPoint;
    .locals 5

    .line 120
    new-instance v0, Lcom/metamoji/ch/ChPoint;

    iget-wide v1, p0, Lcom/metamoji/ch/ChRect;->x:D

    iget-wide v3, p0, Lcom/metamoji/ch/ChRect;->y:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    return-object v0
.end method

.method public final getSize()Lcom/metamoji/ch/ChSize;
    .locals 5

    .line 132
    new-instance v0, Lcom/metamoji/ch/ChSize;

    iget-wide v1, p0, Lcom/metamoji/ch/ChRect;->width:D

    iget-wide v3, p0, Lcom/metamoji/ch/ChRect;->height:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/metamoji/ch/ChSize;-><init>(DD)V

    return-object v0
.end method

.method public final getWidth()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->width:D

    return-wide v0
.end method

.method public final getX()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->x:D

    return-wide v0
.end method

.method public final getY()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->y:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/metamoji/ch/ChRect;->y:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/metamoji/ch/ChRect;->width:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/metamoji/ch/ChRect;->height:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final intersection(Lcom/metamoji/ch/ChRect;)Lcom/metamoji/ch/ChRect;
    .locals 26

    const-string v0, "other"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ch/ChRect;->getMinX()D

    move-result-wide v2

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v4

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ch/ChRect;->getMaxX()D

    move-result-wide v6

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v8

    .line 65
    invoke-virtual {v1}, Lcom/metamoji/ch/ChRect;->getMinX()D

    move-result-wide v10

    .line 66
    invoke-virtual {v1}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v12

    .line 67
    invoke-virtual {v1}, Lcom/metamoji/ch/ChRect;->getMaxX()D

    move-result-wide v14

    .line 68
    invoke-virtual {v1}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v0

    cmpg-double v16, v2, v14

    if-gez v16, :cond_4

    cmpg-double v16, v10, v6

    if-gez v16, :cond_4

    cmpg-double v16, v4, v0

    if-gez v16, :cond_4

    cmpg-double v16, v12, v8

    if-gez v16, :cond_4

    cmpg-double v16, v2, v10

    if-gez v16, :cond_0

    move-wide/from16 v18, v10

    goto :goto_0

    :cond_0
    move-wide/from16 v18, v2

    :goto_0
    cmpg-double v2, v4, v12

    if-gez v2, :cond_1

    move-wide/from16 v20, v12

    goto :goto_1

    :cond_1
    move-wide/from16 v20, v4

    :goto_1
    cmpl-double v2, v6, v14

    if-lez v2, :cond_2

    move-wide v6, v14

    :cond_2
    cmpl-double v2, v8, v0

    if-lez v2, :cond_3

    move-wide v8, v0

    .line 83
    :cond_3
    new-instance v17, Lcom/metamoji/ch/ChRect;

    sub-double v22, v6, v18

    sub-double v24, v8, v20

    invoke-direct/range {v17 .. v25}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    return-object v17

    .line 85
    :cond_4
    sget-object v0, Lcom/metamoji/ch/ChRect;->Companion:Lcom/metamoji/ch/ChRect$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect$Companion;->getNullRect()Lcom/metamoji/ch/ChRect;

    move-result-object v0

    return-object v0
.end method

.method public final intersects(Lcom/metamoji/ch/ChRect;)Z
    .locals 16

    const-string v0, "other"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ch/ChRect;->getMinX()D

    move-result-wide v2

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v4

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ch/ChRect;->getMaxX()D

    move-result-wide v6

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v8

    .line 49
    invoke-virtual {v1}, Lcom/metamoji/ch/ChRect;->getMinX()D

    move-result-wide v10

    .line 50
    invoke-virtual {v1}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v12

    .line 51
    invoke-virtual {v1}, Lcom/metamoji/ch/ChRect;->getMaxX()D

    move-result-wide v14

    .line 52
    invoke-virtual {v1}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v0

    cmpg-double v2, v2, v14

    if-gez v2, :cond_0

    cmpg-double v2, v10, v6

    if-gez v2, :cond_0

    cmpg-double v0, v4, v0

    if-gez v0, :cond_0

    cmpg-double v0, v12, v8

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setHeight(D)V
    .locals 0

    .line 11
    iput-wide p1, p0, Lcom/metamoji/ch/ChRect;->height:D

    return-void
.end method

.method public final setWidth(D)V
    .locals 0

    .line 11
    iput-wide p1, p0, Lcom/metamoji/ch/ChRect;->width:D

    return-void
.end method

.method public final setX(D)V
    .locals 0

    .line 11
    iput-wide p1, p0, Lcom/metamoji/ch/ChRect;->x:D

    return-void
.end method

.method public final setY(D)V
    .locals 0

    .line 11
    iput-wide p1, p0, Lcom/metamoji/ch/ChRect;->y:D

    return-void
.end method

.method public final standardized()Lcom/metamoji/ch/ChRect;
    .locals 12

    .line 92
    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->y:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->y:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->width:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->width:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->height:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->height:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->width:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->height:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ch/ChRect;->getMinX()D

    move-result-wide v2

    .line 105
    invoke-virtual {p0}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v4

    .line 106
    invoke-virtual {p0}, Lcom/metamoji/ch/ChRect;->getMaxX()D

    move-result-wide v0

    .line 107
    invoke-virtual {p0}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v6

    move-wide v8, v0

    .line 108
    new-instance v1, Lcom/metamoji/ch/ChRect;

    sub-double/2addr v8, v2

    sub-double/2addr v6, v4

    move-wide v10, v8

    move-wide v8, v6

    move-wide v6, v10

    invoke-direct/range {v1 .. v9}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    return-object v1

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final toRectF()Landroid/graphics/RectF;
    .locals 6

    .line 136
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/metamoji/ch/ChRect;->getMinX()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p0}, Lcom/metamoji/ch/ChRect;->getMaxX()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p0}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-wide v0, p0, Lcom/metamoji/ch/ChRect;->x:D

    iget-wide v2, p0, Lcom/metamoji/ch/ChRect;->y:D

    iget-wide v4, p0, Lcom/metamoji/ch/ChRect;->width:D

    iget-wide v6, p0, Lcom/metamoji/ch/ChRect;->height:D

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ChRect(x="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
