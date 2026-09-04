.class public final enum Lcom/metamoji/nt/NtLayerController$LayerIndex;
.super Ljava/lang/Enum;
.source "NtLayerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtLayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayerIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtLayerController$LayerIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtLayerController$LayerIndex;

.field public static final enum BGDATA:Lcom/metamoji/nt/NtLayerController$LayerIndex;

.field public static final enum BGIMAGE:Lcom/metamoji/nt/NtLayerController$LayerIndex;

.field public static final enum EDIT:Lcom/metamoji/nt/NtLayerController$LayerIndex;

.field public static final enum FORM:Lcom/metamoji/nt/NtLayerController$LayerIndex;

.field public static final enum GRID:Lcom/metamoji/nt/NtLayerController$LayerIndex;

.field public static final enum _LAST:Lcom/metamoji/nt/NtLayerController$LayerIndex;


# instance fields
.field private _intValue:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtLayerController$LayerIndex;
    .locals 6

    .line 18
    sget-object v0, Lcom/metamoji/nt/NtLayerController$LayerIndex;->EDIT:Lcom/metamoji/nt/NtLayerController$LayerIndex;

    sget-object v1, Lcom/metamoji/nt/NtLayerController$LayerIndex;->GRID:Lcom/metamoji/nt/NtLayerController$LayerIndex;

    sget-object v2, Lcom/metamoji/nt/NtLayerController$LayerIndex;->BGDATA:Lcom/metamoji/nt/NtLayerController$LayerIndex;

    sget-object v3, Lcom/metamoji/nt/NtLayerController$LayerIndex;->FORM:Lcom/metamoji/nt/NtLayerController$LayerIndex;

    sget-object v4, Lcom/metamoji/nt/NtLayerController$LayerIndex;->BGIMAGE:Lcom/metamoji/nt/NtLayerController$LayerIndex;

    sget-object v5, Lcom/metamoji/nt/NtLayerController$LayerIndex;->_LAST:Lcom/metamoji/nt/NtLayerController$LayerIndex;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/nt/NtLayerController$LayerIndex;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 19
    new-instance v0, Lcom/metamoji/nt/NtLayerController$LayerIndex;

    const-string v1, "EDIT"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/nt/NtLayerController$LayerIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtLayerController$LayerIndex;->EDIT:Lcom/metamoji/nt/NtLayerController$LayerIndex;

    .line 20
    new-instance v0, Lcom/metamoji/nt/NtLayerController$LayerIndex;

    const-string v1, "GRID"

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/metamoji/nt/NtLayerController$LayerIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtLayerController$LayerIndex;->GRID:Lcom/metamoji/nt/NtLayerController$LayerIndex;

    .line 21
    new-instance v0, Lcom/metamoji/nt/NtLayerController$LayerIndex;

    const-string v1, "BGDATA"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v6}, Lcom/metamoji/nt/NtLayerController$LayerIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtLayerController$LayerIndex;->BGDATA:Lcom/metamoji/nt/NtLayerController$LayerIndex;

    .line 22
    new-instance v0, Lcom/metamoji/nt/NtLayerController$LayerIndex;

    const-string v1, "FORM"

    invoke-direct {v0, v1, v5, v4}, Lcom/metamoji/nt/NtLayerController$LayerIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtLayerController$LayerIndex;->FORM:Lcom/metamoji/nt/NtLayerController$LayerIndex;

    .line 23
    new-instance v0, Lcom/metamoji/nt/NtLayerController$LayerIndex;

    const-string v1, "BGIMAGE"

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/nt/NtLayerController$LayerIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtLayerController$LayerIndex;->BGIMAGE:Lcom/metamoji/nt/NtLayerController$LayerIndex;

    .line 26
    new-instance v0, Lcom/metamoji/nt/NtLayerController$LayerIndex;

    const/4 v1, 0x5

    const/4 v2, -0x1

    const-string v3, "_LAST"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/nt/NtLayerController$LayerIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtLayerController$LayerIndex;->_LAST:Lcom/metamoji/nt/NtLayerController$LayerIndex;

    .line 18
    invoke-static {}, Lcom/metamoji/nt/NtLayerController$LayerIndex;->$values()[Lcom/metamoji/nt/NtLayerController$LayerIndex;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtLayerController$LayerIndex;->$VALUES:[Lcom/metamoji/nt/NtLayerController$LayerIndex;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/metamoji/nt/NtLayerController$LayerIndex;->_intValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/nt/NtLayerController$LayerIndex;
    .locals 5

    .line 39
    invoke-static {}, Lcom/metamoji/nt/NtLayerController$LayerIndex;->values()[Lcom/metamoji/nt/NtLayerController$LayerIndex;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 40
    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController$LayerIndex;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IncompatibleClassChangeError;

    const-string v0, "cannot cast int to LayerIndex"

    invoke-direct {p0, v0}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtLayerController$LayerIndex;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 18
    const-class v0, Lcom/metamoji/nt/NtLayerController$LayerIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtLayerController$LayerIndex;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtLayerController$LayerIndex;
    .locals 1

    .line 18
    sget-object v0, Lcom/metamoji/nt/NtLayerController$LayerIndex;->$VALUES:[Lcom/metamoji/nt/NtLayerController$LayerIndex;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtLayerController$LayerIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtLayerController$LayerIndex;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/metamoji/nt/NtLayerController$LayerIndex;->_intValue:I

    return v0
.end method
