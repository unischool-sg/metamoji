.class final enum Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;
.super Ljava/lang/Enum;
.source "LaserPointerCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/LaserPointerCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DrOvPointerPhase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

.field public static final enum BEGIN:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

.field public static final enum CANCEL:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

.field public static final enum END:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

.field public static final enum LINE_TO_POINT:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

.field private static final MAP:[Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

.field public static final enum MOVE_TO_POINT:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

.field public static final enum QUAD_CURVE_TO_POINT:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

.field public static final enum UNKNOWN:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;
    .locals 7

    .line 88
    sget-object v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->BEGIN:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    sget-object v1, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->MOVE_TO_POINT:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    sget-object v2, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->LINE_TO_POINT:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    sget-object v3, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->QUAD_CURVE_TO_POINT:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    sget-object v4, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->END:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    sget-object v5, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->CANCEL:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    sget-object v6, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->UNKNOWN:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    filled-new-array/range {v0 .. v6}, [Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 89
    new-instance v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    const-string v1, "BEGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->BEGIN:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    .line 90
    new-instance v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    const-string v1, "MOVE_TO_POINT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->MOVE_TO_POINT:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    .line 91
    new-instance v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    const-string v1, "LINE_TO_POINT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->LINE_TO_POINT:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    .line 92
    new-instance v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    const-string v1, "QUAD_CURVE_TO_POINT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->QUAD_CURVE_TO_POINT:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    .line 93
    new-instance v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    const-string v1, "END"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->END:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    .line 94
    new-instance v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    const-string v1, "CANCEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->CANCEL:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    .line 95
    new-instance v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->UNKNOWN:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    .line 88
    invoke-static {}, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->$values()[Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->$VALUES:[Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    .line 101
    invoke-static {}, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->values()[Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->MAP:[Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

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

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;
    .locals 2

    if-ltz p0, :cond_1

    .line 104
    sget-object v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->MAP:[Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    aget-object p0, v0, p0

    return-object p0

    .line 105
    :cond_1
    :goto_0
    sget-object p0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->UNKNOWN:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 88
    const-class v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;
    .locals 1

    .line 88
    sget-object v0, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->$VALUES:[Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    invoke-virtual {v0}, [Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->ordinal()I

    move-result v0

    return v0
.end method
