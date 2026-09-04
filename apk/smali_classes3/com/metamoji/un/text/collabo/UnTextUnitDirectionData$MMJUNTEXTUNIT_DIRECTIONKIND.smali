.class final enum Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;
.super Ljava/lang/Enum;
.source "UnTextUnitDirectionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MMJUNTEXTUNIT_DIRECTIONKIND"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;

.field public static final enum MMJUNTEXTUNIT_DIRECTIONKIND_NONE:Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;


# instance fields
.field private _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;
    .locals 1

    .line 14
    sget-object v0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;->MMJUNTEXTUNIT_DIRECTIONKIND_NONE:Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;

    filled-new-array {v0}, [Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;

    const-string v1, "MMJUNTEXTUNIT_DIRECTIONKIND_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;->MMJUNTEXTUNIT_DIRECTIONKIND_NONE:Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;

    .line 14
    invoke-static {}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;->$values()[Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;->$VALUES:[Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;->_value:I

    return-void
.end method

.method public static parseInt(I)Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;
    .locals 5

    .line 28
    invoke-static {}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;->values()[Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 29
    invoke-virtual {v3}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_1
    sget-object p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;->MMJUNTEXTUNIT_DIRECTIONKIND_NONE:Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 14
    const-class v0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;
    .locals 1

    .line 14
    sget-object v0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;->$VALUES:[Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;->_value:I

    return v0
.end method
