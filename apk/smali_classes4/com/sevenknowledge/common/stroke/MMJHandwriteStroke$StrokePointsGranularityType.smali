.class public final enum Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;
.super Ljava/lang/Enum;
.source "MMJHandwriteStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StrokePointsGranularityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

.field public static final enum FDI_HIGH:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

.field public static final enum RAW:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;
    .locals 2

    .line 55
    sget-object v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->RAW:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    sget-object v1, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->FDI_HIGH:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    filled-new-array {v0, v1}, [Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 56
    new-instance v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    const-string v1, "RAW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->RAW:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    .line 57
    new-instance v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    const/4 v1, 0x1

    const/16 v2, 0x12

    const-string v3, "FDI_HIGH"

    invoke-direct {v0, v3, v1, v2}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->FDI_HIGH:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    .line 55
    invoke-static {}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->$values()[Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    move-result-object v0

    sput-object v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->$VALUES:[Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->value:I

    return-void
.end method

.method public static createByValue(I)Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;
    .locals 5

    .line 63
    invoke-static {}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->values()[Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 64
    invoke-virtual {v3}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    const-class v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    return-object p0
.end method

.method public static values()[Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;
    .locals 1

    .line 55
    sget-object v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->$VALUES:[Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    invoke-virtual {v0}, [Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->value:I

    return v0
.end method
