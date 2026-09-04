.class public Lcom/metamoji/mazec/stroke/StrokeConstants;
.super Ljava/lang/Object;
.source "StrokeConstants.java"


# static fields
.field public static final CALLIPAINTTYPE_DEFAULT:I = 0x0

.field public static final DEFAULT_CNV_STROKE_COLOR:I

.field public static final DEFAULT_STROKE_COLOR:I

.field public static final DEFAULT_STROKE_LINEWIDTHRATIO:F = 0.4f

.field public static final DEFAULT_STROKE_LINEWIDTHTYPE:I = 0x0

.field public static final GRANULARITY_CI:I = 0x40

.field public static final GRANULARITY_FDI_HIGH:I = 0x12

.field public static final GRANULARITY_RAW:I = 0x0

.field public static final INKTYPE_CUBIC2SURFACE:I = 0x3

.field public static final INKTYPE_GRADIATION:I = 0x2

.field public static final INKTYPE_PLAIN:I = 0x1

.field public static final LINECOLOR_BLACK:I

.field public static final LINECOLOR_BLUE:I

.field public static final LINECOLOR_GRAY:I

.field public static final LINECOLOR_GREEN:I

.field public static final LINECOLOR_PINK:I

.field public static final LINECOLOR_RED:I

.field public static final LINECOLOR_WHITE:I

.field public static final LINECOLOR_YELLOW:I

.field public static final LINEWIDTHTYPE_BOLD:I = 0x3

.field public static final LINEWIDTHTYPE_NORMAL:I = 0x0

.field public static final LINEWIDTHTYPE_SEMIBOLD:I = 0x2

.field public static final LINEWIDTHTYPE_THIN:I = 0x1

.field public static final PENTYPE_7NOTES1AGE:I = 0x1

.field public static final PENTYPE_CALLIGRAPHY:I = 0x3

.field public static final PENTYPE_FOUNTAIN:I = 0x4

.field public static final PENTYPE_STANDARD:I = 0x2

.field public static final RectNull:Landroid/graphics/RectF;

.field public static final SAMPLING_DELTA:F = 1.0E-4f

.field public static final SAMPLING_DELTA_FOUNTAIN:F = 0.75f

.field public static final STANDARD_CHARACTER_HEIGHT:F = 12.0f


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    .line 27
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sput v1, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_BLACK:I

    const/16 v2, 0x80

    .line 28
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    sput v2, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_GRAY:I

    const/16 v2, 0xff

    .line 29
    invoke-static {v2, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    sput v3, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_RED:I

    .line 30
    invoke-static {v0, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    sput v3, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_BLUE:I

    .line 31
    invoke-static {v0, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    sput v3, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_GREEN:I

    const/16 v3, 0xcc

    const/16 v4, 0xaa

    .line 32
    invoke-static {v3, v4, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_YELLOW:I

    .line 33
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_WHITE:I

    const/16 v0, 0x25

    const/16 v3, 0xbb

    .line 34
    invoke-static {v2, v0, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_PINK:I

    .line 43
    sput v1, Lcom/metamoji/mazec/stroke/StrokeConstants;->DEFAULT_STROKE_COLOR:I

    .line 44
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v3, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v0, v3, :cond_0

    const/16 v0, 0x8c

    const/16 v1, 0xe6

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    :cond_0
    sput v1, Lcom/metamoji/mazec/stroke/StrokeConstants;->DEFAULT_CNV_STROKE_COLOR:I

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/metamoji/mazec/stroke/StrokeConstants;->RectNull:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
