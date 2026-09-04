.class public final enum Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;
.super Ljava/lang/Enum;
.source "StrokeStylePropertyFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

.field public static final enum FountainProps:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

.field public static final enum Ink:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

.field public static final enum LineCalliAngle:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

.field public static final enum LineCalliPaintType:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

.field public static final enum LineCalliRate:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

.field public static final enum LineColor:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

.field public static final enum LineDash:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

.field public static final enum LineWidthRatio:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

.field public static final enum LineWidthType:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

.field public static final enum PenType:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;
    .locals 10

    .line 3
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineColor:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineWidthRatio:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineWidthType:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineCalliAngle:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    sget-object v4, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineCalliRate:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    sget-object v5, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineCalliPaintType:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    sget-object v6, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineDash:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    sget-object v7, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->Ink:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    sget-object v8, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->PenType:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    sget-object v9, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->FountainProps:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    filled-new-array/range {v0 .. v9}, [Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    const-string v1, "LineColor"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineColor:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    .line 5
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    const-string v1, "LineWidthRatio"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineWidthRatio:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    .line 6
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    const-string v1, "LineWidthType"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineWidthType:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    .line 7
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    const-string v1, "LineCalliAngle"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineCalliAngle:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    .line 8
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    const-string v1, "LineCalliRate"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineCalliRate:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    .line 9
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    const-string v1, "LineCalliPaintType"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineCalliPaintType:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    .line 10
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    const-string v1, "LineDash"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->LineDash:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    .line 11
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    const-string v1, "Ink"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->Ink:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    .line 12
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    const-string v1, "PenType"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->PenType:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    .line 13
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    const-string v1, "FountainProps"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->FountainProps:Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    .line 3
    invoke-static {}, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->$values()[Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->$VALUES:[Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 3
    const-class v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;
    .locals 1

    .line 3
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->$VALUES:[Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-virtual {v0}, [Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    return-object v0
.end method
