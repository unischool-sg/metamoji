.class public Lcom/metamoji/un/flip/UnFlipUnitUtil;
.super Ljava/lang/Object;
.source "UnFlipUnitUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colorFromString(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x4

    .line 14
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x6

    .line 15
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v5, 0x8

    .line 16
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 17
    invoke-static {v0, v1, v3, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static darkerColorForColor(I)I
    .locals 4

    .line 61
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 62
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 63
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 64
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    add-int/lit8 v0, v0, -0x33

    const/4 v3, 0x0

    .line 66
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, -0x33

    .line 67
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v2, -0x33

    .line 68
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 70
    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static lighterColorForColor(I)I
    .locals 4

    .line 42
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 43
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 44
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 45
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    add-int/lit8 v0, v0, 0x33

    const/16 v3, 0xff

    .line 47
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x33

    .line 48
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x33

    .line 49
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 51
    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static stringFromColor(I)Ljava/lang/String;
    .locals 3

    .line 28
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 29
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 30
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 31
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x%02x%02x%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
