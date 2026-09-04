.class public Lcom/metamoji/nt/share/NtPenDefs$PENSTYLE;
.super Ljava/lang/Object;
.source "NtPenDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/share/NtPenDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PENSTYLE"
.end annotation


# static fields
.field public static final DEFAULT_LINEALPHA:F = 1.0f

.field public static final DEFAULT_LINECOLOR:I

.field public static final DEFAULT_LINEDASH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_LINEWIDTH:F = 1.0f

.field public static final DEFAULT_TYPE:Ljava/lang/String; = "standard"

.field public static final PROPERTY_ARROW_KINDS:Ljava/lang/String; = "ArrowKinds"

.field public static final PROPERTY_ARROW_TYPE:Ljava/lang/String; = "ArrowType"

.field public static final PROPERTY_FILL_ALPHA:Ljava/lang/String; = "fillAlpha"

.field public static final PROPERTY_FILL_COLORS:Ljava/lang/String; = "fillColors"

.field public static final PROPERTY_FILL_TYPE:Ljava/lang/String; = "fillType"

.field public static final PROPERTY_FOUNTAIN_BEGIN_RUN:Ljava/lang/String; = "beginRun"

.field public static final PROPERTY_FOUNTAIN_BEGIN_RUN_DELTA:Ljava/lang/String; = "beginRunDelta"

.field public static final PROPERTY_FOUNTAIN_BEGIN_RUN_RATE:Ljava/lang/String; = "beginRunRate"

.field public static final PROPERTY_FOUNTAIN_BEGIN_STAY:Ljava/lang/String; = "beginStay"

.field public static final PROPERTY_FOUNTAIN_BEGIN_STAY_DELTA:Ljava/lang/String; = "beginStayDelta"

.field public static final PROPERTY_FOUNTAIN_BEGIN_STAY_RATE:Ljava/lang/String; = "beginStayRate"

.field public static final PROPERTY_FOUNTAIN_END_RUN:Ljava/lang/String; = "endRun"

.field public static final PROPERTY_FOUNTAIN_END_RUN_DELTA:Ljava/lang/String; = "endRunDelta"

.field public static final PROPERTY_FOUNTAIN_END_RUN_RATE:Ljava/lang/String; = "endRunRate"

.field public static final PROPERTY_FOUNTAIN_END_STAY:Ljava/lang/String; = "endStay"

.field public static final PROPERTY_FOUNTAIN_END_STAY_DELTA:Ljava/lang/String; = "endStayDelta"

.field public static final PROPERTY_FOUNTAIN_END_STAY_RATE:Ljava/lang/String; = "endStayRate"

.field public static final PROPERTY_FOUNTAIN_TAIL_RUN:Ljava/lang/String; = "tailRun"

.field public static final PROPERTY_FOUNTAIN_TAIL_RUN_DELTA:Ljava/lang/String; = "tailRunDelta"

.field public static final PROPERTY_FOUNTAIN_TAIL_RUN_RATE:Ljava/lang/String; = "tailRunRate"

.field public static final PROPERTY_FOUNTAIN_TAIL_STAY:Ljava/lang/String; = "tailStay"

.field public static final PROPERTY_FOUNTAIN_TAIL_STAY_DELTA:Ljava/lang/String; = "tailStayDelta"

.field public static final PROPERTY_FOUNTAIN_TAIL_STAY_RATE:Ljava/lang/String; = "tailStayRate"

.field public static final PROPERTY_FOUNTAIN_TRANS:Ljava/lang/String; = "trans"

.field public static final PROPERTY_HAS_ARROW:Ljava/lang/String; = "hasArrow"

.field public static final PROPERTY_HAS_FILL:Ljava/lang/String; = "hasFill"

.field public static final PROPERTY_LINEALPHA:Ljava/lang/String; = "lineAlpha"

.field public static final PROPERTY_LINECOLOR:Ljava/lang/String; = "lineColor"

.field public static final PROPERTY_LINEDASH:Ljava/lang/String; = "lineDash"

.field public static final PROPERTY_LINEWIDTH:Ljava/lang/String; = "lineWidth"

.field public static final PROPERTY_PENANGLE:Ljava/lang/String; = "penAngle"

.field public static final PROPERTY_PENRATE:Ljava/lang/String; = "penRate"

.field public static final TYPE_CALLIGRAPHY:Ljava/lang/String; = "calligraphy"

.field public static final TYPE_FOUNTAINPEN:Ljava/lang/String; = "fountainpen"

.field public static final TYPE_MARKERPEN:Ljava/lang/String; = "markerpen"

.field public static final TYPE_SHAPEMARKERPEN:Ljava/lang/String; = "shapemarkerpen"

.field public static final TYPE_SHAPEPEN:Ljava/lang/String; = "shapepen"

.field public static final TYPE_STANDARD:Ljava/lang/String; = "standard"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 69
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/nt/share/NtPenDefs$PENSTYLE;->DEFAULT_LINECOLOR:I

    const/4 v0, 0x0

    .line 70
    sput-object v0, Lcom/metamoji/nt/share/NtPenDefs$PENSTYLE;->DEFAULT_LINEDASH:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
