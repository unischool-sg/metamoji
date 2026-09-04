.class public final Lio/github/toyota32k/viewex/library/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/viewex/library/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static CircularProgressBar:[I = null

.field public static CircularProgressBar_insideRingColor:I = 0x0

.field public static CircularProgressBar_progressColor:I = 0x1

.field public static CircularProgressBar_ringBaseColor:I = 0x2

.field public static CircularProgressBar_ringThicknessRatio:I = 0x3

.field public static CircularProgressBar_roundedCorners:I = 0x4

.field public static CircularProgressBar_showText:I = 0x5

.field public static CircularProgressBar_textColor:I = 0x6

.field public static CircularProgressBar_useAnimation:I = 0x7

.field public static FrameLayoutEx:[I = null

.field public static FrameLayoutEx_maxHeight:I = 0x0

.field public static FrameLayoutEx_maxWidth:I = 0x1

.field public static Viewbox:[I

.field public static Viewbox_expandable:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/github/toyota32k/viewex/library/R$styleable;->CircularProgressBar:[I

    const v0, 0x7f040402

    const v1, 0x7f040407

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lio/github/toyota32k/viewex/library/R$styleable;->FrameLayoutEx:[I

    const v0, 0x7f040237

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lio/github/toyota32k/viewex/library/R$styleable;->Viewbox:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040300
        0x7f0404af
        0x7f0404e8
        0x7f0404e9
        0x7f0404ee
        0x7f04052e
        0x7f0405f4
        0x7f040680
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
