.class public final Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;
.super Ljava/lang/Object;
.source "HD720VideoStrategy.kt"

# interfaces
.implements Lio/github/toyota32k/media/lib/format/IVideoStrategy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;",
        "Lio/github/toyota32k/media/lib/format/IVideoStrategy;",
        "()V",
        "DEFAULT_I_FRAME_INTERVAL",
        "",
        "MAX_BITRATE",
        "MAX_FRAME_RATE",
        "calcHD720Size",
        "Landroid/util/Size;",
        "width",
        "height",
        "createOutputFormat",
        "Landroid/media/MediaFormat;",
        "inputFormat",
        "libMedia_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final DEFAULT_I_FRAME_INTERVAL:I = 0x1

.field public static final INSTANCE:Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;

.field public static final MAX_BITRATE:I = 0xac1e8

.field public static final MAX_FRAME_RATE:I = 0x1e


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;

    invoke-direct {v0}, Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;-><init>()V

    sput-object v0, Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;->INSTANCE:Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final calcHD720Size(II)Landroid/util/Size;
    .locals 3

    const/high16 v0, 0x44a00000    # 1280.0f

    const/high16 v1, 0x44340000    # 720.0f

    if-le p1, p2, :cond_0

    int-to-float v2, p1

    div-float/2addr v0, v2

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    int-to-float v2, p1

    div-float/2addr v1, v2

    int-to-float v2, p2

    div-float/2addr v0, v2

    .line 19
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    int-to-float p1, p1

    mul-float/2addr p1, v0

    .line 24
    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    int-to-float p2, p2

    mul-float/2addr p2, v0

    .line 25
    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p2

    .line 28
    new-instance v0, Landroid/util/Size;

    rem-int/lit8 v1, p1, 0x4

    sub-int/2addr p1, v1

    rem-int/lit8 v1, p2, 0x2

    sub-int/2addr p2, v1

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public createOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 7

    const-string v0, "inputFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-string v0, "width"

    const/16 v1, 0x500

    invoke-static {p1, v0, v1}, Lio/github/toyota32k/media/lib/format/IStrategyKt;->getInt(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    .line 33
    const-string v1, "height"

    const/16 v2, 0x2d0

    invoke-static {p1, v1, v2}, Lio/github/toyota32k/media/lib/format/IStrategyKt;->getInt(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    .line 34
    invoke-virtual {p0, v0, v1}, Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;->calcHD720Size(II)Landroid/util/Size;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const-string v2, "video/avc"

    invoke-static {v2, v1, v0}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "createVideoFormat(\"video\u2026 size.width, size.height)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const-string v1, "bitrate"

    const v2, 0xac1e8

    invoke-static {p1, v1, v2}, Lio/github/toyota32k/media/lib/format/IStrategyKt;->getInt(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    .line 39
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 42
    :cond_0
    const-string v3, "frame-rate"

    const/16 v4, 0x1e

    invoke-static {p1, v3, v4}, Lio/github/toyota32k/media/lib/format/IStrategyKt;->getInt(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v5

    .line 43
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x1

    .line 45
    const-string v6, "i-frame-interval"

    invoke-static {p1, v6, v5}, Lio/github/toyota32k/media/lib/format/IStrategyKt;->getInt(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result p1

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 49
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {v0, v6, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 51
    const-string p1, "color-format"

    const v1, 0x7f000789

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method
