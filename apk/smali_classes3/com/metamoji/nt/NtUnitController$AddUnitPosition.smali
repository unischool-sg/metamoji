.class public final enum Lcom/metamoji/nt/NtUnitController$AddUnitPosition;
.super Ljava/lang/Enum;
.source "NtUnitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtUnitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddUnitPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtUnitController$AddUnitPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

.field public static final enum CENTERCENTER:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

.field public static final enum LEFTBOTTOM:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

.field public static final enum LEFTTOP:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

.field public static final enum RIGHTBOTTOM:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

.field public static final enum RIGHTTOP:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;


# instance fields
.field private _intValue:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtUnitController$AddUnitPosition;
    .locals 5

    .line 107
    sget-object v0, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->LEFTTOP:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    sget-object v1, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->LEFTBOTTOM:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    sget-object v2, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->RIGHTTOP:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    sget-object v3, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->RIGHTBOTTOM:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    sget-object v4, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->CENTERCENTER:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 108
    new-instance v0, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    const-string v1, "LEFTTOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->LEFTTOP:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    .line 109
    new-instance v0, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    const-string v1, "LEFTBOTTOM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->LEFTBOTTOM:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    .line 110
    new-instance v0, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    const-string v1, "RIGHTTOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->RIGHTTOP:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    .line 111
    new-instance v0, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    const-string v1, "RIGHTBOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->RIGHTBOTTOM:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    .line 112
    new-instance v0, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    const-string v1, "CENTERCENTER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->CENTERCENTER:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    .line 107
    invoke-static {}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->$values()[Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->$VALUES:[Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

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

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p3, p0, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->_intValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/nt/NtUnitController$AddUnitPosition;
    .locals 5

    .line 125
    invoke-static {}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->values()[Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 126
    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_1
    new-instance p0, Ljava/lang/IncompatibleClassChangeError;

    const-string v0, "cannot cast int to AddUnitPosition"

    invoke-direct {p0, v0}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtUnitController$AddUnitPosition;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 107
    const-class v0, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtUnitController$AddUnitPosition;
    .locals 1

    .line 107
    sget-object v0, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->$VALUES:[Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->_intValue:I

    return v0
.end method
