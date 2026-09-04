.class public final enum Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;
.super Ljava/lang/Enum;
.source "UnBGImageUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/bgimage/UnBGImageUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

.field public static final enum CENTER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

.field public static final enum FIT_TO_PAPER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

.field public static final enum FIT_TO_WHOLE_PAPER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

.field public static final enum NONE:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

.field public static final enum TILED:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;


# instance fields
.field private _intValue:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;
    .locals 5

    .line 64
    sget-object v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->CENTER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    sget-object v1, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->FIT_TO_PAPER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    sget-object v2, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->TILED:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    sget-object v3, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->FIT_TO_WHOLE_PAPER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    sget-object v4, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->NONE:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 65
    new-instance v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    const-string v1, "CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->CENTER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 66
    new-instance v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    const-string v1, "FIT_TO_PAPER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->FIT_TO_PAPER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 67
    new-instance v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    const-string v1, "TILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->TILED:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 68
    new-instance v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    const-string v1, "FIT_TO_WHOLE_PAPER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->FIT_TO_WHOLE_PAPER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 70
    new-instance v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->NONE:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 64
    invoke-static {}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->$values()[Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->$VALUES:[Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

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

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->_intValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;
    .locals 5

    .line 83
    invoke-static {}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->values()[Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 84
    invoke-virtual {v3}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Unknown value of UnBGImageUnit.Style (%d)"

    invoke-static {v0, p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    sget-object p0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->NONE:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 64
    const-class v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;
    .locals 1

    .line 64
    sget-object v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->$VALUES:[Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    invoke-virtual {v0}, [Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->_intValue:I

    return v0
.end method
