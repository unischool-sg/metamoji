.class public final enum Lcom/metamoji/nt/NtDocument$ToolMode;
.super Ljava/lang/Enum;
.source "NtDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToolMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtDocument$ToolMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtDocument$ToolMode;

.field public static final enum ARRANGE:Lcom/metamoji/nt/NtDocument$ToolMode;

.field public static final enum ERASER:Lcom/metamoji/nt/NtDocument$ToolMode;

.field public static final enum INVALID_MODE:Lcom/metamoji/nt/NtDocument$ToolMode;

.field public static final enum NONE:Lcom/metamoji/nt/NtDocument$ToolMode;

.field public static final enum PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

.field public static final enum SELECT:Lcom/metamoji/nt/NtDocument$ToolMode;

.field public static final enum SPREAD:Lcom/metamoji/nt/NtDocument$ToolMode;

.field public static final enum TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;


# instance fields
.field private _intValue:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtDocument$ToolMode;
    .locals 8

    .line 635
    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->NONE:Lcom/metamoji/nt/NtDocument$ToolMode;

    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

    sget-object v2, Lcom/metamoji/nt/NtDocument$ToolMode;->ERASER:Lcom/metamoji/nt/NtDocument$ToolMode;

    sget-object v3, Lcom/metamoji/nt/NtDocument$ToolMode;->SELECT:Lcom/metamoji/nt/NtDocument$ToolMode;

    sget-object v4, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    sget-object v5, Lcom/metamoji/nt/NtDocument$ToolMode;->SPREAD:Lcom/metamoji/nt/NtDocument$ToolMode;

    sget-object v6, Lcom/metamoji/nt/NtDocument$ToolMode;->ARRANGE:Lcom/metamoji/nt/NtDocument$ToolMode;

    sget-object v7, Lcom/metamoji/nt/NtDocument$ToolMode;->INVALID_MODE:Lcom/metamoji/nt/NtDocument$ToolMode;

    filled-new-array/range {v0 .. v7}, [Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 636
    new-instance v0, Lcom/metamoji/nt/NtDocument$ToolMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/nt/NtDocument$ToolMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->NONE:Lcom/metamoji/nt/NtDocument$ToolMode;

    .line 637
    new-instance v0, Lcom/metamoji/nt/NtDocument$ToolMode;

    const-string v1, "PEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/nt/NtDocument$ToolMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

    .line 638
    new-instance v0, Lcom/metamoji/nt/NtDocument$ToolMode;

    const-string v1, "ERASER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/nt/NtDocument$ToolMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->ERASER:Lcom/metamoji/nt/NtDocument$ToolMode;

    .line 639
    new-instance v0, Lcom/metamoji/nt/NtDocument$ToolMode;

    const-string v1, "SELECT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/nt/NtDocument$ToolMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->SELECT:Lcom/metamoji/nt/NtDocument$ToolMode;

    .line 640
    new-instance v0, Lcom/metamoji/nt/NtDocument$ToolMode;

    const-string v1, "TEXT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/nt/NtDocument$ToolMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    .line 641
    new-instance v0, Lcom/metamoji/nt/NtDocument$ToolMode;

    const-string v1, "SPREAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/nt/NtDocument$ToolMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->SPREAD:Lcom/metamoji/nt/NtDocument$ToolMode;

    .line 642
    new-instance v0, Lcom/metamoji/nt/NtDocument$ToolMode;

    const-string v1, "ARRANGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/nt/NtDocument$ToolMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->ARRANGE:Lcom/metamoji/nt/NtDocument$ToolMode;

    .line 644
    new-instance v0, Lcom/metamoji/nt/NtDocument$ToolMode;

    const/4 v1, 0x7

    const/4 v2, -0x1

    const-string v3, "INVALID_MODE"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/nt/NtDocument$ToolMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->INVALID_MODE:Lcom/metamoji/nt/NtDocument$ToolMode;

    .line 635
    invoke-static {}, Lcom/metamoji/nt/NtDocument$ToolMode;->$values()[Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->$VALUES:[Lcom/metamoji/nt/NtDocument$ToolMode;

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

    .line 648
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 649
    iput p3, p0, Lcom/metamoji/nt/NtDocument$ToolMode;->_intValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/nt/NtDocument$ToolMode;
    .locals 5

    .line 657
    invoke-static {}, Lcom/metamoji/nt/NtDocument$ToolMode;->values()[Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 658
    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument$ToolMode;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 662
    :cond_1
    sget-object p0, Lcom/metamoji/nt/NtDocument$ToolMode;->INVALID_MODE:Lcom/metamoji/nt/NtDocument$ToolMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtDocument$ToolMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 635
    const-class v0, Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtDocument$ToolMode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtDocument$ToolMode;
    .locals 1

    .line 635
    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->$VALUES:[Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtDocument$ToolMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtDocument$ToolMode;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 653
    iget v0, p0, Lcom/metamoji/nt/NtDocument$ToolMode;->_intValue:I

    return v0
.end method
