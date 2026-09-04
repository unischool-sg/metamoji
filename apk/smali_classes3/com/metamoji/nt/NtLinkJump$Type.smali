.class public final enum Lcom/metamoji/nt/NtLinkJump$Type;
.super Ljava/lang/Enum;
.source "NtLinkJump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtLinkJump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtLinkJump$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtLinkJump$Type;

.field public static final enum ActiveLocation:Lcom/metamoji/nt/NtLinkJump$Type;

.field public static final enum ERROR:Lcom/metamoji/nt/NtLinkJump$Type;

.field public static final enum Generic:Lcom/metamoji/nt/NtLinkJump$Type;

.field public static final enum Link:Lcom/metamoji/nt/NtLinkJump$Type;

.field public static final enum Location:Lcom/metamoji/nt/NtLinkJump$Type;

.field public static final enum Page:Lcom/metamoji/nt/NtLinkJump$Type;

.field public static final enum Unit:Lcom/metamoji/nt/NtLinkJump$Type;


# instance fields
.field final _intValue:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtLinkJump$Type;
    .locals 7

    .line 27
    sget-object v0, Lcom/metamoji/nt/NtLinkJump$Type;->Generic:Lcom/metamoji/nt/NtLinkJump$Type;

    sget-object v1, Lcom/metamoji/nt/NtLinkJump$Type;->Page:Lcom/metamoji/nt/NtLinkJump$Type;

    sget-object v2, Lcom/metamoji/nt/NtLinkJump$Type;->Unit:Lcom/metamoji/nt/NtLinkJump$Type;

    sget-object v3, Lcom/metamoji/nt/NtLinkJump$Type;->Link:Lcom/metamoji/nt/NtLinkJump$Type;

    sget-object v4, Lcom/metamoji/nt/NtLinkJump$Type;->ActiveLocation:Lcom/metamoji/nt/NtLinkJump$Type;

    sget-object v5, Lcom/metamoji/nt/NtLinkJump$Type;->Location:Lcom/metamoji/nt/NtLinkJump$Type;

    sget-object v6, Lcom/metamoji/nt/NtLinkJump$Type;->ERROR:Lcom/metamoji/nt/NtLinkJump$Type;

    filled-new-array/range {v0 .. v6}, [Lcom/metamoji/nt/NtLinkJump$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lcom/metamoji/nt/NtLinkJump$Type;

    const-string v1, "Generic"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/nt/NtLinkJump$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtLinkJump$Type;->Generic:Lcom/metamoji/nt/NtLinkJump$Type;

    .line 29
    new-instance v0, Lcom/metamoji/nt/NtLinkJump$Type;

    const-string v1, "Page"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/nt/NtLinkJump$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtLinkJump$Type;->Page:Lcom/metamoji/nt/NtLinkJump$Type;

    .line 30
    new-instance v0, Lcom/metamoji/nt/NtLinkJump$Type;

    const-string v1, "Unit"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/nt/NtLinkJump$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtLinkJump$Type;->Unit:Lcom/metamoji/nt/NtLinkJump$Type;

    .line 31
    new-instance v0, Lcom/metamoji/nt/NtLinkJump$Type;

    const-string v1, "Link"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/nt/NtLinkJump$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtLinkJump$Type;->Link:Lcom/metamoji/nt/NtLinkJump$Type;

    .line 32
    new-instance v0, Lcom/metamoji/nt/NtLinkJump$Type;

    const-string v1, "ActiveLocation"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/nt/NtLinkJump$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtLinkJump$Type;->ActiveLocation:Lcom/metamoji/nt/NtLinkJump$Type;

    .line 33
    new-instance v0, Lcom/metamoji/nt/NtLinkJump$Type;

    const-string v1, "Location"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/nt/NtLinkJump$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtLinkJump$Type;->Location:Lcom/metamoji/nt/NtLinkJump$Type;

    .line 34
    new-instance v0, Lcom/metamoji/nt/NtLinkJump$Type;

    const-string v1, "ERROR"

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/nt/NtLinkJump$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtLinkJump$Type;->ERROR:Lcom/metamoji/nt/NtLinkJump$Type;

    .line 27
    invoke-static {}, Lcom/metamoji/nt/NtLinkJump$Type;->$values()[Lcom/metamoji/nt/NtLinkJump$Type;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtLinkJump$Type;->$VALUES:[Lcom/metamoji/nt/NtLinkJump$Type;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/metamoji/nt/NtLinkJump$Type;->_intValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/nt/NtLinkJump$Type;
    .locals 5

    .line 47
    invoke-static {}, Lcom/metamoji/nt/NtLinkJump$Type;->values()[Lcom/metamoji/nt/NtLinkJump$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 48
    invoke-virtual {v3}, Lcom/metamoji/nt/NtLinkJump$Type;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    :cond_1
    sget-object p0, Lcom/metamoji/nt/NtLinkJump$Type;->ERROR:Lcom/metamoji/nt/NtLinkJump$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtLinkJump$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 27
    const-class v0, Lcom/metamoji/nt/NtLinkJump$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtLinkJump$Type;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtLinkJump$Type;
    .locals 1

    .line 27
    sget-object v0, Lcom/metamoji/nt/NtLinkJump$Type;->$VALUES:[Lcom/metamoji/nt/NtLinkJump$Type;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtLinkJump$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtLinkJump$Type;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/metamoji/nt/NtLinkJump$Type;->_intValue:I

    return v0
.end method
