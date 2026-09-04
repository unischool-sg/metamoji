.class public final enum Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;
.super Ljava/lang/Enum;
.source "INtTextSearchInUnitModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NtTextSearchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

.field public static final enum NTTextSEarchType_Cabinet:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

.field public static final enum NtTextSearchType_EditMode:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

.field public static final enum NtTextSearchType_ViewMode:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;


# instance fields
.field private _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;
    .locals 3

    .line 9
    sget-object v0, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;->NtTextSearchType_EditMode:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    sget-object v1, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;->NtTextSearchType_ViewMode:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    sget-object v2, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;->NTTextSEarchType_Cabinet:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    const-string v1, "NtTextSearchType_EditMode"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;->NtTextSearchType_EditMode:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    .line 11
    new-instance v0, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    const-string v1, "NtTextSearchType_ViewMode"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;->NtTextSearchType_ViewMode:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    .line 12
    new-instance v0, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    const-string v1, "NTTextSEarchType_Cabinet"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;->NTTextSEarchType_Cabinet:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    .line 9
    invoke-static {}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;->$values()[Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;->$VALUES:[Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;->_value:I

    return-void
.end method

.method public static fromIntValue(I)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;
    .locals 5

    .line 24
    invoke-static {}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;->values()[Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 25
    invoke-virtual {v3}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;->toIntValue()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 9
    const-class v0, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;
    .locals 1

    .line 9
    sget-object v0, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;->$VALUES:[Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    invoke-virtual {v0}, [Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    return-object v0
.end method


# virtual methods
.method public toIntValue()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;->_value:I

    return v0
.end method
