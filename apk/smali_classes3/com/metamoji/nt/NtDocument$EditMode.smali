.class public final enum Lcom/metamoji/nt/NtDocument$EditMode;
.super Ljava/lang/Enum;
.source "NtDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EditMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtDocument$EditMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtDocument$EditMode;

.field public static final enum EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

.field public static final enum INVALID_MODE:Lcom/metamoji/nt/NtDocument$EditMode;

.field public static final enum LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

.field public static final enum VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;


# instance fields
.field private _intValue:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtDocument$EditMode;
    .locals 4

    .line 605
    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    sget-object v2, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    sget-object v3, Lcom/metamoji/nt/NtDocument$EditMode;->INVALID_MODE:Lcom/metamoji/nt/NtDocument$EditMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 606
    new-instance v0, Lcom/metamoji/nt/NtDocument$EditMode;

    const-string v1, "EDITMODE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/nt/NtDocument$EditMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    .line 607
    new-instance v0, Lcom/metamoji/nt/NtDocument$EditMode;

    const-string v1, "VIEWMODE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/nt/NtDocument$EditMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    .line 608
    new-instance v0, Lcom/metamoji/nt/NtDocument$EditMode;

    const-string v1, "LASERMODE"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/nt/NtDocument$EditMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    .line 610
    new-instance v0, Lcom/metamoji/nt/NtDocument$EditMode;

    const-string v1, "INVALID_MODE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/nt/NtDocument$EditMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->INVALID_MODE:Lcom/metamoji/nt/NtDocument$EditMode;

    .line 605
    invoke-static {}, Lcom/metamoji/nt/NtDocument$EditMode;->$values()[Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->$VALUES:[Lcom/metamoji/nt/NtDocument$EditMode;

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

    .line 614
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 615
    iput p3, p0, Lcom/metamoji/nt/NtDocument$EditMode;->_intValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/nt/NtDocument$EditMode;
    .locals 5

    .line 623
    invoke-static {}, Lcom/metamoji/nt/NtDocument$EditMode;->values()[Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 624
    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument$EditMode;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 628
    :cond_1
    sget-object p0, Lcom/metamoji/nt/NtDocument$EditMode;->INVALID_MODE:Lcom/metamoji/nt/NtDocument$EditMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtDocument$EditMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 605
    const-class v0, Lcom/metamoji/nt/NtDocument$EditMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtDocument$EditMode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtDocument$EditMode;
    .locals 1

    .line 605
    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->$VALUES:[Lcom/metamoji/nt/NtDocument$EditMode;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtDocument$EditMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtDocument$EditMode;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 619
    iget v0, p0, Lcom/metamoji/nt/NtDocument$EditMode;->_intValue:I

    return v0
.end method
