.class final enum Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;
.super Ljava/lang/Enum;
.source "NtLinkJumpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtLinkJumpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LinkJumpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

.field public static final enum ERROR:Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

.field public static final enum LOCATION:Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

.field public static final enum NONE:Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

.field public static final enum URL:Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;


# instance fields
.field final _intValue:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;
    .locals 4

    .line 78
    sget-object v0, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->URL:Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    sget-object v1, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->LOCATION:Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    sget-object v2, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->NONE:Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    sget-object v3, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->ERROR:Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 79
    new-instance v0, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    const-string v1, "URL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->URL:Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    .line 80
    new-instance v0, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    const-string v1, "LOCATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->LOCATION:Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    .line 81
    new-instance v0, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    const-string v1, "NONE"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->NONE:Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    .line 82
    new-instance v0, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    const-string v1, "ERROR"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->ERROR:Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    .line 78
    invoke-static {}, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->$values()[Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->$VALUES:[Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

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

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput p3, p0, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->_intValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;
    .locals 5

    .line 95
    invoke-static {}, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->values()[Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 96
    invoke-virtual {v3}, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_1
    sget-object p0, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->ERROR:Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 78
    const-class v0, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;
    .locals 1

    .line 78
    sget-object v0, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->$VALUES:[Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->_intValue:I

    return v0
.end method
